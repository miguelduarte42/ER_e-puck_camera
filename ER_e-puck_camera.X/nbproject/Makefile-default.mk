#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile

# Environment
MKDIR=mkdir -p
RM=rm -f 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/epuck_camera3.X.${IMAGE_TYPE}.elf
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/epuck_camera3.X.${IMAGE_TYPE}.elf
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files
OBJECTFILES=${OBJECTDIR}/camtest.o ${OBJECTDIR}/e_I2C_master_module.o ${OBJECTDIR}/e_I2C_protocol.o ${OBJECTDIR}/e_ad_conv.o ${OBJECTDIR}/e_agenda.o ${OBJECTDIR}/e_calc_po3030k.o ${OBJECTDIR}/e_calc_po6030k.o ${OBJECTDIR}/e_common.o ${OBJECTDIR}/e_init_port.o ${OBJECTDIR}/e_init_uart1.o ${OBJECTDIR}/e_init_uart2.o ${OBJECTDIR}/e_interrupt.o ${OBJECTDIR}/e_led.o ${OBJECTDIR}/e_motors.o ${OBJECTDIR}/e_po3030k_registers.o ${OBJECTDIR}/e_po6030k_registers.o ${OBJECTDIR}/e_prox.o ${OBJECTDIR}/e_timers.o ${OBJECTDIR}/e_uart1_rx_char.o ${OBJECTDIR}/e_uart1_tx_char.o ${OBJECTDIR}/e_uart2_rx_char.o ${OBJECTDIR}/e_uart2_tx_char.o ${OBJECTDIR}/matlab.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin/
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=/Applications/microchip/mplabc30/v3.30c/bin/pic30-gcc
# MP_BC is not defined
MP_AS=/Applications/microchip/mplabc30/v3.30c/bin/pic30-as
MP_LD=/Applications/microchip/mplabc30/v3.30c/bin/pic30-ld
MP_AR=/Applications/microchip/mplabc30/v3.30c/bin/pic30-ar
# MP_BC is not defined
MP_CC_DIR=/Applications/microchip/mplabc30/v3.30c/bin
# MP_BC_DIR is not defined
MP_AS_DIR=/Applications/microchip/mplabc30/v3.30c/bin
MP_LD_DIR=/Applications/microchip/mplabc30/v3.30c/bin
MP_AR_DIR=/Applications/microchip/mplabc30/v3.30c/bin
# MP_BC_DIR is not defined

.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/epuck_camera3.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=30F6014A
MP_LINKER_FILE_OPTION=,-Tp30f6014A.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/e_uart2_tx_char.o: e_uart2_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.ok ${OBJECTDIR}/e_uart2_tx_char.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart2_tx_char.s -o ${OBJECTDIR}/e_uart2_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_uart2_tx_char.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart2_tx_char.s -o ${OBJECTDIR}/e_uart2_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_uart2_tx_char.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_uart2_tx_char.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_uart2_tx_char.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_uart2_tx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart2_tx_char.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_uart2_tx_char.o.d > ${OBJECTDIR}/e_uart2_tx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart2_tx_char.o.tmp ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_uart2_tx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart2_tx_char.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_uart2_tx_char.o.d > ${OBJECTDIR}/e_uart2_tx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart2_tx_char.o.tmp ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.tmp
endif
	@touch ${OBJECTDIR}/e_uart2_tx_char.o.err 
	@cat ${OBJECTDIR}/e_uart2_tx_char.o.err 
	@if [ -f ${OBJECTDIR}/e_uart2_tx_char.o.ok ] ; then rm -f ${OBJECTDIR}/e_uart2_tx_char.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_uart1_tx_char.o: e_uart1_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.ok ${OBJECTDIR}/e_uart1_tx_char.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart1_tx_char.s -o ${OBJECTDIR}/e_uart1_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_uart1_tx_char.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart1_tx_char.s -o ${OBJECTDIR}/e_uart1_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_uart1_tx_char.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_uart1_tx_char.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_uart1_tx_char.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_uart1_tx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart1_tx_char.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_uart1_tx_char.o.d > ${OBJECTDIR}/e_uart1_tx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart1_tx_char.o.tmp ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_uart1_tx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart1_tx_char.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_uart1_tx_char.o.d > ${OBJECTDIR}/e_uart1_tx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart1_tx_char.o.tmp ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.tmp
endif
	@touch ${OBJECTDIR}/e_uart1_tx_char.o.err 
	@cat ${OBJECTDIR}/e_uart1_tx_char.o.err 
	@if [ -f ${OBJECTDIR}/e_uart1_tx_char.o.ok ] ; then rm -f ${OBJECTDIR}/e_uart1_tx_char.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_uart1_rx_char.o: e_uart1_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.ok ${OBJECTDIR}/e_uart1_rx_char.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart1_rx_char.s -o ${OBJECTDIR}/e_uart1_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_uart1_rx_char.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart1_rx_char.s -o ${OBJECTDIR}/e_uart1_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_uart1_rx_char.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_uart1_rx_char.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_uart1_rx_char.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_uart1_rx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart1_rx_char.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_uart1_rx_char.o.d > ${OBJECTDIR}/e_uart1_rx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart1_rx_char.o.tmp ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_uart1_rx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart1_rx_char.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_uart1_rx_char.o.d > ${OBJECTDIR}/e_uart1_rx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart1_rx_char.o.tmp ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.tmp
endif
	@touch ${OBJECTDIR}/e_uart1_rx_char.o.err 
	@cat ${OBJECTDIR}/e_uart1_rx_char.o.err 
	@if [ -f ${OBJECTDIR}/e_uart1_rx_char.o.ok ] ; then rm -f ${OBJECTDIR}/e_uart1_rx_char.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_uart2_rx_char.o: e_uart2_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.ok ${OBJECTDIR}/e_uart2_rx_char.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart2_rx_char.s -o ${OBJECTDIR}/e_uart2_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_uart2_rx_char.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart2_rx_char.s -o ${OBJECTDIR}/e_uart2_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_uart2_rx_char.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_uart2_rx_char.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_uart2_rx_char.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_uart2_rx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart2_rx_char.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_uart2_rx_char.o.d > ${OBJECTDIR}/e_uart2_rx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart2_rx_char.o.tmp ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_uart2_rx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart2_rx_char.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_uart2_rx_char.o.d > ${OBJECTDIR}/e_uart2_rx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart2_rx_char.o.tmp ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.tmp
endif
	@touch ${OBJECTDIR}/e_uart2_rx_char.o.err 
	@cat ${OBJECTDIR}/e_uart2_rx_char.o.err 
	@if [ -f ${OBJECTDIR}/e_uart2_rx_char.o.ok ] ; then rm -f ${OBJECTDIR}/e_uart2_rx_char.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_init_uart2.o: e_init_uart2.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart2.o.ok ${OBJECTDIR}/e_init_uart2.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_init_uart2.s -o ${OBJECTDIR}/e_init_uart2.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_init_uart2.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_init_uart2.s -o ${OBJECTDIR}/e_init_uart2.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_init_uart2.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_init_uart2.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_init_uart2.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_init_uart2.o.d ] ; then touch ${OBJECTDIR}/e_init_uart2.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_init_uart2.o.d > ${OBJECTDIR}/e_init_uart2.o.tmp
	@${RM} ${OBJECTDIR}/e_init_uart2.o.d 
	@${CP} ${OBJECTDIR}/e_init_uart2.o.tmp ${OBJECTDIR}/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart2.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_init_uart2.o.d ] ; then touch ${OBJECTDIR}/e_init_uart2.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_init_uart2.o.d > ${OBJECTDIR}/e_init_uart2.o.tmp
	@${RM} ${OBJECTDIR}/e_init_uart2.o.d 
	@${CP} ${OBJECTDIR}/e_init_uart2.o.tmp ${OBJECTDIR}/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart2.o.tmp
