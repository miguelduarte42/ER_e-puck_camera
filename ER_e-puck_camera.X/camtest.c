#include <stdio.h>
#include <string.h>
#include "e_uart_char.h"
#include "e_init_port.h"
#include "e_epuck_ports.h"
#include "e_led.h"
#include "e_poxxxx.h"
#include "e_motors.h"
#include "e_prox.h"
#include "e_ad_conv.h"
#include "e_I2C_protocol.h"

#define Z_WIDTH 1
#define Z_HEIGHT 1

#define WIDTH 639
#define HEIGHT 1
#define MODE RGB_565_MODE//GREY_SCALE_MODE
#define MAX_BUFFER_SIZE 2*WIDTH*HEIGHT

//OTHER VERSION STUFF
float sensorReferenceValues[] = {3842.55,3774.18,1769.57,979.94,546.55,190.11,99.29,57.8,37.71,23.99,16.61,12.74,10.36,7.99,6.39};
float distances[] = {0,0.5,1,1.5,2,3,4,5,6,7,8,9,10,11,12};
int forwardSpeed = 650;
int numberOfDistances = 15;
//Sensor numbers
int S_FRONT_RIGHT = 0,
    S_RIGHT = 2,
    S_LEFT = 5,
    S_FRONT_LEFT = 7;
int flag = 0;
int lockReading = 0;
int speedLeft = 0;
int speedRight = 0;
char LED0_SELECTOR = 2,
        LED1_SELECTOR = 8,
        LED2_SELECTOR = 32,
        LED3_SELECTOR = 128,
        LED0_ON = 1,
        LED1_ON = 4,
        LED2_ON = 16,
        LED3_ON = 64,
        B_STOP = 109,
        B_START = 110,
        LED = 111,
        WHEEL_LEFT = 112,
        WHEEL_RIGHT = 113,
        SENSORS = 114,
        CAMERA = 115;
//Number of times the values from the sensors have been read
long int readTimes = 0;
//Average values read by the sensors while waiting in the ANN cycle
long int values[4];

//the timer 1 interrupt rotine (only called if timer 1 interrupt triggered (T1IF=1)  and if it is enabled (T1IE=1))
void _ISRFAST _T1Interrupt(void);

//buffer that will contain the image (rgb or gray)
char buffer[MAX_BUFFER_SIZE];
char b1[100];
int numb;
int captime;
double timer_counter=0;

int buff_length;

int foundRed = 0;
int speed = 0;
int cameraOn = 0;
int correctRight = 0;

int getSelector() {
    return SELECTOR0 + 2*SELECTOR1 + 4*SELECTOR2 + 8*SELECTOR3;
}

void takePhoto();
unsigned char receiveSingleChar();
unsigned short receiveMessage();
void updateFlag();
void readValues();
void resetValues();
float sensorToInput(int sensorNumber);
void readPhoto();
int* RGB565_to_ARGB8(int rgb565);
void startCamera();
void stopCamera();
void correctRobot();

int cam_size;

int wait_cam = 0;
int keepFinding = 1;