endif
	@touch ${OBJECTDIR}/e_init_uart2.o.err 
	@cat ${OBJECTDIR}/e_init_uart2.o.err 
	@if [ -f ${OBJECTDIR}/e_init_uart2.o.ok ] ; then rm -f ${OBJECTDIR}/e_init_uart2.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_interrupt.o: e_interrupt.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_interrupt.o.d 
	@${RM} ${OBJECTDIR}/e_interrupt.o.ok ${OBJECTDIR}/e_interrupt.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_interrupt.s -o ${OBJECTDIR}/e_interrupt.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_interrupt.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_interrupt.s -o ${OBJECTDIR}/e_interrupt.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_interrupt.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_interrupt.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_interrupt.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_interrupt.o.d ] ; then touch ${OBJECTDIR}/e_interrupt.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_interrupt.o.d > ${OBJECTDIR}/e_interrupt.o.tmp
	@${RM} ${OBJECTDIR}/e_interrupt.o.d 
	@${CP} ${OBJECTDIR}/e_interrupt.o.tmp ${OBJECTDIR}/e_interrupt.o.d 
	@${RM} ${OBJECTDIR}/e_interrupt.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_interrupt.o.d ] ; then touch ${OBJECTDIR}/e_interrupt.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_interrupt.o.d > ${OBJECTDIR}/e_interrupt.o.tmp
	@${RM} ${OBJECTDIR}/e_interrupt.o.d 
	@${CP} ${OBJECTDIR}/e_interrupt.o.tmp ${OBJECTDIR}/e_interrupt.o.d 
	@${RM} ${OBJECTDIR}/e_interrupt.o.tmp
endif
	@touch ${OBJECTDIR}/e_interrupt.o.err 
	@cat ${OBJECTDIR}/e_interrupt.o.err 
	@if [ -f ${OBJECTDIR}/e_interrupt.o.ok ] ; then rm -f ${OBJECTDIR}/e_interrupt.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_init_uart1.o: e_init_uart1.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart1.o.ok ${OBJECTDIR}/e_init_uart1.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_init_uart1.s -o ${OBJECTDIR}/e_init_uart1.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_init_uart1.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_init_uart1.s -o ${OBJECTDIR}/e_init_uart1.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD ${OBJECTDIR}/e_init_uart1.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_init_uart1.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_init_uart1.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_init_uart1.o.d ] ; then touch ${OBJECTDIR}/e_init_uart1.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_init_uart1.o.d > ${OBJECTDIR}/e_init_uart1.o.tmp
	@${RM} ${OBJECTDIR}/e_init_uart1.o.d 
	@${CP} ${OBJECTDIR}/e_init_uart1.o.tmp ${OBJECTDIR}/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart1.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_init_uart1.o.d ] ; then touch ${OBJECTDIR}/e_init_uart1.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_init_uart1.o.d > ${OBJECTDIR}/e_init_uart1.o.tmp
	@${RM} ${OBJECTDIR}/e_init_uart1.o.d 
	@${CP} ${OBJECTDIR}/e_init_uart1.o.tmp ${OBJECTDIR}/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart1.o.tmp
endif
	@touch ${OBJECTDIR}/e_init_uart1.o.err 
	@cat ${OBJECTDIR}/e_init_uart1.o.err 
	@if [ -f ${OBJECTDIR}/e_init_uart1.o.ok ] ; then rm -f ${OBJECTDIR}/e_init_uart1.o.ok; else exit 1; fi
	
else
${OBJECTDIR}/e_uart2_tx_char.o: e_uart2_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.ok ${OBJECTDIR}/e_uart2_tx_char.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart2_tx_char.s -o ${OBJECTDIR}/e_uart2_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_uart2_tx_char.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart2_tx_char.s -o ${OBJECTDIR}/e_uart2_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_uart2_tx_char.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_uart2_tx_char.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_uart2_tx_char.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_uart2_tx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart2_tx_char.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_uart2_tx_char.o.d > ${OBJECTDIR}/e_uart2_tx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart2_tx_char.o.tmp ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_uart2_tx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart2_tx_char.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_uart2_tx_char.o.d > ${OBJECTDIR}/e_uart2_tx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart2_tx_char.o.tmp ${OBJECTDIR}/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_tx_char.o.tmp
endif
	@touch ${OBJECTDIR}/e_uart2_tx_char.o.err 
	@cat ${OBJECTDIR}/e_uart2_tx_char.o.err 
	@if [ -f ${OBJECTDIR}/e_uart2_tx_char.o.ok ] ; then rm -f ${OBJECTDIR}/e_uart2_tx_char.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_uart1_tx_char.o: e_uart1_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.ok ${OBJECTDIR}/e_uart1_tx_char.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart1_tx_char.s -o ${OBJECTDIR}/e_uart1_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_uart1_tx_char.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart1_tx_char.s -o ${OBJECTDIR}/e_uart1_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_uart1_tx_char.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_uart1_tx_char.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_uart1_tx_char.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_uart1_tx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart1_tx_char.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_uart1_tx_char.o.d > ${OBJECTDIR}/e_uart1_tx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart1_tx_char.o.tmp ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_uart1_tx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart1_tx_char.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_uart1_tx_char.o.d > ${OBJECTDIR}/e_uart1_tx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart1_tx_char.o.tmp ${OBJECTDIR}/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_tx_char.o.tmp
endif
	@touch ${OBJECTDIR}/e_uart1_tx_char.o.err 
	@cat ${OBJECTDIR}/e_uart1_tx_char.o.err 
	@if [ -f ${OBJECTDIR}/e_uart1_tx_char.o.ok ] ; then rm -f ${OBJECTDIR}/e_uart1_tx_char.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_uart1_rx_char.o: e_uart1_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.ok ${OBJECTDIR}/e_uart1_rx_char.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart1_rx_char.s -o ${OBJECTDIR}/e_uart1_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_uart1_rx_char.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart1_rx_char.s -o ${OBJECTDIR}/e_uart1_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_uart1_rx_char.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_uart1_rx_char.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_uart1_rx_char.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_uart1_rx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart1_rx_char.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_uart1_rx_char.o.d > ${OBJECTDIR}/e_uart1_rx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart1_rx_char.o.tmp ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_uart1_rx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart1_rx_char.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_uart1_rx_char.o.d > ${OBJECTDIR}/e_uart1_rx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart1_rx_char.o.tmp ${OBJECTDIR}/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart1_rx_char.o.tmp
endif
	@touch ${OBJECTDIR}/e_uart1_rx_char.o.err 
	@cat ${OBJECTDIR}/e_uart1_rx_char.o.err 
	@if [ -f ${OBJECTDIR}/e_uart1_rx_char.o.ok ] ; then rm -f ${OBJECTDIR}/e_uart1_rx_char.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_uart2_rx_char.o: e_uart2_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.ok ${OBJECTDIR}/e_uart2_rx_char.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart2_rx_char.s -o ${OBJECTDIR}/e_uart2_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_uart2_rx_char.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_uart2_rx_char.s -o ${OBJECTDIR}/e_uart2_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_uart2_rx_char.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_uart2_rx_char.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_uart2_rx_char.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_uart2_rx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart2_rx_char.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_uart2_rx_char.o.d > ${OBJECTDIR}/e_uart2_rx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart2_rx_char.o.tmp ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_uart2_rx_char.o.d ] ; then touch ${OBJECTDIR}/e_uart2_rx_char.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_uart2_rx_char.o.d > ${OBJECTDIR}/e_uart2_rx_char.o.tmp
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${CP} ${OBJECTDIR}/e_uart2_rx_char.o.tmp ${OBJECTDIR}/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/e_uart2_rx_char.o.tmp
endif
	@touch ${OBJECTDIR}/e_uart2_rx_char.o.err 
	@cat ${OBJECTDIR}/e_uart2_rx_char.o.err 
	@if [ -f ${OBJECTDIR}/e_uart2_rx_char.o.ok ] ; then rm -f ${OBJECTDIR}/e_uart2_rx_char.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_init_uart2.o: e_init_uart2.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart2.o.ok ${OBJECTDIR}/e_init_uart2.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_init_uart2.s -o ${OBJECTDIR}/e_init_uart2.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_init_uart2.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_init_uart2.s -o ${OBJECTDIR}/e_init_uart2.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_init_uart2.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_init_uart2.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_init_uart2.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_init_uart2.o.d ] ; then touch ${OBJECTDIR}/e_init_uart2.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_init_uart2.o.d > ${OBJECTDIR}/e_init_uart2.o.tmp
	@${RM} ${OBJECTDIR}/e_init_uart2.o.d 
	@${CP} ${OBJECTDIR}/e_init_uart2.o.tmp ${OBJECTDIR}/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart2.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_init_uart2.o.d ] ; then touch ${OBJECTDIR}/e_init_uart2.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_init_uart2.o.d > ${OBJECTDIR}/e_init_uart2.o.tmp
	@${RM} ${OBJECTDIR}/e_init_uart2.o.d 
	@${CP} ${OBJECTDIR}/e_init_uart2.o.tmp ${OBJECTDIR}/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart2.o.tmp
endif
	@touch ${OBJECTDIR}/e_init_uart2.o.err 
	@cat ${OBJECTDIR}/e_init_uart2.o.err 
	@if [ -f ${OBJECTDIR}/e_init_uart2.o.ok ] ; then rm -f ${OBJECTDIR}/e_init_uart2.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_interrupt.o: e_interrupt.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_interrupt.o.d 
	@${RM} ${OBJECTDIR}/e_interrupt.o.ok ${OBJECTDIR}/e_interrupt.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_interrupt.s -o ${OBJECTDIR}/e_interrupt.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_interrupt.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_interrupt.s -o ${OBJECTDIR}/e_interrupt.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_interrupt.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_interrupt.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_interrupt.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_interrupt.o.d ] ; then touch ${OBJECTDIR}/e_interrupt.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_interrupt.o.d > ${OBJECTDIR}/e_interrupt.o.tmp
	@${RM} ${OBJECTDIR}/e_interrupt.o.d 
	@${CP} ${OBJECTDIR}/e_interrupt.o.tmp ${OBJECTDIR}/e_interrupt.o.d 
	@${RM} ${OBJECTDIR}/e_interrupt.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_interrupt.o.d ] ; then touch ${OBJECTDIR}/e_interrupt.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_interrupt.o.d > ${OBJECTDIR}/e_interrupt.o.tmp
	@${RM} ${OBJECTDIR}/e_interrupt.o.d 
	@${CP} ${OBJECTDIR}/e_interrupt.o.tmp ${OBJECTDIR}/e_interrupt.o.d 
	@${RM} ${OBJECTDIR}/e_interrupt.o.tmp
endif
	@touch ${OBJECTDIR}/e_interrupt.o.err 
	@cat ${OBJECTDIR}/e_interrupt.o.err 
	@if [ -f ${OBJECTDIR}/e_interrupt.o.ok ] ; then rm -f ${OBJECTDIR}/e_interrupt.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_init_uart1.o: e_init_uart1.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart1.o.ok ${OBJECTDIR}/e_init_uart1.o.err 
	@echo ${MP_AS} $(MP_EXTRA_AS_PRE)  e_init_uart1.s -o ${OBJECTDIR}/e_init_uart1.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_init_uart1.o.d$(MP_EXTRA_AS_POST)
	@-${MP_AS} $(MP_EXTRA_AS_PRE)  e_init_uart1.s -o ${OBJECTDIR}/e_init_uart1.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1  -MD ${OBJECTDIR}/e_init_uart1.o.d$(MP_EXTRA_AS_POST) 2>&1 > ${OBJECTDIR}/e_init_uart1.o.err  ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_init_uart1.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@if ! [ -f ${OBJECTDIR}/e_init_uart1.o.d ] ; then touch ${OBJECTDIR}/e_init_uart1.o.d ; fi 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_init_uart1.o.d > ${OBJECTDIR}/e_init_uart1.o.tmp
	@${RM} ${OBJECTDIR}/e_init_uart1.o.d 
	@${CP} ${OBJECTDIR}/e_init_uart1.o.tmp ${OBJECTDIR}/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart1.o.tmp}
else 
	@if ! [ -f ${OBJECTDIR}/e_init_uart1.o.d ] ; then touch ${OBJECTDIR}/e_init_uart1.o.d ; fi 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_init_uart1.o.d > ${OBJECTDIR}/e_init_uart1.o.tmp
	@${RM} ${OBJECTDIR}/e_init_uart1.o.d 
	@${CP} ${OBJECTDIR}/e_init_uart1.o.tmp ${OBJECTDIR}/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/e_init_uart1.o.tmp
endif
	@touch ${OBJECTDIR}/e_init_uart1.o.err 
	@cat ${OBJECTDIR}/e_init_uart1.o.err 
	@if [ -f ${OBJECTDIR}/e_init_uart1.o.ok ] ; then rm -f ${OBJECTDIR}/e_init_uart1.o.ok; else exit 1; fi
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/e_calc_po3030k.o: e_calc_po3030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.ok ${OBJECTDIR}/e_calc_po3030k.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_calc_po3030k.o.d -o ${OBJECTDIR}/e_calc_po3030k.o e_calc_po3030k.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_calc_po3030k.o.d -o ${OBJECTDIR}/e_calc_po3030k.o e_calc_po3030k.c    2>&1  > ${OBJECTDIR}/e_calc_po3030k.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_calc_po3030k.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_calc_po3030k.o.d > ${OBJECTDIR}/e_calc_po3030k.o.tmp
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${CP} ${OBJECTDIR}/e_calc_po3030k.o.tmp ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_calc_po3030k.o.d > ${OBJECTDIR}/e_calc_po3030k.o.tmp
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${CP} ${OBJECTDIR}/e_calc_po3030k.o.tmp ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.tmp
endif
	@touch ${OBJECTDIR}/e_calc_po3030k.o.err 
	@cat ${OBJECTDIR}/e_calc_po3030k.o.err 
	@if [ -f ${OBJECTDIR}/e_calc_po3030k.o.ok ] ; then rm -f ${OBJECTDIR}/e_calc_po3030k.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_common.o: e_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_common.o.d 
	@${RM} ${OBJECTDIR}/e_common.o.ok ${OBJECTDIR}/e_common.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_common.o.d -o ${OBJECTDIR}/e_common.o e_common.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_common.o.d -o ${OBJECTDIR}/e_common.o e_common.c    2>&1  > ${OBJECTDIR}/e_common.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_common.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_common.o.d > ${OBJECTDIR}/e_common.o.tmp
	@${RM} ${OBJECTDIR}/e_common.o.d 
	@${CP} ${OBJECTDIR}/e_common.o.tmp ${OBJECTDIR}/e_common.o.d 
	@${RM} ${OBJECTDIR}/e_common.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_common.o.d > ${OBJECTDIR}/e_common.o.tmp
	@${RM} ${OBJECTDIR}/e_common.o.d 
	@${CP} ${OBJECTDIR}/e_common.o.tmp ${OBJECTDIR}/e_common.o.d 
	@${RM} ${OBJECTDIR}/e_common.o.tmp