int main(void)
{

    int cam_mode,cam_x1,cam_y1,cam_width,cam_heigth,cam_zx,cam_zy;

    if(getSelector() == 0)
        return;

    char c;
    int i;//buff_length;
    //int wait_cam;

    //defining the position of the several inputs and outputs (motors are outputs) in the respective SFR
    //the SFR are programed as structures, so accessing to an input/output implies only acessing to the field of the structure corresponding to the SFR that was
    //assigned to that input/output (see epuck_ports.h and p30f6014.h to understand the SFR assignment)
    e_init_port();

    e_init_motors();

    //important to enable uart interface
    e_init_uart1();
    e_init_ad_scan(ALL_ADC);
    e_calibrate_ir();

    //initial configuration of the camera
    cam_x1=(ARRAY_WIDTH/Z_WIDTH-WIDTH)/2;
    cam_y1=(ARRAY_HEIGHT/Z_HEIGHT-HEIGHT)/2;
    cam_width=WIDTH;
    cam_heigth=HEIGHT;
    cam_zx=Z_WIDTH;
    cam_zy=Z_HEIGHT;
    cam_mode=MODE;

    if(cam_mode==GREY_SCALE_MODE)
            cam_size=cam_width*cam_heigth;
    else
            cam_size=cam_width*cam_heigth*2;

    //not waiting for camera
    wait_cam=0;

    e_activate_agenda(updateFlag, 500);//500//1000
    e_activate_agenda(readValues, 10);

    e_start_agendas_processing();
    keepFinding = 0;

    e_set_led(4,1);

    keepFinding = 1;

    int s = getSelector();
    while(s==getSelector());

    /*while(1){
        sprintf(b1,"%i\n",e_get_calibrated_prox(S_FRONT_LEFT));
        e_send_uart1_char(b1,10);
        while(e_uart1_sending());
    }*/

    while(1){
        while(keepFinding) {

            if(!cameraOn) {
                startCamera();
                correctRobot();
            }
            while(!captura());
            //e_send_uart1_char(buffer,buff_length);
            //while(e_uart1_sending());
            if(cameraOn > 5)
                processaImagem();
            cameraOn++;
        }

        if(cameraOn)
            stopCamera();

        while(!flag);
        flag = 0;
        sendInputs();

        readOrder();
        readOrder();

        e_set_speed_left(speedLeft);
        e_set_speed_right(speedRight);
        e_set_led(4,0);
    }

    return 0;
}

void waitABit() {
    int i;
    int m;
    for(i = 0 ; i < 10000 ; i++)
        m = sqrt(i*100);
}

void correctRobot() {
   
    if(e_get_calibrated_prox(S_LEFT) > 10) {
        correctRight = 0;
        e_set_speed_left(100);
        e_set_speed_right(-100);
        while(e_get_calibrated_prox(S_FRONT_LEFT) > 20);
        waitABit();
        e_set_speed_left(700);
        e_set_speed_right(700);
        waitABit();
        e_set_speed_left(0);
        e_set_speed_right(0);
    }else if(e_get_calibrated_prox(S_RIGHT) > 10) {
        correctRight = 1;
        e_set_speed_left(-100);
        e_set_speed_right(100);
        while(e_get_calibrated_prox(S_FRONT_RIGHT) > 20);
        waitABit();
        e_set_speed_left(700);
        e_set_speed_right(700);
        waitABit();
        e_set_speed_left(0);
        e_set_speed_right(0);
    }else if(e_get_calibrated_prox(S_FRONT_LEFT) > 100 || e_get_calibrated_prox(S_FRONT_RIGHT) > 100) {
        e_set_speed_left(-300);
        e_set_speed_right(-300);
        waitABit();
        e_set_speed_left(0);
        e_set_speed_right(0);
    }
}

void processaImagem() {

    long avg = 0;
    int hits = 0;

    int i;
    for(i = 0 ; i < buff_length ; i+=2) {

        int r = buffer[i]&0xF8;
        int g = (buffer[i]&0x07)<<5 | (buffer[i+1]&0xE0)>>3;
        int b = (buffer[i+1]&0x1F)<<3;

        if(r >= 90 && g <= 70 && b <= 70) {
            avg+= i;
            hits++;
        }
    }

    if(hits > 0) {
        avg = avg/hits/2;

        if(hits > 0 && avg < 640/2)
            e_set_led(5,1);
        else
            e_set_led(5,0);

        if(hits > 0 && avg >= 640/2)
            e_set_led(3,1);
        else
            e_set_led(3,0);

        int distance = 640/2-avg;

        if(distance > 15 || distance < -15) {
            if(distance > 0) {
                e_set_speed_left(-10);
                e_set_speed_right(10);
            } else {
                e_set_speed_left(10);
                e_set_speed_right(-10);
            }
        }else {

            approachButton();
        }
    }else{
        if(correctRight) {
            e_set_speed_left(70);
            e_set_speed_right(-70);
        }else {
             e_set_speed_left(-70);
            e_set_speed_right(70);
        }
    }
}