endif
	@touch ${OBJECTDIR}/e_common.o.err 
	@cat ${OBJECTDIR}/e_common.o.err 
	@if [ -f ${OBJECTDIR}/e_common.o.ok ] ; then rm -f ${OBJECTDIR}/e_common.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_po6030k_registers.o: e_po6030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.ok ${OBJECTDIR}/e_po6030k_registers.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_po6030k_registers.o.d -o ${OBJECTDIR}/e_po6030k_registers.o e_po6030k_registers.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_po6030k_registers.o.d -o ${OBJECTDIR}/e_po6030k_registers.o e_po6030k_registers.c    2>&1  > ${OBJECTDIR}/e_po6030k_registers.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_po6030k_registers.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_po6030k_registers.o.d > ${OBJECTDIR}/e_po6030k_registers.o.tmp
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${CP} ${OBJECTDIR}/e_po6030k_registers.o.tmp ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_po6030k_registers.o.d > ${OBJECTDIR}/e_po6030k_registers.o.tmp
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${CP} ${OBJECTDIR}/e_po6030k_registers.o.tmp ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.tmp
endif
	@touch ${OBJECTDIR}/e_po6030k_registers.o.err 
	@cat ${OBJECTDIR}/e_po6030k_registers.o.err 
	@if [ -f ${OBJECTDIR}/e_po6030k_registers.o.ok ] ; then rm -f ${OBJECTDIR}/e_po6030k_registers.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_ad_conv.o: e_ad_conv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/e_ad_conv.o.ok ${OBJECTDIR}/e_ad_conv.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_ad_conv.o.d -o ${OBJECTDIR}/e_ad_conv.o e_ad_conv.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_ad_conv.o.d -o ${OBJECTDIR}/e_ad_conv.o e_ad_conv.c    2>&1  > ${OBJECTDIR}/e_ad_conv.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_ad_conv.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_ad_conv.o.d > ${OBJECTDIR}/e_ad_conv.o.tmp
	@${RM} ${OBJECTDIR}/e_ad_conv.o.d 
	@${CP} ${OBJECTDIR}/e_ad_conv.o.tmp ${OBJECTDIR}/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/e_ad_conv.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_ad_conv.o.d > ${OBJECTDIR}/e_ad_conv.o.tmp
	@${RM} ${OBJECTDIR}/e_ad_conv.o.d 
	@${CP} ${OBJECTDIR}/e_ad_conv.o.tmp ${OBJECTDIR}/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/e_ad_conv.o.tmp
endif
	@touch ${OBJECTDIR}/e_ad_conv.o.err 
	@cat ${OBJECTDIR}/e_ad_conv.o.err 
	@if [ -f ${OBJECTDIR}/e_ad_conv.o.ok ] ; then rm -f ${OBJECTDIR}/e_ad_conv.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_I2C_protocol.o: e_I2C_protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.ok ${OBJECTDIR}/e_I2C_protocol.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_I2C_protocol.o.d -o ${OBJECTDIR}/e_I2C_protocol.o e_I2C_protocol.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_I2C_protocol.o.d -o ${OBJECTDIR}/e_I2C_protocol.o e_I2C_protocol.c    2>&1  > ${OBJECTDIR}/e_I2C_protocol.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_I2C_protocol.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_I2C_protocol.o.d > ${OBJECTDIR}/e_I2C_protocol.o.tmp
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${CP} ${OBJECTDIR}/e_I2C_protocol.o.tmp ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_I2C_protocol.o.d > ${OBJECTDIR}/e_I2C_protocol.o.tmp
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${CP} ${OBJECTDIR}/e_I2C_protocol.o.tmp ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.tmp
endif
	@touch ${OBJECTDIR}/e_I2C_protocol.o.err 
	@cat ${OBJECTDIR}/e_I2C_protocol.o.err 
	@if [ -f ${OBJECTDIR}/e_I2C_protocol.o.ok ] ; then rm -f ${OBJECTDIR}/e_I2C_protocol.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_led.o: e_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_led.o.d 
	@${RM} ${OBJECTDIR}/e_led.o.ok ${OBJECTDIR}/e_led.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_led.o.d -o ${OBJECTDIR}/e_led.o e_led.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_led.o.d -o ${OBJECTDIR}/e_led.o e_led.c    2>&1  > ${OBJECTDIR}/e_led.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_led.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_led.o.d > ${OBJECTDIR}/e_led.o.tmp
	@${RM} ${OBJECTDIR}/e_led.o.d 
	@${CP} ${OBJECTDIR}/e_led.o.tmp ${OBJECTDIR}/e_led.o.d 
	@${RM} ${OBJECTDIR}/e_led.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_led.o.d > ${OBJECTDIR}/e_led.o.tmp
	@${RM} ${OBJECTDIR}/e_led.o.d 
	@${CP} ${OBJECTDIR}/e_led.o.tmp ${OBJECTDIR}/e_led.o.d 
	@${RM} ${OBJECTDIR}/e_led.o.tmp
endif
	@touch ${OBJECTDIR}/e_led.o.err 
	@cat ${OBJECTDIR}/e_led.o.err 
	@if [ -f ${OBJECTDIR}/e_led.o.ok ] ; then rm -f ${OBJECTDIR}/e_led.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_prox.o: e_prox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_prox.o.d 
	@${RM} ${OBJECTDIR}/e_prox.o.ok ${OBJECTDIR}/e_prox.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_prox.o.d -o ${OBJECTDIR}/e_prox.o e_prox.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_prox.o.d -o ${OBJECTDIR}/e_prox.o e_prox.c    2>&1  > ${OBJECTDIR}/e_prox.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_prox.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_prox.o.d > ${OBJECTDIR}/e_prox.o.tmp
	@${RM} ${OBJECTDIR}/e_prox.o.d 
	@${CP} ${OBJECTDIR}/e_prox.o.tmp ${OBJECTDIR}/e_prox.o.d 
	@${RM} ${OBJECTDIR}/e_prox.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_prox.o.d > ${OBJECTDIR}/e_prox.o.tmp
	@${RM} ${OBJECTDIR}/e_prox.o.d 
	@${CP} ${OBJECTDIR}/e_prox.o.tmp ${OBJECTDIR}/e_prox.o.d 
	@${RM} ${OBJECTDIR}/e_prox.o.tmp
endif
	@touch ${OBJECTDIR}/e_prox.o.err 
	@cat ${OBJECTDIR}/e_prox.o.err 
	@if [ -f ${OBJECTDIR}/e_prox.o.ok ] ; then rm -f ${OBJECTDIR}/e_prox.o.ok; else exit 1; fi
	
${OBJECTDIR}/matlab.o: matlab.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/matlab.o.d 
	@${RM} ${OBJECTDIR}/matlab.o.ok ${OBJECTDIR}/matlab.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/matlab.o.d -o ${OBJECTDIR}/matlab.o matlab.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/matlab.o.d -o ${OBJECTDIR}/matlab.o matlab.c    2>&1  > ${OBJECTDIR}/matlab.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/matlab.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/matlab.o.d > ${OBJECTDIR}/matlab.o.tmp
	@${RM} ${OBJECTDIR}/matlab.o.d 
	@${CP} ${OBJECTDIR}/matlab.o.tmp ${OBJECTDIR}/matlab.o.d 
	@${RM} ${OBJECTDIR}/matlab.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/matlab.o.d > ${OBJECTDIR}/matlab.o.tmp
	@${RM} ${OBJECTDIR}/matlab.o.d 
	@${CP} ${OBJECTDIR}/matlab.o.tmp ${OBJECTDIR}/matlab.o.d 
	@${RM} ${OBJECTDIR}/matlab.o.tmp
endif
	@touch ${OBJECTDIR}/matlab.o.err 
	@cat ${OBJECTDIR}/matlab.o.err 
	@if [ -f ${OBJECTDIR}/matlab.o.ok ] ; then rm -f ${OBJECTDIR}/matlab.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_calc_po6030k.o: e_calc_po6030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.ok ${OBJECTDIR}/e_calc_po6030k.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_calc_po6030k.o.d -o ${OBJECTDIR}/e_calc_po6030k.o e_calc_po6030k.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_calc_po6030k.o.d -o ${OBJECTDIR}/e_calc_po6030k.o e_calc_po6030k.c    2>&1  > ${OBJECTDIR}/e_calc_po6030k.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_calc_po6030k.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_calc_po6030k.o.d > ${OBJECTDIR}/e_calc_po6030k.o.tmp
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${CP} ${OBJECTDIR}/e_calc_po6030k.o.tmp ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_calc_po6030k.o.d > ${OBJECTDIR}/e_calc_po6030k.o.tmp
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${CP} ${OBJECTDIR}/e_calc_po6030k.o.tmp ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.tmp
endif
	@touch ${OBJECTDIR}/e_calc_po6030k.o.err 
	@cat ${OBJECTDIR}/e_calc_po6030k.o.err 
	@if [ -f ${OBJECTDIR}/e_calc_po6030k.o.ok ] ; then rm -f ${OBJECTDIR}/e_calc_po6030k.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_po3030k_registers.o: e_po3030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.ok ${OBJECTDIR}/e_po3030k_registers.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_po3030k_registers.o.d -o ${OBJECTDIR}/e_po3030k_registers.o e_po3030k_registers.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_po3030k_registers.o.d -o ${OBJECTDIR}/e_po3030k_registers.o e_po3030k_registers.c    2>&1  > ${OBJECTDIR}/e_po3030k_registers.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_po3030k_registers.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_po3030k_registers.o.d > ${OBJECTDIR}/e_po3030k_registers.o.tmp
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${CP} ${OBJECTDIR}/e_po3030k_registers.o.tmp ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_po3030k_registers.o.d > ${OBJECTDIR}/e_po3030k_registers.o.tmp
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${CP} ${OBJECTDIR}/e_po3030k_registers.o.tmp ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.tmp
endif
	@touch ${OBJECTDIR}/e_po3030k_registers.o.err 
	@cat ${OBJECTDIR}/e_po3030k_registers.o.err 
	@if [ -f ${OBJECTDIR}/e_po3030k_registers.o.ok ] ; then rm -f ${OBJECTDIR}/e_po3030k_registers.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_motors.o: e_motors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_motors.o.d 
	@${RM} ${OBJECTDIR}/e_motors.o.ok ${OBJECTDIR}/e_motors.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_motors.o.d -o ${OBJECTDIR}/e_motors.o e_motors.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_motors.o.d -o ${OBJECTDIR}/e_motors.o e_motors.c    2>&1  > ${OBJECTDIR}/e_motors.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_motors.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_motors.o.d > ${OBJECTDIR}/e_motors.o.tmp
	@${RM} ${OBJECTDIR}/e_motors.o.d 
	@${CP} ${OBJECTDIR}/e_motors.o.tmp ${OBJECTDIR}/e_motors.o.d 
	@${RM} ${OBJECTDIR}/e_motors.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_motors.o.d > ${OBJECTDIR}/e_motors.o.tmp
	@${RM} ${OBJECTDIR}/e_motors.o.d 
	@${CP} ${OBJECTDIR}/e_motors.o.tmp ${OBJECTDIR}/e_motors.o.d 
	@${RM} ${OBJECTDIR}/e_motors.o.tmp
endif
	@touch ${OBJECTDIR}/e_motors.o.err 
	@cat ${OBJECTDIR}/e_motors.o.err 
	@if [ -f ${OBJECTDIR}/e_motors.o.ok ] ; then rm -f ${OBJECTDIR}/e_motors.o.ok; else exit 1; fi
	
${OBJECTDIR}/camtest.o: camtest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/camtest.o.d 
	@${RM} ${OBJECTDIR}/camtest.o.ok ${OBJECTDIR}/camtest.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/camtest.o.d -o ${OBJECTDIR}/camtest.o camtest.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/camtest.o.d -o ${OBJECTDIR}/camtest.o camtest.c    2>&1  > ${OBJECTDIR}/camtest.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/camtest.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/camtest.o.d > ${OBJECTDIR}/camtest.o.tmp
	@${RM} ${OBJECTDIR}/camtest.o.d 
	@${CP} ${OBJECTDIR}/camtest.o.tmp ${OBJECTDIR}/camtest.o.d 
	@${RM} ${OBJECTDIR}/camtest.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/camtest.o.d > ${OBJECTDIR}/camtest.o.tmp
	@${RM} ${OBJECTDIR}/camtest.o.d 
	@${CP} ${OBJECTDIR}/camtest.o.tmp ${OBJECTDIR}/camtest.o.d 
	@${RM} ${OBJECTDIR}/camtest.o.tmp
endif
	@touch ${OBJECTDIR}/camtest.o.err 
	@cat ${OBJECTDIR}/camtest.o.err 
	@if [ -f ${OBJECTDIR}/camtest.o.ok ] ; then rm -f ${OBJECTDIR}/camtest.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_agenda.o: e_agenda.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_agenda.o.d 
	@${RM} ${OBJECTDIR}/e_agenda.o.ok ${OBJECTDIR}/e_agenda.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_agenda.o.d -o ${OBJECTDIR}/e_agenda.o e_agenda.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_agenda.o.d -o ${OBJECTDIR}/e_agenda.o e_agenda.c    2>&1  > ${OBJECTDIR}/e_agenda.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_agenda.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_agenda.o.d > ${OBJECTDIR}/e_agenda.o.tmp
	@${RM} ${OBJECTDIR}/e_agenda.o.d 
	@${CP} ${OBJECTDIR}/e_agenda.o.tmp ${OBJECTDIR}/e_agenda.o.d 
	@${RM} ${OBJECTDIR}/e_agenda.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_agenda.o.d > ${OBJECTDIR}/e_agenda.o.tmp
	@${RM} ${OBJECTDIR}/e_agenda.o.d 
	@${CP} ${OBJECTDIR}/e_agenda.o.tmp ${OBJECTDIR}/e_agenda.o.d 
	@${RM} ${OBJECTDIR}/e_agenda.o.tmp
endif
	@touch ${OBJECTDIR}/e_agenda.o.err 
	@cat ${OBJECTDIR}/e_agenda.o.err 
	@if [ -f ${OBJECTDIR}/e_agenda.o.ok ] ; then rm -f ${OBJECTDIR}/e_agenda.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_I2C_master_module.o: e_I2C_master_module.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.ok ${OBJECTDIR}/e_I2C_master_module.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_I2C_master_module.o.d -o ${OBJECTDIR}/e_I2C_master_module.o e_I2C_master_module.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_I2C_master_module.o.d -o ${OBJECTDIR}/e_I2C_master_module.o e_I2C_master_module.c    2>&1  > ${OBJECTDIR}/e_I2C_master_module.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_I2C_master_module.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_I2C_master_module.o.d > ${OBJECTDIR}/e_I2C_master_module.o.tmp
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${CP} ${OBJECTDIR}/e_I2C_master_module.o.tmp ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_I2C_master_module.o.d > ${OBJECTDIR}/e_I2C_master_module.o.tmp
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${CP} ${OBJECTDIR}/e_I2C_master_module.o.tmp ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.tmp
endif
	@touch ${OBJECTDIR}/e_I2C_master_module.o.err 
	@cat ${OBJECTDIR}/e_I2C_master_module.o.err 
	@if [ -f ${OBJECTDIR}/e_I2C_master_module.o.ok ] ; then rm -f ${OBJECTDIR}/e_I2C_master_module.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_init_port.o: e_init_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/e_init_port.o.ok ${OBJECTDIR}/e_init_port.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_init_port.o.d -o ${OBJECTDIR}/e_init_port.o e_init_port.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_init_port.o.d -o ${OBJECTDIR}/e_init_port.o e_init_port.c    2>&1  > ${OBJECTDIR}/e_init_port.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_init_port.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_init_port.o.d > ${OBJECTDIR}/e_init_port.o.tmp
	@${RM} ${OBJECTDIR}/e_init_port.o.d 
	@${CP} ${OBJECTDIR}/e_init_port.o.tmp ${OBJECTDIR}/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/e_init_port.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_init_port.o.d > ${OBJECTDIR}/e_init_port.o.tmp
	@${RM} ${OBJECTDIR}/e_init_port.o.d 
	@${CP} ${OBJECTDIR}/e_init_port.o.tmp ${OBJECTDIR}/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/e_init_port.o.tmp