int approachButton() {
    e_set_led(5,0);
    e_set_led(3,0);
    e_set_speed_left(300);
    e_set_speed_right(300);

    while(e_get_calibrated_prox(S_FRONT_LEFT) < 3000 && e_get_calibrated_prox(S_FRONT_RIGHT) < 3000) {

        if(e_get_calibrated_prox(S_RIGHT) > 200 && e_get_calibrated_prox(S_FRONT_RIGHT) < 200){
            correctRobot();
            return 0;
        }
        if(e_get_calibrated_prox(S_LEFT) > 200 && e_get_calibrated_prox(S_FRONT_LEFT) < 200){
            correctRobot();
            return 0;
        }

    }
    unsigned int i;
    unsigned int m;
    for(i = 0 ; i < 10000 ; i++)
        m = sqrt(i*100);
    e_set_speed_left(-200);
    e_set_speed_right(-200);
    for(i = 0 ; i < 10000 ; i++)
        m = sqrt(i*100);
    e_set_speed_left(-200);
    e_set_speed_right(200);
    while(e_get_calibrated_prox(S_FRONT_RIGHT) > 0);
    for(i = 0 ; i < 4000 ; i++)
        m = sqrt(i*100);
    e_set_speed_left(0);
    e_set_speed_right(0);
    keepFinding = 0;
}

int captura() {

    if(!wait_cam) {

            //start timer
            timer_counter=0;					//reseting repetition counter
            T1CONbits.TON=0;					//deactivating timer 1
            T1CON=0;
            T1CONbits.TCKPS=3;            		//prescaler = 256 - devides the timer counter by this value
            TMR1=0;                     		//clear timer 1 - the timer counter diveded by the prescaler is putted here (this value is compaired with the period)
            PR1=(FCY/256);  					//interrupt every 1 second with 256 prescaler
            IFS0bits.T1IF=0;            		//clear interrupt flag
            IEC0bits.T1IE=1;            		//set interrupt enable bit
            T1CONbits.TON=1;            		//start timer 1

            //initialize capture
            e_poxxxx_launch_capture(&buffer[0]);

            buff_length=cam_size;
            wait_cam=1;

    } if(wait_cam) {

            //if image is ready
        if(e_poxxxx_is_img_ready())
        {
                //stop timer
                T1CONbits.TON=0;

                //reset timer
                TMR1=0;

                //turn on timer
                T1CONbits.TON=1;

                //send image to sender
                
                //turn on timer
                T1CONbits.TON=0;

                //de-activate camera capture
                wait_cam=0;
                return 1;
        }
    }
    return 0;
}

void sendInputs() {
    averageValues();

    //proximity
    unsigned short fr = sensorToInput(S_FRONT_RIGHT)*1000;
    unsigned short r = sensorToInput(S_RIGHT)*1000;
    unsigned short l = sensorToInput(S_LEFT)*1000;
    unsigned short fl = sensorToInput(S_FRONT_LEFT)*1000;

    resetValues();

    transmitShort(SENSORS);
    transmitShort(fr);
    transmitShort(r);
    transmitShort(l);
    transmitShort(fl);
}

void transmitShort(unsigned short i) {
    e_send_uart1_char(&i,2);
    while(e_uart1_sending());
}