endif
	@touch ${OBJECTDIR}/e_init_port.o.err 
	@cat ${OBJECTDIR}/e_init_port.o.err 
	@if [ -f ${OBJECTDIR}/e_init_port.o.ok ] ; then rm -f ${OBJECTDIR}/e_init_port.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_timers.o: e_timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_timers.o.d 
	@${RM} ${OBJECTDIR}/e_timers.o.ok ${OBJECTDIR}/e_timers.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_timers.o.d -o ${OBJECTDIR}/e_timers.o e_timers.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_timers.o.d -o ${OBJECTDIR}/e_timers.o e_timers.c    2>&1  > ${OBJECTDIR}/e_timers.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_timers.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_timers.o.d > ${OBJECTDIR}/e_timers.o.tmp
	@${RM} ${OBJECTDIR}/e_timers.o.d 
	@${CP} ${OBJECTDIR}/e_timers.o.tmp ${OBJECTDIR}/e_timers.o.d 
	@${RM} ${OBJECTDIR}/e_timers.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_timers.o.d > ${OBJECTDIR}/e_timers.o.tmp
	@${RM} ${OBJECTDIR}/e_timers.o.d 
	@${CP} ${OBJECTDIR}/e_timers.o.tmp ${OBJECTDIR}/e_timers.o.d 
	@${RM} ${OBJECTDIR}/e_timers.o.tmp
endif
	@touch ${OBJECTDIR}/e_timers.o.err 
	@cat ${OBJECTDIR}/e_timers.o.err 
	@if [ -f ${OBJECTDIR}/e_timers.o.ok ] ; then rm -f ${OBJECTDIR}/e_timers.o.ok; else exit 1; fi
	
else
${OBJECTDIR}/e_calc_po3030k.o: e_calc_po3030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.ok ${OBJECTDIR}/e_calc_po3030k.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_calc_po3030k.o.d -o ${OBJECTDIR}/e_calc_po3030k.o e_calc_po3030k.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_calc_po3030k.o.d -o ${OBJECTDIR}/e_calc_po3030k.o e_calc_po3030k.c    2>&1  > ${OBJECTDIR}/e_calc_po3030k.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_calc_po3030k.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_calc_po3030k.o.d > ${OBJECTDIR}/e_calc_po3030k.o.tmp
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${CP} ${OBJECTDIR}/e_calc_po3030k.o.tmp ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_calc_po3030k.o.d > ${OBJECTDIR}/e_calc_po3030k.o.tmp
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${CP} ${OBJECTDIR}/e_calc_po3030k.o.tmp ${OBJECTDIR}/e_calc_po3030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po3030k.o.tmp
endif
	@touch ${OBJECTDIR}/e_calc_po3030k.o.err 
	@cat ${OBJECTDIR}/e_calc_po3030k.o.err 
	@if [ -f ${OBJECTDIR}/e_calc_po3030k.o.ok ] ; then rm -f ${OBJECTDIR}/e_calc_po3030k.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_common.o: e_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_common.o.d 
	@${RM} ${OBJECTDIR}/e_common.o.ok ${OBJECTDIR}/e_common.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_common.o.d -o ${OBJECTDIR}/e_common.o e_common.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_common.o.d -o ${OBJECTDIR}/e_common.o e_common.c    2>&1  > ${OBJECTDIR}/e_common.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_common.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_common.o.d > ${OBJECTDIR}/e_common.o.tmp
	@${RM} ${OBJECTDIR}/e_common.o.d 
	@${CP} ${OBJECTDIR}/e_common.o.tmp ${OBJECTDIR}/e_common.o.d 
	@${RM} ${OBJECTDIR}/e_common.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_common.o.d > ${OBJECTDIR}/e_common.o.tmp
	@${RM} ${OBJECTDIR}/e_common.o.d 
	@${CP} ${OBJECTDIR}/e_common.o.tmp ${OBJECTDIR}/e_common.o.d 
	@${RM} ${OBJECTDIR}/e_common.o.tmp
endif
	@touch ${OBJECTDIR}/e_common.o.err 
	@cat ${OBJECTDIR}/e_common.o.err 
	@if [ -f ${OBJECTDIR}/e_common.o.ok ] ; then rm -f ${OBJECTDIR}/e_common.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_po6030k_registers.o: e_po6030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.ok ${OBJECTDIR}/e_po6030k_registers.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_po6030k_registers.o.d -o ${OBJECTDIR}/e_po6030k_registers.o e_po6030k_registers.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_po6030k_registers.o.d -o ${OBJECTDIR}/e_po6030k_registers.o e_po6030k_registers.c    2>&1  > ${OBJECTDIR}/e_po6030k_registers.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_po6030k_registers.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_po6030k_registers.o.d > ${OBJECTDIR}/e_po6030k_registers.o.tmp
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${CP} ${OBJECTDIR}/e_po6030k_registers.o.tmp ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_po6030k_registers.o.d > ${OBJECTDIR}/e_po6030k_registers.o.tmp
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${CP} ${OBJECTDIR}/e_po6030k_registers.o.tmp ${OBJECTDIR}/e_po6030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po6030k_registers.o.tmp
endif
	@touch ${OBJECTDIR}/e_po6030k_registers.o.err 
	@cat ${OBJECTDIR}/e_po6030k_registers.o.err 
	@if [ -f ${OBJECTDIR}/e_po6030k_registers.o.ok ] ; then rm -f ${OBJECTDIR}/e_po6030k_registers.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_ad_conv.o: e_ad_conv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/e_ad_conv.o.ok ${OBJECTDIR}/e_ad_conv.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_ad_conv.o.d -o ${OBJECTDIR}/e_ad_conv.o e_ad_conv.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_ad_conv.o.d -o ${OBJECTDIR}/e_ad_conv.o e_ad_conv.c    2>&1  > ${OBJECTDIR}/e_ad_conv.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_ad_conv.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_ad_conv.o.d > ${OBJECTDIR}/e_ad_conv.o.tmp
	@${RM} ${OBJECTDIR}/e_ad_conv.o.d 
	@${CP} ${OBJECTDIR}/e_ad_conv.o.tmp ${OBJECTDIR}/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/e_ad_conv.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_ad_conv.o.d > ${OBJECTDIR}/e_ad_conv.o.tmp
	@${RM} ${OBJECTDIR}/e_ad_conv.o.d 
	@${CP} ${OBJECTDIR}/e_ad_conv.o.tmp ${OBJECTDIR}/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/e_ad_conv.o.tmp
endif
	@touch ${OBJECTDIR}/e_ad_conv.o.err 
	@cat ${OBJECTDIR}/e_ad_conv.o.err 
	@if [ -f ${OBJECTDIR}/e_ad_conv.o.ok ] ; then rm -f ${OBJECTDIR}/e_ad_conv.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_I2C_protocol.o: e_I2C_protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.ok ${OBJECTDIR}/e_I2C_protocol.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_I2C_protocol.o.d -o ${OBJECTDIR}/e_I2C_protocol.o e_I2C_protocol.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_I2C_protocol.o.d -o ${OBJECTDIR}/e_I2C_protocol.o e_I2C_protocol.c    2>&1  > ${OBJECTDIR}/e_I2C_protocol.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_I2C_protocol.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_I2C_protocol.o.d > ${OBJECTDIR}/e_I2C_protocol.o.tmp
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${CP} ${OBJECTDIR}/e_I2C_protocol.o.tmp ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_I2C_protocol.o.d > ${OBJECTDIR}/e_I2C_protocol.o.tmp
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${CP} ${OBJECTDIR}/e_I2C_protocol.o.tmp ${OBJECTDIR}/e_I2C_protocol.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_protocol.o.tmp
endif
	@touch ${OBJECTDIR}/e_I2C_protocol.o.err 
	@cat ${OBJECTDIR}/e_I2C_protocol.o.err 
	@if [ -f ${OBJECTDIR}/e_I2C_protocol.o.ok ] ; then rm -f ${OBJECTDIR}/e_I2C_protocol.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_led.o: e_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_led.o.d 
	@${RM} ${OBJECTDIR}/e_led.o.ok ${OBJECTDIR}/e_led.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_led.o.d -o ${OBJECTDIR}/e_led.o e_led.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_led.o.d -o ${OBJECTDIR}/e_led.o e_led.c    2>&1  > ${OBJECTDIR}/e_led.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_led.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_led.o.d > ${OBJECTDIR}/e_led.o.tmp
	@${RM} ${OBJECTDIR}/e_led.o.d 
	@${CP} ${OBJECTDIR}/e_led.o.tmp ${OBJECTDIR}/e_led.o.d 
	@${RM} ${OBJECTDIR}/e_led.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_led.o.d > ${OBJECTDIR}/e_led.o.tmp
	@${RM} ${OBJECTDIR}/e_led.o.d 
	@${CP} ${OBJECTDIR}/e_led.o.tmp ${OBJECTDIR}/e_led.o.d 
	@${RM} ${OBJECTDIR}/e_led.o.tmp
endif
	@touch ${OBJECTDIR}/e_led.o.err 
	@cat ${OBJECTDIR}/e_led.o.err 
	@if [ -f ${OBJECTDIR}/e_led.o.ok ] ; then rm -f ${OBJECTDIR}/e_led.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_prox.o: e_prox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_prox.o.d 
	@${RM} ${OBJECTDIR}/e_prox.o.ok ${OBJECTDIR}/e_prox.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_prox.o.d -o ${OBJECTDIR}/e_prox.o e_prox.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_prox.o.d -o ${OBJECTDIR}/e_prox.o e_prox.c    2>&1  > ${OBJECTDIR}/e_prox.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_prox.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_prox.o.d > ${OBJECTDIR}/e_prox.o.tmp
	@${RM} ${OBJECTDIR}/e_prox.o.d 
	@${CP} ${OBJECTDIR}/e_prox.o.tmp ${OBJECTDIR}/e_prox.o.d 
	@${RM} ${OBJECTDIR}/e_prox.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_prox.o.d > ${OBJECTDIR}/e_prox.o.tmp
	@${RM} ${OBJECTDIR}/e_prox.o.d 
	@${CP} ${OBJECTDIR}/e_prox.o.tmp ${OBJECTDIR}/e_prox.o.d 
	@${RM} ${OBJECTDIR}/e_prox.o.tmp
endif
	@touch ${OBJECTDIR}/e_prox.o.err 
	@cat ${OBJECTDIR}/e_prox.o.err 
	@if [ -f ${OBJECTDIR}/e_prox.o.ok ] ; then rm -f ${OBJECTDIR}/e_prox.o.ok; else exit 1; fi
	
${OBJECTDIR}/matlab.o: matlab.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/matlab.o.d 
	@${RM} ${OBJECTDIR}/matlab.o.ok ${OBJECTDIR}/matlab.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/matlab.o.d -o ${OBJECTDIR}/matlab.o matlab.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/matlab.o.d -o ${OBJECTDIR}/matlab.o matlab.c    2>&1  > ${OBJECTDIR}/matlab.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/matlab.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/matlab.o.d > ${OBJECTDIR}/matlab.o.tmp
	@${RM} ${OBJECTDIR}/matlab.o.d 
	@${CP} ${OBJECTDIR}/matlab.o.tmp ${OBJECTDIR}/matlab.o.d 
	@${RM} ${OBJECTDIR}/matlab.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/matlab.o.d > ${OBJECTDIR}/matlab.o.tmp
	@${RM} ${OBJECTDIR}/matlab.o.d 
	@${CP} ${OBJECTDIR}/matlab.o.tmp ${OBJECTDIR}/matlab.o.d 
	@${RM} ${OBJECTDIR}/matlab.o.tmp
endif
	@touch ${OBJECTDIR}/matlab.o.err 
	@cat ${OBJECTDIR}/matlab.o.err 
	@if [ -f ${OBJECTDIR}/matlab.o.ok ] ; then rm -f ${OBJECTDIR}/matlab.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_calc_po6030k.o: e_calc_po6030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.ok ${OBJECTDIR}/e_calc_po6030k.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_calc_po6030k.o.d -o ${OBJECTDIR}/e_calc_po6030k.o e_calc_po6030k.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_calc_po6030k.o.d -o ${OBJECTDIR}/e_calc_po6030k.o e_calc_po6030k.c    2>&1  > ${OBJECTDIR}/e_calc_po6030k.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_calc_po6030k.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_calc_po6030k.o.d > ${OBJECTDIR}/e_calc_po6030k.o.tmp
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${CP} ${OBJECTDIR}/e_calc_po6030k.o.tmp ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_calc_po6030k.o.d > ${OBJECTDIR}/e_calc_po6030k.o.tmp
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${CP} ${OBJECTDIR}/e_calc_po6030k.o.tmp ${OBJECTDIR}/e_calc_po6030k.o.d 
	@${RM} ${OBJECTDIR}/e_calc_po6030k.o.tmp
endif
	@touch ${OBJECTDIR}/e_calc_po6030k.o.err 
	@cat ${OBJECTDIR}/e_calc_po6030k.o.err 
	@if [ -f ${OBJECTDIR}/e_calc_po6030k.o.ok ] ; then rm -f ${OBJECTDIR}/e_calc_po6030k.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_po3030k_registers.o: e_po3030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.ok ${OBJECTDIR}/e_po3030k_registers.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_po3030k_registers.o.d -o ${OBJECTDIR}/e_po3030k_registers.o e_po3030k_registers.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_po3030k_registers.o.d -o ${OBJECTDIR}/e_po3030k_registers.o e_po3030k_registers.c    2>&1  > ${OBJECTDIR}/e_po3030k_registers.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_po3030k_registers.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_po3030k_registers.o.d > ${OBJECTDIR}/e_po3030k_registers.o.tmp
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${CP} ${OBJECTDIR}/e_po3030k_registers.o.tmp ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_po3030k_registers.o.d > ${OBJECTDIR}/e_po3030k_registers.o.tmp
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${CP} ${OBJECTDIR}/e_po3030k_registers.o.tmp ${OBJECTDIR}/e_po3030k_registers.o.d 
	@${RM} ${OBJECTDIR}/e_po3030k_registers.o.tmp
endif
	@touch ${OBJECTDIR}/e_po3030k_registers.o.err 
	@cat ${OBJECTDIR}/e_po3030k_registers.o.err 
	@if [ -f ${OBJECTDIR}/e_po3030k_registers.o.ok ] ; then rm -f ${OBJECTDIR}/e_po3030k_registers.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_motors.o: e_motors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_motors.o.d 
	@${RM} ${OBJECTDIR}/e_motors.o.ok ${OBJECTDIR}/e_motors.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_motors.o.d -o ${OBJECTDIR}/e_motors.o e_motors.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_motors.o.d -o ${OBJECTDIR}/e_motors.o e_motors.c    2>&1  > ${OBJECTDIR}/e_motors.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_motors.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_motors.o.d > ${OBJECTDIR}/e_motors.o.tmp
	@${RM} ${OBJECTDIR}/e_motors.o.d 
	@${CP} ${OBJECTDIR}/e_motors.o.tmp ${OBJECTDIR}/e_motors.o.d 
	@${RM} ${OBJECTDIR}/e_motors.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_motors.o.d > ${OBJECTDIR}/e_motors.o.tmp
	@${RM} ${OBJECTDIR}/e_motors.o.d 
	@${CP} ${OBJECTDIR}/e_motors.o.tmp ${OBJECTDIR}/e_motors.o.d 
	@${RM} ${OBJECTDIR}/e_motors.o.tmp