void readOrder() {
    unsigned short c = receiveMessage();

    if(c == WHEEL_LEFT || c == WHEEL_RIGHT) {

        unsigned short finalSpeed = receiveMessage();
        int intSpeed= ((int)finalSpeed) - 1000;

        if(c == WHEEL_LEFT) {
            speedLeft = intSpeed;
        }else{
            speedRight = intSpeed;
        }

    }else if(c == LED) {
        c = receiveMessage();

        if(c & LED0_SELECTOR) {
            if(c & LED0_ON)
                e_set_led(0,1);
            else
                e_set_led(0,0);
        }
        if(c & LED1_SELECTOR) {
            if(c & LED1_ON)
                e_set_led(1,1);
            else
                e_set_led(1,0);
        }
        if(c & LED2_SELECTOR) {
            if(c & LED2_ON)
                e_set_led(2,1);
            else
                e_set_led(2,0);
        }
        if(c & LED3_SELECTOR) {
            if(c & LED3_ON)
                e_set_led(3,1);
            else
                e_set_led(3,0);
        }
    } else if(c == B_STOP) {
        speedLeft = 0;
        speedRight = 0;
    } else if(c == CAMERA) {
        keepFinding = 1;
        speedLeft = 0;
        speedRight = 0;
    }
}

void updateFlag(void) {
    flag = 1;
}

float sensorToInput(int sensor) {

    float value;

    if(sensor == S_FRONT_RIGHT)     value = values[0];
    else if(sensor == S_RIGHT)      value = values[1];
    else if(sensor == S_LEFT)       value = values[2];
    else if(sensor == S_FRONT_LEFT) value = values[3];

    if(value > sensorReferenceValues[numberOfDistances-1]) {

        int i;
        for(i = 0; i < numberOfDistances ; i++) {
            if(value > sensorReferenceValues[i]) {
                if(i == 0)
                    return 1.0;

                 float referenceBefore =sensorReferenceValues[i-1];
                float referenceAfter =sensorReferenceValues[i];

                float linearization = (value-referenceAfter)/(referenceBefore-referenceAfter);

                float distanceAfter = distances[i];
                float distanceBefore = distances[i-1];
                float currentDistance = (distanceBefore-distanceAfter)*(linearization)+distanceAfter;

                return 1.0-currentDistance/distances[numberOfDistances-1];
            }
        }
    }
    return 0.0;
}



void resetValues() {
    values[0]=0;
    values[1]=0;
    values[2]=0;
    values[3]=0;
    lockReading = 0;
    readTimes = 0;
}

void readValues() {
    if(!lockReading) {
        values[0]+= e_get_calibrated_prox(S_FRONT_RIGHT);
        values[1]+= e_get_calibrated_prox(S_RIGHT);
        values[2]+= e_get_calibrated_prox(S_LEFT);
        values[3]+= e_get_calibrated_prox(S_FRONT_LEFT);
        readTimes++;
    }
}

void averageValues() {

    lockReading = 1;
    if(readTimes > 0) {
        values[0] = values[0]/readTimes;
        values[1] = values[1]/readTimes;
        values[2] = values[2]/readTimes;
        values[3] = values[3]/readTimes;
    }else {
        values[0] = 0;
        values[1] = 0;
        values[2] = 0;
        values[3] = 0;
    }
}

unsigned short receiveMessage() {
    unsigned short a1 = receiveSingleChar();
    unsigned short a2 = receiveSingleChar();

    unsigned short a3 = a2<<8 | a1;

    //unsigned char a2 = receiveSingleChar();

    //unsigned short i = ((unsigned short)((a1 & 0x00FF) | a2<<8));
    return a3;
}

unsigned char receiveSingleChar() {
    unsigned char c;
    while(e_getchar_uart1(&c) <= 0);
    return c; 
}

void stopCamera() {
    turn_off_camera();
    cameraOn = 0;
}

void startCamera(void) {
    e_poxxxx_init_cam();
    //e_poxxxx_config_cam(cam_x1*cam_zx,cam_y1*cam_zy,cam_width*cam_zx,cam_heigth*cam_zy,cam_zx,cam_zy,cam_mode);
    e_poxxxx_config_cam(0,120,WIDTH,HEIGHT,1,1,MODE);
    e_poxxxx_set_mirror(1,1);
    e_poxxxx_write_cam_registers();
    cameraOn = 1;
}