endif
	@touch ${OBJECTDIR}/e_motors.o.err 
	@cat ${OBJECTDIR}/e_motors.o.err 
	@if [ -f ${OBJECTDIR}/e_motors.o.ok ] ; then rm -f ${OBJECTDIR}/e_motors.o.ok; else exit 1; fi
	
${OBJECTDIR}/camtest.o: camtest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/camtest.o.d 
	@${RM} ${OBJECTDIR}/camtest.o.ok ${OBJECTDIR}/camtest.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/camtest.o.d -o ${OBJECTDIR}/camtest.o camtest.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/camtest.o.d -o ${OBJECTDIR}/camtest.o camtest.c    2>&1  > ${OBJECTDIR}/camtest.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/camtest.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/camtest.o.d > ${OBJECTDIR}/camtest.o.tmp
	@${RM} ${OBJECTDIR}/camtest.o.d 
	@${CP} ${OBJECTDIR}/camtest.o.tmp ${OBJECTDIR}/camtest.o.d 
	@${RM} ${OBJECTDIR}/camtest.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/camtest.o.d > ${OBJECTDIR}/camtest.o.tmp
	@${RM} ${OBJECTDIR}/camtest.o.d 
	@${CP} ${OBJECTDIR}/camtest.o.tmp ${OBJECTDIR}/camtest.o.d 
	@${RM} ${OBJECTDIR}/camtest.o.tmp
endif
	@touch ${OBJECTDIR}/camtest.o.err 
	@cat ${OBJECTDIR}/camtest.o.err 
	@if [ -f ${OBJECTDIR}/camtest.o.ok ] ; then rm -f ${OBJECTDIR}/camtest.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_agenda.o: e_agenda.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_agenda.o.d 
	@${RM} ${OBJECTDIR}/e_agenda.o.ok ${OBJECTDIR}/e_agenda.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_agenda.o.d -o ${OBJECTDIR}/e_agenda.o e_agenda.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_agenda.o.d -o ${OBJECTDIR}/e_agenda.o e_agenda.c    2>&1  > ${OBJECTDIR}/e_agenda.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_agenda.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_agenda.o.d > ${OBJECTDIR}/e_agenda.o.tmp
	@${RM} ${OBJECTDIR}/e_agenda.o.d 
	@${CP} ${OBJECTDIR}/e_agenda.o.tmp ${OBJECTDIR}/e_agenda.o.d 
	@${RM} ${OBJECTDIR}/e_agenda.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_agenda.o.d > ${OBJECTDIR}/e_agenda.o.tmp
	@${RM} ${OBJECTDIR}/e_agenda.o.d 
	@${CP} ${OBJECTDIR}/e_agenda.o.tmp ${OBJECTDIR}/e_agenda.o.d 
	@${RM} ${OBJECTDIR}/e_agenda.o.tmp
endif
	@touch ${OBJECTDIR}/e_agenda.o.err 
	@cat ${OBJECTDIR}/e_agenda.o.err 
	@if [ -f ${OBJECTDIR}/e_agenda.o.ok ] ; then rm -f ${OBJECTDIR}/e_agenda.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_I2C_master_module.o: e_I2C_master_module.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.ok ${OBJECTDIR}/e_I2C_master_module.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_I2C_master_module.o.d -o ${OBJECTDIR}/e_I2C_master_module.o e_I2C_master_module.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_I2C_master_module.o.d -o ${OBJECTDIR}/e_I2C_master_module.o e_I2C_master_module.c    2>&1  > ${OBJECTDIR}/e_I2C_master_module.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_I2C_master_module.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_I2C_master_module.o.d > ${OBJECTDIR}/e_I2C_master_module.o.tmp
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${CP} ${OBJECTDIR}/e_I2C_master_module.o.tmp ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_I2C_master_module.o.d > ${OBJECTDIR}/e_I2C_master_module.o.tmp
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${CP} ${OBJECTDIR}/e_I2C_master_module.o.tmp ${OBJECTDIR}/e_I2C_master_module.o.d 
	@${RM} ${OBJECTDIR}/e_I2C_master_module.o.tmp
endif
	@touch ${OBJECTDIR}/e_I2C_master_module.o.err 
	@cat ${OBJECTDIR}/e_I2C_master_module.o.err 
	@if [ -f ${OBJECTDIR}/e_I2C_master_module.o.ok ] ; then rm -f ${OBJECTDIR}/e_I2C_master_module.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_init_port.o: e_init_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/e_init_port.o.ok ${OBJECTDIR}/e_init_port.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_init_port.o.d -o ${OBJECTDIR}/e_init_port.o e_init_port.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_init_port.o.d -o ${OBJECTDIR}/e_init_port.o e_init_port.c    2>&1  > ${OBJECTDIR}/e_init_port.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_init_port.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_init_port.o.d > ${OBJECTDIR}/e_init_port.o.tmp
	@${RM} ${OBJECTDIR}/e_init_port.o.d 
	@${CP} ${OBJECTDIR}/e_init_port.o.tmp ${OBJECTDIR}/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/e_init_port.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_init_port.o.d > ${OBJECTDIR}/e_init_port.o.tmp
	@${RM} ${OBJECTDIR}/e_init_port.o.d 
	@${CP} ${OBJECTDIR}/e_init_port.o.tmp ${OBJECTDIR}/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/e_init_port.o.tmp
endif
	@touch ${OBJECTDIR}/e_init_port.o.err 
	@cat ${OBJECTDIR}/e_init_port.o.err 
	@if [ -f ${OBJECTDIR}/e_init_port.o.ok ] ; then rm -f ${OBJECTDIR}/e_init_port.o.ok; else exit 1; fi
	
${OBJECTDIR}/e_timers.o: e_timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/e_timers.o.d 
	@${RM} ${OBJECTDIR}/e_timers.o.ok ${OBJECTDIR}/e_timers.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_timers.o.d -o ${OBJECTDIR}/e_timers.o e_timers.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF ${OBJECTDIR}/e_timers.o.d -o ${OBJECTDIR}/e_timers.o e_timers.c    2>&1  > ${OBJECTDIR}/e_timers.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/e_timers.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/e_timers.o.d > ${OBJECTDIR}/e_timers.o.tmp
	@${RM} ${OBJECTDIR}/e_timers.o.d 
	@${CP} ${OBJECTDIR}/e_timers.o.tmp ${OBJECTDIR}/e_timers.o.d 
	@${RM} ${OBJECTDIR}/e_timers.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/e_timers.o.d > ${OBJECTDIR}/e_timers.o.tmp
	@${RM} ${OBJECTDIR}/e_timers.o.d 
	@${CP} ${OBJECTDIR}/e_timers.o.tmp ${OBJECTDIR}/e_timers.o.d 
	@${RM} ${OBJECTDIR}/e_timers.o.tmp
endif
	@touch ${OBJECTDIR}/e_timers.o.err 
	@cat ${OBJECTDIR}/e_timers.o.err 
	@if [ -f ${OBJECTDIR}/e_timers.o.ok ] ; then rm -f ${OBJECTDIR}/e_timers.o.ok; else exit 1; fi
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/epuck_camera3.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/epuck_camera3.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=2000,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/epuck_camera3.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/epuck_camera3.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=2000,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}/pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/epuck_camera3.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
