! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
	.align
! String constants
_StringConst_123:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_122:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_116:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_113:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_112:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_111:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_110:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_109:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_108:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_105:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_104:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_103:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_102:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_101:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_100:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_99:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_98:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_97:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_96:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_95:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_94:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_93:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_92:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_91:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_90:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_89:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_88:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_87:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_86:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_85:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_84:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_83:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_82:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_81:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_80:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_79:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_78:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_77:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_76:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_75:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_73:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_72:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_71:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_70:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_65:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_61:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_60:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_59:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_57:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_56:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_55:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_54:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_53:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_51:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_49:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_47:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_45:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x89d6f9cb,r4		! myHashVal = -1982400053
	cmp	r3,r4
	be	_Label_128
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_128:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_129
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_129
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_129
_Label_129:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1707:
	push	r0
	sub	r1,1,r1
	bne	_Label_1707
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_130 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_130  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1708:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1708
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_134 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_135 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_134  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_136 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_137 = _temp_136 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_137 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1709:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1709
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_139 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_140 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_139  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_141 = _function_127_IdleFunction
	set	_function_127_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_142 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_141  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_143
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_144
	.word	-12
	.word	4
	.word	_Label_145
	.word	-16
	.word	4
	.word	_Label_146
	.word	-20
	.word	4
	.word	_Label_147
	.word	-24
	.word	4
	.word	_Label_148
	.word	-28
	.word	4
	.word	_Label_149
	.word	-32
	.word	4
	.word	_Label_150
	.word	-36
	.word	4
	.word	_Label_151
	.word	-40
	.word	4
	.word	_Label_152
	.word	-44
	.word	4
	.word	_Label_153
	.word	-48
	.word	4
	.word	_Label_154
	.word	-52
	.word	4
	.word	_Label_155
	.word	-56
	.word	4
	.word	_Label_156
	.word	-60
	.word	4
	.word	0
_Label_143:
	.ascii	"InitializeScheduler\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_127_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_127_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1710:
	push	r0
	sub	r1,1,r1
	bne	_Label_1710
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_157:
!	jmp	_Label_158
_Label_158:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_162 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_160 else goto _Label_161
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_161
	jmp	_Label_160
_Label_160:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_163
_Label_161:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_163:
! END WHILE...
	jmp	_Label_157
_Label_159:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_127_IdleFunction:
	.word	_sourceFileName
	.word	_Label_164
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_165
	.word	8
	.word	4
	.word	_Label_166
	.word	-12
	.word	4
	.word	_Label_167
	.word	-16
	.word	4
	.word	0
_Label_164:
	.ascii	"IdleFunction\0"
	.align
_Label_165:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_167:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1711:
	push	r0
	sub	r1,1,r1
	bne	_Label_1711
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_170 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_170 ) then goto _Label_169		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_169
!	jmp	_Label_168
_Label_168:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_172 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_172 [0 ] into _temp_173
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_171 = _temp_173		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_171  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_169:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_174 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_174 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_175:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_179 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_178  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_178 then goto _Label_177 else goto _Label_176
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_176
	jmp	_Label_177
_Label_176:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_180 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_181 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_175
_Label_177:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_184 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_184 ) then goto _Label_183		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_183
!	jmp	_Label_182
_Label_182:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_186 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_186 [0 ] into _temp_187
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_185 = _temp_187		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_185  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_189 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_188 = *_temp_189  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_188) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_190 = _temp_188 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_183:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_191
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_192
	.word	8
	.word	4
	.word	_Label_193
	.word	-16
	.word	4
	.word	_Label_194
	.word	-20
	.word	4
	.word	_Label_195
	.word	-24
	.word	4
	.word	_Label_196
	.word	-28
	.word	4
	.word	_Label_197
	.word	-32
	.word	4
	.word	_Label_198
	.word	-36
	.word	4
	.word	_Label_199
	.word	-40
	.word	4
	.word	_Label_200
	.word	-44
	.word	4
	.word	_Label_201
	.word	-48
	.word	4
	.word	_Label_202
	.word	-52
	.word	4
	.word	_Label_203
	.word	-9
	.word	1
	.word	_Label_204
	.word	-56
	.word	4
	.word	_Label_205
	.word	-60
	.word	4
	.word	_Label_206
	.word	-64
	.word	4
	.word	_Label_207
	.word	-68
	.word	4
	.word	_Label_208
	.word	-72
	.word	4
	.word	_Label_209
	.word	-76
	.word	4
	.word	_Label_210
	.word	-80
	.word	4
	.word	0
_Label_191:
	.ascii	"Run\0"
	.align
_Label_192:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_203:
	.byte	'C'
	.ascii	"_temp_178\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_209:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_210:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1712:
	push	r0
	sub	r1,1,r1
	bne	_Label_1712
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_211 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_211  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_212 = _function_126_ThreadPrintShort
	set	_function_126_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_213 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_214
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_215
	.word	-12
	.word	4
	.word	_Label_216
	.word	-16
	.word	4
	.word	_Label_217
	.word	-20
	.word	4
	.word	_Label_218
	.word	-24
	.word	4
	.word	0
_Label_214:
	.ascii	"PrintReadyList\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_218:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1713:
	push	r0
	sub	r1,1,r1
	bne	_Label_1713
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_219 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_219  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_221 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_220 = *_temp_221  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_222 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_223
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_224
	.word	-12
	.word	4
	.word	_Label_225
	.word	-16
	.word	4
	.word	_Label_226
	.word	-20
	.word	4
	.word	_Label_227
	.word	-24
	.word	4
	.word	_Label_228
	.word	-28
	.word	4
	.word	_Label_229
	.word	-32
	.word	4
	.word	0
_Label_223:
	.ascii	"ThreadStartMain\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_228:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_229:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1714:
	push	r0
	sub	r1,1,r1
	bne	_Label_1714
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_230 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_231 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_232
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	0
_Label_232:
	.ascii	"ThreadFinish\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1715:
	push	r0
	sub	r1,1,r1
	bne	_Label_1715
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_236 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_238		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_238
!	jmp	_Label_237
_Label_237:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_239 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_241 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_240 = *_temp_241  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_240  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_238:
! CALL STATEMENT...
!   _temp_242 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_243 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_244 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_244  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_245
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_246
	.word	8
	.word	4
	.word	_Label_247
	.word	-12
	.word	4
	.word	_Label_248
	.word	-16
	.word	4
	.word	_Label_249
	.word	-20
	.word	4
	.word	_Label_250
	.word	-24
	.word	4
	.word	_Label_251
	.word	-28
	.word	4
	.word	_Label_252
	.word	-32
	.word	4
	.word	_Label_253
	.word	-36
	.word	4
	.word	_Label_254
	.word	-40
	.word	4
	.word	0
_Label_245:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_246:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1716:
	push	r0
	sub	r1,1,r1
	bne	_Label_1716
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_256		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_256
!	jmp	_Label_255
_Label_255:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_257
_Label_256:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_257:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_258
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_259
	.word	8
	.word	4
	.word	_Label_260
	.word	-12
	.word	4
	.word	0
_Label_258:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_260:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_126_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_126_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1717:
	push	r0
	sub	r1,1,r1
	bne	_Label_1717
	mov	659,r13		! source line 659
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_264		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_264
!   _temp_263 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_265
_Label_264:
!   _temp_263 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_265:
!   if _temp_263 then goto _Label_262 else goto _Label_261
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_261
	jmp	_Label_262
_Label_261:
! THEN...
	mov	668,r13		! source line 668
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_266 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_262:
! CALL STATEMENT...
!   _temp_267 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_269 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_268 = *_temp_269  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_270 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	674,r13		! source line 674
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_278 = *_temp_279  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_273
	cmp	r1,2
	be	_Label_274
	cmp	r1,3
	be	_Label_275
	cmp	r1,4
	be	_Label_276
	cmp	r1,5
	be	_Label_277
	jmp	_Label_271
! CASE 1...
_Label_273:
! CALL STATEMENT...
!   _temp_280 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 2...
_Label_274:
! CALL STATEMENT...
!   _temp_281 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 3...
_Label_275:
! CALL STATEMENT...
!   _temp_282 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	683,r13		! source line 683
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 4...
_Label_276:
! CALL STATEMENT...
!   _temp_283 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	686,r13		! source line 686
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 5...
_Label_277:
! CALL STATEMENT...
!   _temp_284 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	688,r13		! source line 688
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0BR",r10
	jmp	_Label_272
! DEFAULT CASE...
_Label_271:
! CALL STATEMENT...
!   _temp_285 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	691,r13		! source line 691
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_272:
! CALL STATEMENT...
!   _temp_286 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_287 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_288 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_126_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_289
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_290
	.word	8
	.word	4
	.word	_Label_291
	.word	-16
	.word	4
	.word	_Label_292
	.word	-20
	.word	4
	.word	_Label_293
	.word	-24
	.word	4
	.word	_Label_294
	.word	-28
	.word	4
	.word	_Label_295
	.word	-32
	.word	4
	.word	_Label_296
	.word	-36
	.word	4
	.word	_Label_297
	.word	-40
	.word	4
	.word	_Label_298
	.word	-44
	.word	4
	.word	_Label_299
	.word	-48
	.word	4
	.word	_Label_300
	.word	-52
	.word	4
	.word	_Label_301
	.word	-56
	.word	4
	.word	_Label_302
	.word	-60
	.word	4
	.word	_Label_303
	.word	-64
	.word	4
	.word	_Label_304
	.word	-68
	.word	4
	.word	_Label_305
	.word	-72
	.word	4
	.word	_Label_306
	.word	-76
	.word	4
	.word	_Label_307
	.word	-9
	.word	1
	.word	_Label_308
	.word	-80
	.word	4
	.word	0
_Label_289:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_290:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_307:
	.byte	'C'
	.ascii	"_temp_263\0"
	.align
_Label_308:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_125_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_125_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1718:
	push	r0
	sub	r1,1,r1
	bne	_Label_1718
	mov	989,r13		! source line 989
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_309 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	993,r13		! source line 993
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	994,r13		! source line 994
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_125_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_310
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_311
	.word	8
	.word	4
	.word	_Label_312
	.word	-12
	.word	4
	.word	0
_Label_310:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_311:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1719:
	push	r0
	sub	r1,1,r1
	bne	_Label_1719
	mov	999,r13		! source line 999
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_313 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1005,r13		! source line 1005
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_314
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_315
	.word	8
	.word	4
	.word	_Label_316
	.word	-12
	.word	4
	.word	0
_Label_314:
	.ascii	"ProcessFinish\0"
	.align
_Label_315:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1720:
	push	r0
	sub	r1,1,r1
	bne	_Label_1720
	mov	1494,r13		! source line 1494
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_317
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_317:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1721:
	push	r0
	sub	r1,1,r1
	bne	_Label_1721
	mov	1512,r13		! source line 1512
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_318 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1522,r13		! source line 1522
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_319
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_320
	.word	-12
	.word	4
	.word	0
_Label_319:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1534,r13		! source line 1534
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_321
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_321:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1722:
	push	r0
	sub	r1,1,r1
	bne	_Label_1722
	mov	1548,r13		! source line 1548
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_322 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1555,r13		! source line 1555
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_323
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_324
	.word	-12
	.word	4
	.word	0
_Label_323:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1723:
	push	r0
	sub	r1,1,r1
	bne	_Label_1723
	mov	1560,r13		! source line 1560
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_325 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1567,r13		! source line 1567
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_326
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_327
	.word	-12
	.word	4
	.word	0
_Label_326:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1724:
	push	r0
	sub	r1,1,r1
	bne	_Label_1724
	mov	1572,r13		! source line 1572
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_328 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1579,r13		! source line 1579
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_329
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_330
	.word	-12
	.word	4
	.word	0
_Label_329:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1725:
	push	r0
	sub	r1,1,r1
	bne	_Label_1725
	mov	1584,r13		! source line 1584
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_331 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1591,r13		! source line 1591
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_332
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_333
	.word	-12
	.word	4
	.word	0
_Label_332:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1726:
	push	r0
	sub	r1,1,r1
	bne	_Label_1726
	mov	1596,r13		! source line 1596
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1602,r13		! source line 1602
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_334 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1603,r13		! source line 1603
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_335
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_336
	.word	-12
	.word	4
	.word	0
_Label_335:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1727:
	push	r0
	sub	r1,1,r1
	bne	_Label_1727
	mov	1608,r13		! source line 1608
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_337 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1615,r13		! source line 1615
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_338
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_339
	.word	-12
	.word	4
	.word	0
_Label_338:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1728:
	push	r0
	sub	r1,1,r1
	bne	_Label_1728
	mov	1620,r13		! source line 1620
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_340 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1627,r13		! source line 1627
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_341
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_342
	.word	-12
	.word	4
	.word	0
_Label_341:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_124_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_124_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1729:
	push	r0
	sub	r1,1,r1
	bne	_Label_1729
	mov	1632,r13		! source line 1632
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_343 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1637,r13		! source line 1637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1638,r13		! source line 1638
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_344 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1642,r13		! source line 1642
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_348 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_347 = *_temp_348  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_347 == 0 then goto _Label_346		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_346
!	jmp	_Label_345
_Label_345:
! THEN...
	mov	1643,r13		! source line 1643
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_350 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_349) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_351
_Label_346:
! ELSE...
	mov	1645,r13		! source line 1645
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_352 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1645,r13		! source line 1645
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_351:
! SEND STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1653,r13		! source line 1653
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_124_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_353
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_354
	.word	8
	.word	4
	.word	_Label_355
	.word	-12
	.word	4
	.word	_Label_356
	.word	-16
	.word	4
	.word	_Label_357
	.word	-20
	.word	4
	.word	_Label_358
	.word	-24
	.word	4
	.word	_Label_359
	.word	-28
	.word	4
	.word	_Label_360
	.word	-32
	.word	4
	.word	_Label_361
	.word	-36
	.word	4
	.word	0
_Label_353:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_354:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1730:
	push	r0
	sub	r1,1,r1
	bne	_Label_1730
	mov	1658,r13		! source line 1658
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1665,r13		! source line 1665
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1679,r13		! source line 1679
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1731
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_362
_Label_1731:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_362
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_362
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_376,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_376:
	jmp	_Label_368	! 1:	
	jmp	_Label_375	! 2:	
	jmp	_Label_365	! 3:	
	jmp	_Label_364	! 4:	
	jmp	_Label_367	! 5:	
	jmp	_Label_366	! 6:	
	jmp	_Label_369	! 7:	
	jmp	_Label_370	! 8:	
	jmp	_Label_371	! 9:	
	jmp	_Label_372	! 10:	
	jmp	_Label_373	! 11:	
	jmp	_Label_374	! 12:	
! CASE 4...
_Label_364:
! RETURN STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0RE",r10
!   Call the function
	mov	1681,r13		! source line 1681
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_377  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_377  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_365:
! CALL STATEMENT...
!   Call the function
	mov	1683,r13		! source line 1683
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_366:
! RETURN STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1686,r13		! source line 1686
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_378  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_378  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_367:
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1688,r13		! source line 1688
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_379  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_379  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_368:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1690,r13		! source line 1690
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_369:
! RETURN STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1693,r13		! source line 1693
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_380  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_370:
! RETURN STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1695,r13		! source line 1695
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_381  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_371:
! RETURN STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_382  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_372:
! RETURN STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1699,r13		! source line 1699
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_383  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_373:
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1701,r13		! source line 1701
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_384  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_384  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_374:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_375:
! CALL STATEMENT...
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_362:
! CALL STATEMENT...
!   _temp_385 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1709,r13		! source line 1709
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1710,r13		! source line 1710
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_386 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1712,r13		! source line 1712
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_363:
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_387
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_388
	.word	8
	.word	4
	.word	_Label_389
	.word	12
	.word	4
	.word	_Label_390
	.word	16
	.word	4
	.word	_Label_391
	.word	20
	.word	4
	.word	_Label_392
	.word	24
	.word	4
	.word	_Label_393
	.word	-12
	.word	4
	.word	_Label_394
	.word	-16
	.word	4
	.word	_Label_395
	.word	-20
	.word	4
	.word	_Label_396
	.word	-24
	.word	4
	.word	_Label_397
	.word	-28
	.word	4
	.word	_Label_398
	.word	-32
	.word	4
	.word	_Label_399
	.word	-36
	.word	4
	.word	_Label_400
	.word	-40
	.word	4
	.word	_Label_401
	.word	-44
	.word	4
	.word	_Label_402
	.word	-48
	.word	4
	.word	0
_Label_387:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_388:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1719,r13		! source line 1719
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1719,r13		! source line 1719
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_403
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_404
	.word	8
	.word	4
	.word	0
_Label_403:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1725,r13		! source line 1725
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_405
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_405:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1731,r13		! source line 1731
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1731,r13		! source line 1731
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_406
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_406:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1737,r13		! source line 1737
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_407
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_407:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1744,r13		! source line 1744
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_408
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_409
	.word	8
	.word	4
	.word	0
_Label_408:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_409:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1751,r13		! source line 1751
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_410
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_411
	.word	8
	.word	4
	.word	0
_Label_410:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_411:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1758,r13		! source line 1758
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_412
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_413
	.word	8
	.word	4
	.word	0
_Label_412:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_413:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1765,r13		! source line 1765
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_414
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_415
	.word	8
	.word	4
	.word	0
_Label_414:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_415:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1772,r13		! source line 1772
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_416
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	12
	.word	4
	.word	_Label_419
	.word	16
	.word	4
	.word	0
_Label_416:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_418:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1779,r13		! source line 1779
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_420
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_421
	.word	8
	.word	4
	.word	_Label_422
	.word	12
	.word	4
	.word	_Label_423
	.word	16
	.word	4
	.word	0
_Label_420:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_423:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1786,r13		! source line 1786
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_424
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_425
	.word	8
	.word	4
	.word	_Label_426
	.word	12
	.word	4
	.word	0
_Label_424:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_425:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1793,r13		! source line 1793
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_427
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_428
	.word	8
	.word	4
	.word	0
_Label_427:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_429
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_429:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_430
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_430:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1732:
	push	r0
	sub	r1,1,r1
	bne	_Label_1732
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_432		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_432
!	jmp	_Label_431
_Label_431:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_433 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_432:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_435
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_436
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_437
	.word	12
	.word	4
	.word	_Label_438
	.word	-12
	.word	4
	.word	_Label_439
	.word	-16
	.word	4
	.word	0
_Label_435:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_436:
	.ascii	"Pself\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1733:
	push	r0
	sub	r1,1,r1
	bne	_Label_1733
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_441		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_441
!	jmp	_Label_440
_Label_440:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_442 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_441:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_444		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_444
!	jmp	_Label_443
_Label_443:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_445 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_446 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_447 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_444:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_448
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_450
	.word	-12
	.word	4
	.word	_Label_451
	.word	-16
	.word	4
	.word	_Label_452
	.word	-20
	.word	4
	.word	_Label_453
	.word	-24
	.word	4
	.word	_Label_454
	.word	-28
	.word	4
	.word	_Label_455
	.word	-32
	.word	4
	.word	0
_Label_448:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_449:
	.ascii	"Pself\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_454:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_455:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1734:
	push	r0
	sub	r1,1,r1
	bne	_Label_1734
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_457		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_457
!	jmp	_Label_456
_Label_456:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_458 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_457:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_460		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_460
!	jmp	_Label_459
_Label_459:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_461 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_460:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_462
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_464
	.word	-12
	.word	4
	.word	_Label_465
	.word	-16
	.word	4
	.word	_Label_466
	.word	-20
	.word	4
	.word	0
_Label_462:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_463:
	.ascii	"Pself\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_466:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_467
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_467:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_468
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_468:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1735:
	push	r0
	sub	r1,1,r1
	bne	_Label_1735
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_470
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_471
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_472
	.word	-12
	.word	4
	.word	0
_Label_470:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_471:
	.ascii	"Pself\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1736:
	push	r0
	sub	r1,1,r1
	bne	_Label_1736
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_474		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_474
!	jmp	_Label_473
_Label_473:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_475 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_474:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_479		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_479
!   _temp_478 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_480
_Label_479:
!   _temp_478 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_480:
!   if _temp_478 then goto _Label_477 else goto _Label_476
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_476
	jmp	_Label_477
_Label_476:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_481
_Label_477:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_482 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_481:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_483
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_484
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_485
	.word	-16
	.word	4
	.word	_Label_486
	.word	-9
	.word	1
	.word	_Label_487
	.word	-20
	.word	4
	.word	_Label_488
	.word	-24
	.word	4
	.word	0
_Label_483:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_484:
	.ascii	"Pself\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_486:
	.byte	'C'
	.ascii	"_temp_478\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_488:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1737:
	push	r0
	sub	r1,1,r1
	bne	_Label_1737
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_490		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_490
!	jmp	_Label_489
_Label_489:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_491 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_490:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_492 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_494		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_494
!	jmp	_Label_493
_Label_493:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_495 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_495 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_496 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_497
_Label_494:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_497:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_498
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_500
	.word	-12
	.word	4
	.word	_Label_501
	.word	-16
	.word	4
	.word	_Label_502
	.word	-20
	.word	4
	.word	_Label_503
	.word	-24
	.word	4
	.word	_Label_504
	.word	-28
	.word	4
	.word	_Label_505
	.word	-32
	.word	4
	.word	0
_Label_498:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_499:
	.ascii	"Pself\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_504:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_505:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1738:
	push	r0
	sub	r1,1,r1
	bne	_Label_1738
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_508		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_508
!	jmp	_Label_507
_Label_507:
!   _temp_506 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_509
_Label_508:
!   _temp_506 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_509:
!   ReturnResult: _temp_506  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_510
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_512
	.word	-9
	.word	1
	.word	0
_Label_510:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_511:
	.ascii	"Pself\0"
	.align
_Label_512:
	.byte	'C'
	.ascii	"_temp_506\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_513
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_513:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_514
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_514:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1739:
	push	r0
	sub	r1,1,r1
	bne	_Label_1739
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_516
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_517
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_518
	.word	-12
	.word	4
	.word	0
_Label_516:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_517:
	.ascii	"Pself\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1740:
	push	r0
	sub	r1,1,r1
	bne	_Label_1740
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_521  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_521 then goto _Label_520 else goto _Label_519
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_519
	jmp	_Label_520
_Label_519:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_522 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_522  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_520:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_523 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_524
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_525
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_526
	.word	12
	.word	4
	.word	_Label_527
	.word	-16
	.word	4
	.word	_Label_528
	.word	-20
	.word	4
	.word	_Label_529
	.word	-9
	.word	1
	.word	_Label_530
	.word	-24
	.word	4
	.word	0
_Label_524:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_525:
	.ascii	"Pself\0"
	.align
_Label_526:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_529:
	.byte	'C'
	.ascii	"_temp_521\0"
	.align
_Label_530:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	8,r1
_Label_1741:
	push	r0
	sub	r1,1,r1
	bne	_Label_1741
	mov	419,r13		! source line 419
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0IF",r10
	mov	423,r13		! source line 423
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_533  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_533 then goto _Label_532 else goto _Label_531
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_531
	jmp	_Label_532
_Label_531:
! THEN...
	mov	424,r13		! source line 424
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_534 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	424,r13		! source line 424
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_532:
! ASSIGNMENT STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
	mov	427,r13		! source line 427
	mov	"\0\0SE",r10
!   _temp_535 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_537		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_537
!	jmp	_Label_536
_Label_536:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_538 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_537:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_539
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_541
	.word	12
	.word	4
	.word	_Label_542
	.word	-16
	.word	4
	.word	_Label_543
	.word	-20
	.word	4
	.word	_Label_544
	.word	-24
	.word	4
	.word	_Label_545
	.word	-9
	.word	1
	.word	_Label_546
	.word	-28
	.word	4
	.word	_Label_547
	.word	-32
	.word	4
	.word	0
_Label_539:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_540:
	.ascii	"Pself\0"
	.align
_Label_541:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_545:
	.byte	'C'
	.ascii	"_temp_533\0"
	.align
_Label_546:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_547:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1742:
	push	r0
	sub	r1,1,r1
	bne	_Label_1742
	mov	439,r13		! source line 439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0IF",r10
	mov	443,r13		! source line 443
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_550  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_550 then goto _Label_549 else goto _Label_548
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_548
	jmp	_Label_549
_Label_548:
! THEN...
	mov	444,r13		! source line 444
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_551 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	444,r13		! source line 444
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_549:
! ASSIGNMENT STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	446,r13		! source line 446
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0WH",r10
_Label_552:
!	jmp	_Label_553
_Label_553:
	mov	447,r13		! source line 447
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0AS",r10
	mov	448,r13		! source line 448
	mov	"\0\0SE",r10
!   _temp_555 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_556
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_556
	jmp	_Label_557
_Label_556:
! THEN...
	mov	450,r13		! source line 450
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0BR",r10
	jmp	_Label_554
! END IF...
_Label_557:
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_558 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_558 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   _temp_559 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_552
_Label_554:
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	455,r13		! source line 455
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_560
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_561
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_562
	.word	12
	.word	4
	.word	_Label_563
	.word	-16
	.word	4
	.word	_Label_564
	.word	-20
	.word	4
	.word	_Label_565
	.word	-24
	.word	4
	.word	_Label_566
	.word	-28
	.word	4
	.word	_Label_567
	.word	-9
	.word	1
	.word	_Label_568
	.word	-32
	.word	4
	.word	_Label_569
	.word	-36
	.word	4
	.word	0
_Label_560:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_561:
	.ascii	"Pself\0"
	.align
_Label_562:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_567:
	.byte	'C'
	.ascii	"_temp_550\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_569:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_570
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_570:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_571
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_571:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1743:
	push	r0
	sub	r1,1,r1
	bne	_Label_1743
	mov	466,r13		! source line 466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0AS",r10
!   _temp_572 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_572) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_572 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0AS",r10
!   _temp_573 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_573 [0 ] into _temp_574
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_574 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   _temp_575 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_575 [999 ] into _temp_576
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_576 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   _temp_577 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_577 [999 ] into _temp_578
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_578		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   _temp_579 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_581 = &_temp_580
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_581 = _temp_581 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_583:
!   Data Move: *_temp_581 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_581 = _temp_581 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_582 = _temp_582 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_582) then goto _Label_583
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_583
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_584 = &_temp_580
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1744
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1744:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_579 = *_temp_584  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1745:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1745
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   _temp_585 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_587 = &_temp_586
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_587 = _temp_587 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_589:
!   Data Move: *_temp_587 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_587 = _temp_587 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_588 = _temp_588 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_588) then goto _Label_589
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_589
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_590 = &_temp_586
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1746
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1746:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_585 = *_temp_590  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1747:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1747
! RETURN STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_591
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_592
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_593
	.word	12
	.word	4
	.word	_Label_594
	.word	-12
	.word	4
	.word	_Label_595
	.word	-16
	.word	4
	.word	_Label_596
	.word	-20
	.word	4
	.word	_Label_597
	.word	-84
	.word	64
	.word	_Label_598
	.word	-88
	.word	4
	.word	_Label_599
	.word	-92
	.word	4
	.word	_Label_600
	.word	-96
	.word	4
	.word	_Label_601
	.word	-100
	.word	4
	.word	_Label_602
	.word	-156
	.word	56
	.word	_Label_603
	.word	-160
	.word	4
	.word	_Label_604
	.word	-164
	.word	4
	.word	_Label_605
	.word	-168
	.word	4
	.word	_Label_606
	.word	-172
	.word	4
	.word	_Label_607
	.word	-176
	.word	4
	.word	_Label_608
	.word	-180
	.word	4
	.word	_Label_609
	.word	-184
	.word	4
	.word	_Label_610
	.word	-188
	.word	4
	.word	0
_Label_591:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_592:
	.ascii	"Pself\0"
	.align
_Label_593:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1748:
	push	r0
	sub	r1,1,r1
	bne	_Label_1748
	mov	485,r13		! source line 485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	496,r13		! source line 496
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_611  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_613 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_612  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_614
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_615
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_616
	.word	12
	.word	4
	.word	_Label_617
	.word	16
	.word	4
	.word	_Label_618
	.word	-12
	.word	4
	.word	_Label_619
	.word	-16
	.word	4
	.word	_Label_620
	.word	-20
	.word	4
	.word	_Label_621
	.word	-24
	.word	4
	.word	_Label_622
	.word	-28
	.word	4
	.word	0
_Label_614:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_615:
	.ascii	"Pself\0"
	.align
_Label_616:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_617:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_621:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_622:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1749:
	push	r0
	sub	r1,1,r1
	bne	_Label_1749
	mov	509,r13		! source line 509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_625 == _P_Kernel_currentThread then goto _Label_624		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_624
!	jmp	_Label_623
_Label_623:
! THEN...
	mov	526,r13		! source line 526
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_626 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_626  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	526,r13		! source line 526
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_624:
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0AS",r10
	mov	532,r13		! source line 532
	mov	"\0\0SE",r10
!   _temp_627 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_629		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_629
!	jmp	_Label_628
_Label_628:
! THEN...
	mov	537,r13		! source line 537
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_631		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_631
!	jmp	_Label_630
_Label_630:
! THEN...
	mov	538,r13		! source line 538
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_632 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_632  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	538,r13		! source line 538
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_631:
! ASSIGNMENT STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_634 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_633  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	542,r13		! source line 542
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_629:
! ASSIGNMENT STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	544,r13		! source line 544
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_635
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_637
	.word	-12
	.word	4
	.word	_Label_638
	.word	-16
	.word	4
	.word	_Label_639
	.word	-20
	.word	4
	.word	_Label_640
	.word	-24
	.word	4
	.word	_Label_641
	.word	-28
	.word	4
	.word	_Label_642
	.word	-32
	.word	4
	.word	_Label_643
	.word	-36
	.word	4
	.word	_Label_644
	.word	-40
	.word	4
	.word	_Label_645
	.word	-44
	.word	4
	.word	0
_Label_635:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_636:
	.ascii	"Pself\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_643:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_644:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_645:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1750:
	push	r0
	sub	r1,1,r1
	bne	_Label_1750
	mov	549,r13		! source line 549
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_647		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_647
!	jmp	_Label_646
_Label_646:
! THEN...
	mov	562,r13		! source line 562
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_648 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_648  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	562,r13		! source line 562
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_647:
! IF STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_651 == _P_Kernel_currentThread then goto _Label_650		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_650
!	jmp	_Label_649
_Label_649:
! THEN...
	mov	566,r13		! source line 566
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_652 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_652  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	566,r13		! source line 566
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_650:
! ASSIGNMENT STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0AS",r10
	mov	572,r13		! source line 572
	mov	"\0\0SE",r10
!   _temp_653 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_654
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_654
	jmp	_Label_655
_Label_654:
! THEN...
	mov	574,r13		! source line 574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_656 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_656  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	574,r13		! source line 574
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_655:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	576,r13		! source line 576
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	576,r13		! source line 576
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_657
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_659
	.word	-12
	.word	4
	.word	_Label_660
	.word	-16
	.word	4
	.word	_Label_661
	.word	-20
	.word	4
	.word	_Label_662
	.word	-24
	.word	4
	.word	_Label_663
	.word	-28
	.word	4
	.word	_Label_664
	.word	-32
	.word	4
	.word	0
_Label_657:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_658:
	.ascii	"Pself\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_664:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1751:
	push	r0
	sub	r1,1,r1
	bne	_Label_1751
	mov	581,r13		! source line 581
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0IF",r10
!   _temp_668 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_668 [0 ] into _temp_669
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_667 = *_temp_669  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_667 == 606348324 then goto _Label_666		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_666
!	jmp	_Label_665
_Label_665:
! THEN...
	mov	588,r13		! source line 588
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_670 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_670  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	588,r13		! source line 588
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_671
_Label_666:
! ELSE...
	mov	589,r13		! source line 589
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0IF",r10
!   _temp_675 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_675 [999 ] into _temp_676
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_674 = *_temp_676  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_674 == 606348324 then goto _Label_673		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_673
!	jmp	_Label_672
_Label_672:
! THEN...
	mov	590,r13		! source line 590
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_677 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_677  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	590,r13		! source line 590
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_673:
! END IF...
_Label_671:
! RETURN STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_678
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_679
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_680
	.word	-12
	.word	4
	.word	_Label_681
	.word	-16
	.word	4
	.word	_Label_682
	.word	-20
	.word	4
	.word	_Label_683
	.word	-24
	.word	4
	.word	_Label_684
	.word	-28
	.word	4
	.word	_Label_685
	.word	-32
	.word	4
	.word	_Label_686
	.word	-36
	.word	4
	.word	_Label_687
	.word	-40
	.word	4
	.word	0
_Label_678:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_679:
	.ascii	"Pself\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1752:
	push	r0
	sub	r1,1,r1
	bne	_Label_1752
	mov	596,r13		! source line 596
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_688 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_688  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_689 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_690  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_691 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_692 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_697 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_698 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_697  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_693:
!   Perform the FOR-LOOP termination test
!   if i > _temp_698 then goto _Label_696		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_696
_Label_694:
	mov	609,r13		! source line 609
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_699 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_700 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_701 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_703 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_703 [i ] into _temp_704
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_702 = *_temp_704  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_705 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_707 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_707 [i ] into _temp_708
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_706 = *_temp_708  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_709 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_709  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_695:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_693
! END FOR
_Label_696:
! CALL STATEMENT...
!   _temp_710 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-116]
!   _temp_711 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_711  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_712 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-108]
!   _temp_714 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_714 [0 ] into _temp_715
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_713 = _temp_715		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_713  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	620,r13		! source line 620
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_718
	cmp	r1,2
	be	_Label_719
	cmp	r1,3
	be	_Label_720
	cmp	r1,4
	be	_Label_721
	cmp	r1,5
	be	_Label_722
	jmp	_Label_716
! CASE 1...
_Label_718:
! CALL STATEMENT...
!   _temp_723 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0BR",r10
	jmp	_Label_717
! CASE 2...
_Label_719:
! CALL STATEMENT...
!   _temp_724 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0BR",r10
	jmp	_Label_717
! CASE 3...
_Label_720:
! CALL STATEMENT...
!   _temp_725 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	629,r13		! source line 629
	mov	"\0\0BR",r10
	jmp	_Label_717
! CASE 4...
_Label_721:
! CALL STATEMENT...
!   _temp_726 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0BR",r10
	jmp	_Label_717
! CASE 5...
_Label_722:
! CALL STATEMENT...
!   _temp_727 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0BR",r10
	jmp	_Label_717
! DEFAULT CASE...
_Label_716:
! CALL STATEMENT...
!   _temp_728 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	637,r13		! source line 637
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_717:
! CALL STATEMENT...
!   _temp_729 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_730 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_735 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_736 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_735  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_731:
!   Perform the FOR-LOOP termination test
!   if i > _temp_736 then goto _Label_734		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_734
_Label_732:
	mov	643,r13		! source line 643
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_737 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_738 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_739 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_741 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_741 [i ] into _temp_742
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_740 = *_temp_742  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_743 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_745 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_745 [i ] into _temp_746
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_744 = *_temp_746  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_747 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_747  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_733:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_731
! END FOR
_Label_734:
! ASSIGNMENT STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_748
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_749
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_750
	.word	-12
	.word	4
	.word	_Label_751
	.word	-16
	.word	4
	.word	_Label_752
	.word	-20
	.word	4
	.word	_Label_753
	.word	-24
	.word	4
	.word	_Label_754
	.word	-28
	.word	4
	.word	_Label_755
	.word	-32
	.word	4
	.word	_Label_756
	.word	-36
	.word	4
	.word	_Label_757
	.word	-40
	.word	4
	.word	_Label_758
	.word	-44
	.word	4
	.word	_Label_759
	.word	-48
	.word	4
	.word	_Label_760
	.word	-52
	.word	4
	.word	_Label_761
	.word	-56
	.word	4
	.word	_Label_762
	.word	-60
	.word	4
	.word	_Label_763
	.word	-64
	.word	4
	.word	_Label_764
	.word	-68
	.word	4
	.word	_Label_765
	.word	-72
	.word	4
	.word	_Label_766
	.word	-76
	.word	4
	.word	_Label_767
	.word	-80
	.word	4
	.word	_Label_768
	.word	-84
	.word	4
	.word	_Label_769
	.word	-88
	.word	4
	.word	_Label_770
	.word	-92
	.word	4
	.word	_Label_771
	.word	-96
	.word	4
	.word	_Label_772
	.word	-100
	.word	4
	.word	_Label_773
	.word	-104
	.word	4
	.word	_Label_774
	.word	-108
	.word	4
	.word	_Label_775
	.word	-112
	.word	4
	.word	_Label_776
	.word	-116
	.word	4
	.word	_Label_777
	.word	-120
	.word	4
	.word	_Label_778
	.word	-124
	.word	4
	.word	_Label_779
	.word	-128
	.word	4
	.word	_Label_780
	.word	-132
	.word	4
	.word	_Label_781
	.word	-136
	.word	4
	.word	_Label_782
	.word	-140
	.word	4
	.word	_Label_783
	.word	-144
	.word	4
	.word	_Label_784
	.word	-148
	.word	4
	.word	_Label_785
	.word	-152
	.word	4
	.word	_Label_786
	.word	-156
	.word	4
	.word	_Label_787
	.word	-160
	.word	4
	.word	_Label_788
	.word	-164
	.word	4
	.word	_Label_789
	.word	-168
	.word	4
	.word	_Label_790
	.word	-172
	.word	4
	.word	_Label_791
	.word	-176
	.word	4
	.word	_Label_792
	.word	-180
	.word	4
	.word	_Label_793
	.word	-184
	.word	4
	.word	_Label_794
	.word	-188
	.word	4
	.word	_Label_795
	.word	-192
	.word	4
	.word	_Label_796
	.word	-196
	.word	4
	.word	0
_Label_748:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_749:
	.ascii	"Pself\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_795:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_796:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_797
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_797:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_798
	.word	_sourceFileName
	.word	191		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_798:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	13563,r1
_Label_1753:
	push	r0
	sub	r1,1,r1
	bne	_Label_1753
	mov	707,r13		! source line 707
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_799 = _StringConst_74
	set	_StringConst_74,r1
	set	-50084,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_799  sizeInBytes=4
	set	-50084,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0AS",r10
!   _temp_800 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-50080,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_802 = &_temp_801
	set	-50076,r1
	add	r14,r1,r1
	store	r1,[r14+-8432]
!   _temp_802 = _temp_802 + 4
	load	[r14+-8432],r1
	add	r1,4,r1
	store	r1,[r14+-8432]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_804 = zeros  (sizeInBytes=4164)
	add	r14,-8424,r4
	mov	1041,r3
_Label_1754:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1754
!   _temp_804 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-8424]
	mov	10,r1
	store	r1,[r14+-8428]
_Label_806:
!   Data Move: *_temp_802 = _temp_804  (sizeInBytes=4164)
	add	r14,-8424,r5
	load	[r14+-8432],r4
	mov	1041,r3
_Label_1755:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1755
!   _temp_802 = _temp_802 + 4164
	load	[r14+-8432],r1
	add	r1,4164,r1
	store	r1,[r14+-8432]
!   _temp_803 = _temp_803 + -1
	load	[r14+-8428],r1
	add	r1,-1,r1
	store	r1,[r14+-8428]
!   if intNotZero (_temp_803) then goto _Label_806
	load	[r14+-8428],r1
	cmp	r1,r0
	bne	_Label_806
!   Initialize the array size...
	mov	10,r1
	set	-50076,r2
	store	r1,[r14+r2]
!   _temp_807 = &_temp_801
	set	-50076,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   make sure array has size 10
	set	-50080,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1756
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1756:
!   make sure array has size 10
	load	[r14+-4256],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_800 = *_temp_807  (sizeInBytes=41644)
	load	[r14+-4256],r5
	set	-50080,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1757:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1757
! ASSIGNMENT STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_813 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-4248]
!   Calculate and save the FOR-LOOP ending value
!   _temp_814 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-4244]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_813  (sizeInBytes=4)
	load	[r14+-4248],r1
	set	-50088,r2
	store	r1,[r14+r2]
_Label_809:
!   Perform the FOR-LOOP termination test
!   if i > _temp_814 then goto _Label_812		
	set	-50088,r1
	load	[r14+r1],r1
	load	[r14+-4244],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_812
_Label_810:
	mov	722,r13		! source line 722
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0AS",r10
!   _temp_815 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Move address of _temp_815 [i ] into _temp_816
!     make sure index expr is >= 0
	set	-50088,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-4240],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-4236]
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_817 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_1758:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1758
!   _temp_817 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
!   Data Move: *_temp_816 = _temp_817  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4236],r4
	mov	1041,r3
_Label_1759:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1759
! SEND STATEMENT...
	mov	724,r13		! source line 724
	mov	"\0\0SE",r10
!   _temp_819 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-64]
!   _temp_820 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_820 [i ] into _temp_821
!     make sure index expr is >= 0
	set	-50088,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_819  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0AS",r10
!   _temp_822 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_822 [i ] into _temp_823
!     make sure index expr is >= 0
	set	-50088,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   _temp_824 = _temp_823 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_824 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0AS",r10
!   _temp_825 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_825 [i ] into _temp_826
!     make sure index expr is >= 0
	set	-50088,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: myThread = *_temp_826  (sizeInBytes=4164)
	load	[r14+-36],r5
	set	-54252,r4
	add	r14,r4,r4
	mov	1041,r3
_Label_1760:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1760
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_827 = &myThread
	set	-54252,r1
	add	r14,r1,r1
	store	r1,[r14+-32]
!   _temp_828 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_827  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_811:
!   i = i + 1
	set	-50088,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-50088,r2
	store	r1,[r14+r2]
	jmp	_Label_809
! END FOR
_Label_812:
! ASSIGNMENT STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0SE",r10
!   _temp_831 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0SE",r10
!   _temp_832 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0RE",r10
	set	54256,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_833
	.word	4		! total size of parameters
	.word	54252		! frame size = 54252
	.word	_Label_834
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_835
	.word	-12
	.word	4
	.word	_Label_836
	.word	-16
	.word	4
	.word	_Label_837
	.word	-20
	.word	4
	.word	_Label_838
	.word	-24
	.word	4
	.word	_Label_839
	.word	-28
	.word	4
	.word	_Label_840
	.word	-32
	.word	4
	.word	_Label_841
	.word	-36
	.word	4
	.word	_Label_842
	.word	-40
	.word	4
	.word	_Label_843
	.word	-44
	.word	4
	.word	_Label_844
	.word	-48
	.word	4
	.word	_Label_845
	.word	-52
	.word	4
	.word	_Label_846
	.word	-56
	.word	4
	.word	_Label_847
	.word	-60
	.word	4
	.word	_Label_848
	.word	-64
	.word	4
	.word	_Label_849
	.word	-68
	.word	4
	.word	_Label_850
	.word	-4232
	.word	4164
	.word	_Label_851
	.word	-4236
	.word	4
	.word	_Label_852
	.word	-4240
	.word	4
	.word	_Label_853
	.word	-4244
	.word	4
	.word	_Label_854
	.word	-4248
	.word	4
	.word	_Label_855
	.word	-4252
	.word	4
	.word	_Label_856
	.word	-4256
	.word	4
	.word	_Label_857
	.word	-4260
	.word	4
	.word	_Label_858
	.word	-8424
	.word	4164
	.word	_Label_859
	.word	-8428
	.word	4
	.word	_Label_860
	.word	-8432
	.word	4
	.word	_Label_861
	.word	-50076
	.word	41644
	.word	_Label_862
	.word	-50080
	.word	4
	.word	_Label_863
	.word	-50084
	.word	4
	.word	_Label_864
	.word	-50088
	.word	4
	.word	_Label_865
	.word	-54252
	.word	4164
	.word	0
_Label_833:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_834:
	.ascii	"Pself\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_864:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_865:
	.byte	'O'
	.ascii	"myThread\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1761:
	push	r0
	sub	r1,1,r1
	bne	_Label_1761
	mov	738,r13		! source line 738
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_866 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_866  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_871 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_872 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_871  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_867:
!   Perform the FOR-LOOP termination test
!   if i > _temp_872 then goto _Label_870		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_870
_Label_868:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_873 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_873  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	748,r13		! source line 748
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_874 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_874  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	750,r13		! source line 750
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_876 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_876 [i ] into _temp_877
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_875 = _temp_877		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_875  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CA",r10
	call	_function_126_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_869:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_867
! END FOR
_Label_870:
! CALL STATEMENT...
!   _temp_878 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_878  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0SE",r10
!   _temp_879 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_880 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_879  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	755,r13		! source line 755
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_881
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_882
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_883
	.word	-12
	.word	4
	.word	_Label_884
	.word	-16
	.word	4
	.word	_Label_885
	.word	-20
	.word	4
	.word	_Label_886
	.word	-24
	.word	4
	.word	_Label_887
	.word	-28
	.word	4
	.word	_Label_888
	.word	-32
	.word	4
	.word	_Label_889
	.word	-36
	.word	4
	.word	_Label_890
	.word	-40
	.word	4
	.word	_Label_891
	.word	-44
	.word	4
	.word	_Label_892
	.word	-48
	.word	4
	.word	_Label_893
	.word	-52
	.word	4
	.word	_Label_894
	.word	-56
	.word	4
	.word	_Label_895
	.word	-60
	.word	4
	.word	0
_Label_881:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_882:
	.ascii	"Pself\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_894:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_895:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_1762:
	push	r0
	sub	r1,1,r1
	bne	_Label_1762
	mov	761,r13		! source line 761
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_896 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0IF",r10
	mov	770,r13		! source line 770
	mov	"\0\0SE",r10
!   _temp_899 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_897 else goto _Label_898
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_898
	jmp	_Label_897
_Label_897:
! THEN...
	mov	771,r13		! source line 771
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0SE",r10
!   _temp_900 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_901 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_900  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_898:
! ASSIGNMENT STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0AS",r10
	mov	773,r13		! source line 773
	mov	"\0\0SE",r10
!   _temp_902 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0AS",r10
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_903 = thread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_903 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_904 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0RE",r10
!   ReturnResult: thread  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_905
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_906
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_907
	.word	-12
	.word	4
	.word	_Label_908
	.word	-16
	.word	4
	.word	_Label_909
	.word	-20
	.word	4
	.word	_Label_910
	.word	-24
	.word	4
	.word	_Label_911
	.word	-28
	.word	4
	.word	_Label_912
	.word	-32
	.word	4
	.word	_Label_913
	.word	-36
	.word	4
	.word	_Label_914
	.word	-40
	.word	4
	.word	0
_Label_905:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_906:
	.ascii	"Pself\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_914:
	.byte	'P'
	.ascii	"thread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_1763:
	push	r0
	sub	r1,1,r1
	bne	_Label_1763
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_915 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_916 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_916 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_917 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0SE",r10
!   _temp_918 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_919 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_918  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_920 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_921
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_922
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_923
	.word	12
	.word	4
	.word	_Label_924
	.word	-12
	.word	4
	.word	_Label_925
	.word	-16
	.word	4
	.word	_Label_926
	.word	-20
	.word	4
	.word	_Label_927
	.word	-24
	.word	4
	.word	_Label_928
	.word	-28
	.word	4
	.word	_Label_929
	.word	-32
	.word	4
	.word	0
_Label_921:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_922:
	.ascii	"Pself\0"
	.align
_Label_923:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_930
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_930:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_931
	.word	_sourceFileName
	.word	212		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_931:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1764:
	push	r0
	sub	r1,1,r1
	bne	_Label_1764
	mov	804,r13		! source line 804
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1765:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1765
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0SE",r10
!   _temp_933 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_934
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_935
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_936
	.word	-12
	.word	4
	.word	_Label_937
	.word	-16
	.word	4
	.word	0
_Label_934:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_935:
	.ascii	"Pself\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1766:
	push	r0
	sub	r1,1,r1
	bne	_Label_1766
	mov	818,r13		! source line 818
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_938) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_939 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_940 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_940  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	826,r13		! source line 826
	mov	"\0\0CA",r10
	call	_function_126_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_941
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_942
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_943
	.word	-12
	.word	4
	.word	_Label_944
	.word	-16
	.word	4
	.word	_Label_945
	.word	-20
	.word	4
	.word	0
_Label_941:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_942:
	.ascii	"Pself\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1767:
	push	r0
	sub	r1,1,r1
	bne	_Label_1767
	mov	841,r13		! source line 841
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_946 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_946  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_947  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_948 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_948  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_949 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_949  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_951		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_951
!	jmp	_Label_950
_Label_950:
! THEN...
	mov	851,r13		! source line 851
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_952 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_952  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_953
_Label_951:
! ELSE...
	mov	852,r13		! source line 852
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_955		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_955
!	jmp	_Label_954
_Label_954:
! THEN...
	mov	853,r13		! source line 853
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_956 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_956  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_957
_Label_955:
! ELSE...
	mov	854,r13		! source line 854
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_959		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_959
!	jmp	_Label_958
_Label_958:
! THEN...
	mov	855,r13		! source line 855
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_960 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_961
_Label_959:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_962 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_962  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	857,r13		! source line 857
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_961:
! END IF...
_Label_957:
! END IF...
_Label_953:
! CALL STATEMENT...
!   _temp_963 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_963  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_964 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_964  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_965
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_966
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_967
	.word	-12
	.word	4
	.word	_Label_968
	.word	-16
	.word	4
	.word	_Label_969
	.word	-20
	.word	4
	.word	_Label_970
	.word	-24
	.word	4
	.word	_Label_971
	.word	-28
	.word	4
	.word	_Label_972
	.word	-32
	.word	4
	.word	_Label_973
	.word	-36
	.word	4
	.word	_Label_974
	.word	-40
	.word	4
	.word	_Label_975
	.word	-44
	.word	4
	.word	_Label_976
	.word	-48
	.word	4
	.word	0
_Label_965:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_966:
	.ascii	"Pself\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_977
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_977:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_978
	.word	_sourceFileName
	.word	232		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_978:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	399,r1
_Label_1768:
	push	r0
	sub	r1,1,r1
	bne	_Label_1768
	mov	874,r13		! source line 874
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0AS",r10
!   _temp_979 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1592]
!   NEW ARRAY Constructor...
!   _temp_981 = &_temp_980
	add	r14,-1588,r1
	store	r1,[r14+-344]
!   _temp_981 = _temp_981 + 4
	load	[r14+-344],r1
	add	r1,4,r1
	store	r1,[r14+-344]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_983 = zeros  (sizeInBytes=124)
	add	r14,-336,r4
	mov	31,r3
_Label_1769:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1769
!   _temp_983 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-336]
	mov	10,r1
	store	r1,[r14+-340]
_Label_985:
!   Data Move: *_temp_981 = _temp_983  (sizeInBytes=124)
	add	r14,-336,r5
	load	[r14+-344],r4
	mov	31,r3
_Label_1770:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1770
!   _temp_981 = _temp_981 + 124
	load	[r14+-344],r1
	add	r1,124,r1
	store	r1,[r14+-344]
!   _temp_982 = _temp_982 + -1
	load	[r14+-340],r1
	add	r1,-1,r1
	store	r1,[r14+-340]
!   if intNotZero (_temp_982) then goto _Label_985
	load	[r14+-340],r1
	cmp	r1,r0
	bne	_Label_985
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1588]
!   _temp_986 = &_temp_980
	add	r14,-1588,r1
	store	r1,[r14+-208]
!   make sure array has size 10
	load	[r14+-1592],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1771
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1771:
!   make sure array has size 10
	load	[r14+-208],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_979 = *_temp_986  (sizeInBytes=1244)
	load	[r14+-208],r5
	load	[r14+-1592],r4
	mov	311,r3
_Label_1772:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1772
! ASSIGNMENT STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! FOR STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_992 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-200]
!   Calculate and save the FOR-LOOP ending value
!   _temp_993 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-196]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_992  (sizeInBytes=4)
	load	[r14+-200],r1
	store	r1,[r14+-1596]
_Label_988:
!   Perform the FOR-LOOP termination test
!   if i > _temp_993 then goto _Label_991		
	load	[r14+-1596],r1
	load	[r14+-196],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_991
_Label_989:
	mov	885,r13		! source line 885
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   _temp_994 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Move address of _temp_994 [i ] into _temp_995
!     make sure index expr is >= 0
	load	[r14+-1596],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-192],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-188]
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_996 = zeros  (sizeInBytes=124)
	add	r14,-184,r4
	mov	31,r3
_Label_1773:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1773
!   _temp_996 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-184]
!   Data Move: *_temp_995 = _temp_996  (sizeInBytes=124)
	add	r14,-184,r5
	load	[r14+-188],r4
	mov	31,r3
_Label_1774:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1774
! SEND STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0SE",r10
!   _temp_998 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_998 [i ] into _temp_999
!     make sure index expr is >= 0
	load	[r14+-1596],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_1001 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1001 [i ] into _temp_1002
!     make sure index expr is >= 0
	load	[r14+-1596],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1000 = _temp_1002		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1003 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1000  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_990:
!   i = i + 1
	load	[r14+-1596],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1596]
	jmp	_Label_988
! END FOR
_Label_991:
! ASSIGNMENT STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0SE",r10
!   _temp_1005 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0SE",r10
!   _temp_1007 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0SE",r10
!   _temp_1009 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! RETURN STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0RE",r10
	add	r15,1600,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1010
	.word	4		! total size of parameters
	.word	1596		! frame size = 1596
	.word	_Label_1011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1012
	.word	-12
	.word	4
	.word	_Label_1013
	.word	-16
	.word	4
	.word	_Label_1014
	.word	-20
	.word	4
	.word	_Label_1015
	.word	-24
	.word	4
	.word	_Label_1016
	.word	-28
	.word	4
	.word	_Label_1017
	.word	-32
	.word	4
	.word	_Label_1018
	.word	-36
	.word	4
	.word	_Label_1019
	.word	-40
	.word	4
	.word	_Label_1020
	.word	-44
	.word	4
	.word	_Label_1021
	.word	-48
	.word	4
	.word	_Label_1022
	.word	-52
	.word	4
	.word	_Label_1023
	.word	-56
	.word	4
	.word	_Label_1024
	.word	-60
	.word	4
	.word	_Label_1025
	.word	-184
	.word	124
	.word	_Label_1026
	.word	-188
	.word	4
	.word	_Label_1027
	.word	-192
	.word	4
	.word	_Label_1028
	.word	-196
	.word	4
	.word	_Label_1029
	.word	-200
	.word	4
	.word	_Label_1030
	.word	-204
	.word	4
	.word	_Label_1031
	.word	-208
	.word	4
	.word	_Label_1032
	.word	-212
	.word	4
	.word	_Label_1033
	.word	-336
	.word	124
	.word	_Label_1034
	.word	-340
	.word	4
	.word	_Label_1035
	.word	-344
	.word	4
	.word	_Label_1036
	.word	-1588
	.word	1244
	.word	_Label_1037
	.word	-1592
	.word	4
	.word	_Label_1038
	.word	-1596
	.word	4
	.word	0
_Label_1010:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1011:
	.ascii	"Pself\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1038:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1775:
	push	r0
	sub	r1,1,r1
	bne	_Label_1775
	mov	902,r13		! source line 902
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1039 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1039  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1044 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1045 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1044  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1040:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1045 then goto _Label_1043		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1043
_Label_1041:
	mov	911,r13		! source line 911
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1046 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1047 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1047  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0SE",r10
!   _temp_1048 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1048 [i ] into _temp_1049
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1042:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1040
! END FOR
_Label_1043:
! CALL STATEMENT...
!   _temp_1050 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1050  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_1051 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1052 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1051  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	919,r13		! source line 919
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1053
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1054
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1055
	.word	-12
	.word	4
	.word	_Label_1056
	.word	-16
	.word	4
	.word	_Label_1057
	.word	-20
	.word	4
	.word	_Label_1058
	.word	-24
	.word	4
	.word	_Label_1059
	.word	-28
	.word	4
	.word	_Label_1060
	.word	-32
	.word	4
	.word	_Label_1061
	.word	-36
	.word	4
	.word	_Label_1062
	.word	-40
	.word	4
	.word	_Label_1063
	.word	-44
	.word	4
	.word	_Label_1064
	.word	-48
	.word	4
	.word	_Label_1065
	.word	-52
	.word	4
	.word	_Label_1066
	.word	-56
	.word	4
	.word	0
_Label_1053:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1054:
	.ascii	"Pself\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1065:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1066:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1776:
	push	r0
	sub	r1,1,r1
	bne	_Label_1776
	mov	925,r13		! source line 925
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1067 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1072 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1073 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1072  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1068:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1073 then goto _Label_1071		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1071
_Label_1069:
	mov	934,r13		! source line 934
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1074 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1074  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_1075 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1075 [i ] into _temp_1076
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1070:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1068
! END FOR
_Label_1071:
! CALL STATEMENT...
!   _temp_1077 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1077  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1078 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1079 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1078  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	941,r13		! source line 941
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1080
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1081
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1082
	.word	-12
	.word	4
	.word	_Label_1083
	.word	-16
	.word	4
	.word	_Label_1084
	.word	-20
	.word	4
	.word	_Label_1085
	.word	-24
	.word	4
	.word	_Label_1086
	.word	-28
	.word	4
	.word	_Label_1087
	.word	-32
	.word	4
	.word	_Label_1088
	.word	-36
	.word	4
	.word	_Label_1089
	.word	-40
	.word	4
	.word	_Label_1090
	.word	-44
	.word	4
	.word	_Label_1091
	.word	-48
	.word	4
	.word	_Label_1092
	.word	-52
	.word	4
	.word	0
_Label_1080:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1081:
	.ascii	"Pself\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1091:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1092:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_1777:
	push	r0
	sub	r1,1,r1
	bne	_Label_1777
	mov	947,r13		! source line 947
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1093 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0WH",r10
_Label_1094:
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1097 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1095 else goto _Label_1096
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1096
	jmp	_Label_1095
_Label_1095:
	mov	957,r13		! source line 957
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1098 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1099 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1098  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1094
_Label_1096:
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
	mov	960,r13		! source line 960
	mov	"\0\0SE",r10
!   _temp_1100 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=process  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
!   if intIsZero (process) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1101 = process + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1101 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0AS",r10
!   if intIsZero (process) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1102 = process + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1102 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0SE",r10
!   _temp_1103 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0RE",r10
!   ReturnResult: process  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1104
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1106
	.word	-12
	.word	4
	.word	_Label_1107
	.word	-16
	.word	4
	.word	_Label_1108
	.word	-20
	.word	4
	.word	_Label_1109
	.word	-24
	.word	4
	.word	_Label_1110
	.word	-28
	.word	4
	.word	_Label_1111
	.word	-32
	.word	4
	.word	_Label_1112
	.word	-36
	.word	4
	.word	_Label_1113
	.word	-40
	.word	4
	.word	_Label_1114
	.word	-44
	.word	4
	.word	0
_Label_1104:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1105:
	.ascii	"Pself\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1114:
	.byte	'P'
	.ascii	"process\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_1778:
	push	r0
	sub	r1,1,r1
	bne	_Label_1778
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1115 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1116 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1116 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1117 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1118 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1119 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1118  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0SE",r10
!   _temp_1120 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1121
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1123
	.word	12
	.word	4
	.word	_Label_1124
	.word	-12
	.word	4
	.word	_Label_1125
	.word	-16
	.word	4
	.word	_Label_1126
	.word	-20
	.word	4
	.word	_Label_1127
	.word	-24
	.word	4
	.word	_Label_1128
	.word	-28
	.word	4
	.word	_Label_1129
	.word	-32
	.word	4
	.word	0
_Label_1121:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1122:
	.ascii	"Pself\0"
	.align
_Label_1123:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1130
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1130:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1131
	.word	_sourceFileName
	.word	255		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1131:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1779:
	push	r0
	sub	r1,1,r1
	bne	_Label_1779
	mov	1014,r13		! source line 1014
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1132 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1132  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1020,r13		! source line 1020
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_1134 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0SE",r10
!   _temp_1136 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0SE",r10
!   _temp_1138 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1143 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1144 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1143  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1139:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1144 then goto _Label_1142		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1142
_Label_1140:
	mov	1033,r13		! source line 1033
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1147 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1147) then goto _Label_1146
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1146
!	jmp	_Label_1145
_Label_1145:
! THEN...
	mov	1037,r13		! source line 1037
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1148 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1148  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1037,r13		! source line 1037
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1146:
!   Increment the FOR-LOOP index variable and jump back
_Label_1141:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1139
! END FOR
_Label_1142:
! RETURN STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1149
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1150
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1151
	.word	-12
	.word	4
	.word	_Label_1152
	.word	-16
	.word	4
	.word	_Label_1153
	.word	-20
	.word	4
	.word	_Label_1154
	.word	-24
	.word	4
	.word	_Label_1155
	.word	-28
	.word	4
	.word	_Label_1156
	.word	-32
	.word	4
	.word	_Label_1157
	.word	-36
	.word	4
	.word	_Label_1158
	.word	-40
	.word	4
	.word	_Label_1159
	.word	-44
	.word	4
	.word	_Label_1160
	.word	-48
	.word	4
	.word	_Label_1161
	.word	-52
	.word	4
	.word	_Label_1162
	.word	-56
	.word	4
	.word	0
_Label_1149:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1150:
	.ascii	"Pself\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1162:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1780:
	push	r0
	sub	r1,1,r1
	bne	_Label_1780
	mov	1044,r13		! source line 1044
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0SE",r10
!   _temp_1163 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1164 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1164  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1165 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1166 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1166  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1051,r13		! source line 1051
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1167 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   _temp_1168 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1169
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1170
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1171
	.word	-12
	.word	4
	.word	_Label_1172
	.word	-16
	.word	4
	.word	_Label_1173
	.word	-20
	.word	4
	.word	_Label_1174
	.word	-24
	.word	4
	.word	_Label_1175
	.word	-28
	.word	4
	.word	_Label_1176
	.word	-32
	.word	4
	.word	0
_Label_1169:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1170:
	.ascii	"Pself\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1781:
	push	r0
	sub	r1,1,r1
	bne	_Label_1781
	mov	1058,r13		! source line 1058
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0SE",r10
!   _temp_1177 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0IF",r10
!   if numberFreeFrames >= 1 then goto _Label_1179		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1179
!	jmp	_Label_1178
_Label_1178:
! THEN...
	mov	1070,r13		! source line 1070
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0SE",r10
!   _temp_1180 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1181 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1180  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1179:
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
	mov	1074,r13		! source line 1074
	mov	"\0\0SE",r10
!   _temp_1182 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   _temp_1183 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0AS",r10
!   _temp_1184 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1184		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1185
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1187
	.word	-12
	.word	4
	.word	_Label_1188
	.word	-16
	.word	4
	.word	_Label_1189
	.word	-20
	.word	4
	.word	_Label_1190
	.word	-24
	.word	4
	.word	_Label_1191
	.word	-28
	.word	4
	.word	_Label_1192
	.word	-32
	.word	4
	.word	_Label_1193
	.word	-36
	.word	4
	.word	_Label_1194
	.word	-40
	.word	4
	.word	0
_Label_1185:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1186:
	.ascii	"Pself\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1193:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1194:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_1782:
	push	r0
	sub	r1,1,r1
	bne	_Label_1782
	mov	1088,r13		! source line 1088
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0SE",r10
!   _temp_1195 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0WH",r10
_Label_1196:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1198		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1198
!	jmp	_Label_1197
_Label_1197:
	mov	1094,r13		! source line 1094
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1199 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1200 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1199  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1196
_Label_1198:
! FOR STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1205 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1206 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1205  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1201:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1206 then goto _Label_1204		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1204
_Label_1202:
	mov	1098,r13		! source line 1098
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0AS",r10
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_1207 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=freeFrameNum  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0AS",r10
!   _temp_1208 = 8192 * freeFrameNum		(int)
	mov	8192,r1
	load	[r14+-52],r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1208		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
!   Increment the FOR-LOOP index variable and jump back
_Label_1203:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1201
! END FOR
_Label_1204:
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1209 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1209 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_1210 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1211
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1212
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1213
	.word	12
	.word	4
	.word	_Label_1214
	.word	16
	.word	4
	.word	_Label_1215
	.word	-12
	.word	4
	.word	_Label_1216
	.word	-16
	.word	4
	.word	_Label_1217
	.word	-20
	.word	4
	.word	_Label_1218
	.word	-24
	.word	4
	.word	_Label_1219
	.word	-28
	.word	4
	.word	_Label_1220
	.word	-32
	.word	4
	.word	_Label_1221
	.word	-36
	.word	4
	.word	_Label_1222
	.word	-40
	.word	4
	.word	_Label_1223
	.word	-44
	.word	4
	.word	_Label_1224
	.word	-48
	.word	4
	.word	_Label_1225
	.word	-52
	.word	4
	.word	_Label_1226
	.word	-56
	.word	4
	.word	0
_Label_1211:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1212:
	.ascii	"Pself\0"
	.align
_Label_1213:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1214:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1224:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1225:
	.byte	'I'
	.ascii	"freeFrameNum\0"
	.align
_Label_1226:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	15,r1
_Label_1783:
	push	r0
	sub	r1,1,r1
	bne	_Label_1783
	mov	1114,r13		! source line 1114
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
!   _temp_1227 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1228 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_1228  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
! FOR STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1233 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1234 = numFramesReturned - 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1233  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1229:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1234 then goto _Label_1232		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1232
_Label_1230:
	mov	1122,r13		! source line 1122
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0AS",r10
	mov	1123,r13		! source line 1123
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0AS",r10
!   _temp_1235 = frameAddr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1235 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0SE",r10
!   _temp_1236 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1231:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1229
! END FOR
_Label_1232:
! ASSIGNMENT STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   _temp_1237 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1238 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1237  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_1239 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1240
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1241
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1242
	.word	12
	.word	4
	.word	_Label_1243
	.word	-12
	.word	4
	.word	_Label_1244
	.word	-16
	.word	4
	.word	_Label_1245
	.word	-20
	.word	4
	.word	_Label_1246
	.word	-24
	.word	4
	.word	_Label_1247
	.word	-28
	.word	4
	.word	_Label_1248
	.word	-32
	.word	4
	.word	_Label_1249
	.word	-36
	.word	4
	.word	_Label_1250
	.word	-40
	.word	4
	.word	_Label_1251
	.word	-44
	.word	4
	.word	_Label_1252
	.word	-48
	.word	4
	.word	_Label_1253
	.word	-52
	.word	4
	.word	_Label_1254
	.word	-56
	.word	4
	.word	_Label_1255
	.word	-60
	.word	4
	.word	0
_Label_1240:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1241:
	.ascii	"Pself\0"
	.align
_Label_1242:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1252:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1253:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1254:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1255:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1256
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1256:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1257
	.word	_sourceFileName
	.word	274		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1257:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1784:
	push	r0
	sub	r1,1,r1
	bne	_Label_1784
	mov	1142,r13		! source line 1142
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1147,r13		! source line 1147
	mov	"\0\0AS",r10
!   _temp_1258 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1260 = &_temp_1259
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1260 = _temp_1260 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1262:
!   Data Move: *_temp_1260 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1260 = _temp_1260 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1261 = _temp_1261 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1261) then goto _Label_1262
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1262
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1263 = &_temp_1259
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1785
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1785:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1258 = *_temp_1263  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1786:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1786
! RETURN STATEMENT...
	mov	1147,r13		! source line 1147
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1264
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1265
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1266
	.word	-12
	.word	4
	.word	_Label_1267
	.word	-16
	.word	4
	.word	_Label_1268
	.word	-20
	.word	4
	.word	_Label_1269
	.word	-104
	.word	84
	.word	_Label_1270
	.word	-108
	.word	4
	.word	0
_Label_1264:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1265:
	.ascii	"Pself\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1787:
	push	r0
	sub	r1,1,r1
	bne	_Label_1787
	mov	1152,r13		! source line 1152
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1271 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1271  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1157,r13		! source line 1157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1272 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1272  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1277 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1278 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1277  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1273:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1278 then goto _Label_1276		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1276
_Label_1274:
	mov	1159,r13		! source line 1159
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1279 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1279  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1281 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1281 [i ] into _temp_1282
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1280 = _temp_1282		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1283 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1283  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1285 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1285 [i ] into _temp_1286
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1284 = *_temp_1286  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1284  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1163,r13		! source line 1163
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1287 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1287  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1288 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1288  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1289 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1291) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1290  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1167,r13		! source line 1167
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1292 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0IF",r10
	mov	1169,r13		! source line 1169
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1296) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1295  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1295) then goto _Label_1294
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1294
!	jmp	_Label_1293
_Label_1293:
! THEN...
	mov	1170,r13		! source line 1170
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1298) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1297  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1299
_Label_1294:
! ELSE...
	mov	1172,r13		! source line 1172
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1300 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1299:
! CALL STATEMENT...
!   _temp_1301 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1301  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0IF",r10
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1304) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1302 else goto _Label_1303
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1303
	jmp	_Label_1302
_Label_1302:
! THEN...
	mov	1176,r13		! source line 1176
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1305 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1306
_Label_1303:
! ELSE...
	mov	1178,r13		! source line 1178
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1307 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1178,r13		! source line 1178
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1306:
! CALL STATEMENT...
!   _temp_1308 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0IF",r10
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1311) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1309 else goto _Label_1310
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1310
	jmp	_Label_1309
_Label_1309:
! THEN...
	mov	1182,r13		! source line 1182
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1312 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1313
_Label_1310:
! ELSE...
	mov	1184,r13		! source line 1184
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1314 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1184,r13		! source line 1184
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1313:
! CALL STATEMENT...
!   _temp_1315 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0IF",r10
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1318) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1316 else goto _Label_1317
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1317
	jmp	_Label_1316
_Label_1316:
! THEN...
	mov	1188,r13		! source line 1188
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1319 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1319  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1320
_Label_1317:
! ELSE...
	mov	1190,r13		! source line 1190
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1321 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1321  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1190,r13		! source line 1190
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1320:
! CALL STATEMENT...
!   _temp_1322 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1322  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0IF",r10
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1325) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1323 else goto _Label_1324
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1324
	jmp	_Label_1323
_Label_1323:
! THEN...
	mov	1194,r13		! source line 1194
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1326 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1326  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1194,r13		! source line 1194
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1327
_Label_1324:
! ELSE...
	mov	1196,r13		! source line 1196
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1328 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1328  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1327:
! CALL STATEMENT...
!   Call the function
	mov	1198,r13		! source line 1198
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1275:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1273
! END FOR
_Label_1276:
! RETURN STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1329
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1330
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1331
	.word	-12
	.word	4
	.word	_Label_1332
	.word	-16
	.word	4
	.word	_Label_1333
	.word	-20
	.word	4
	.word	_Label_1334
	.word	-24
	.word	4
	.word	_Label_1335
	.word	-28
	.word	4
	.word	_Label_1336
	.word	-32
	.word	4
	.word	_Label_1337
	.word	-36
	.word	4
	.word	_Label_1338
	.word	-40
	.word	4
	.word	_Label_1339
	.word	-44
	.word	4
	.word	_Label_1340
	.word	-48
	.word	4
	.word	_Label_1341
	.word	-52
	.word	4
	.word	_Label_1342
	.word	-56
	.word	4
	.word	_Label_1343
	.word	-60
	.word	4
	.word	_Label_1344
	.word	-64
	.word	4
	.word	_Label_1345
	.word	-68
	.word	4
	.word	_Label_1346
	.word	-72
	.word	4
	.word	_Label_1347
	.word	-76
	.word	4
	.word	_Label_1348
	.word	-80
	.word	4
	.word	_Label_1349
	.word	-84
	.word	4
	.word	_Label_1350
	.word	-88
	.word	4
	.word	_Label_1351
	.word	-92
	.word	4
	.word	_Label_1352
	.word	-96
	.word	4
	.word	_Label_1353
	.word	-100
	.word	4
	.word	_Label_1354
	.word	-104
	.word	4
	.word	_Label_1355
	.word	-108
	.word	4
	.word	_Label_1356
	.word	-112
	.word	4
	.word	_Label_1357
	.word	-116
	.word	4
	.word	_Label_1358
	.word	-120
	.word	4
	.word	_Label_1359
	.word	-124
	.word	4
	.word	_Label_1360
	.word	-128
	.word	4
	.word	_Label_1361
	.word	-132
	.word	4
	.word	_Label_1362
	.word	-136
	.word	4
	.word	_Label_1363
	.word	-140
	.word	4
	.word	_Label_1364
	.word	-144
	.word	4
	.word	_Label_1365
	.word	-148
	.word	4
	.word	_Label_1366
	.word	-152
	.word	4
	.word	_Label_1367
	.word	-156
	.word	4
	.word	_Label_1368
	.word	-160
	.word	4
	.word	_Label_1369
	.word	-164
	.word	4
	.word	_Label_1370
	.word	-168
	.word	4
	.word	0
_Label_1329:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1330:
	.ascii	"Pself\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1370:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1788:
	push	r0
	sub	r1,1,r1
	bne	_Label_1788
	mov	1204,r13		! source line 1204
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0RE",r10
!   _temp_1373 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1373 [entry ] into _temp_1374
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1372 = *_temp_1374  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1371 = _temp_1372 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1371  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1375
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1376
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1377
	.word	12
	.word	4
	.word	_Label_1378
	.word	-12
	.word	4
	.word	_Label_1379
	.word	-16
	.word	4
	.word	_Label_1380
	.word	-20
	.word	4
	.word	_Label_1381
	.word	-24
	.word	4
	.word	0
_Label_1375:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1376:
	.ascii	"Pself\0"
	.align
_Label_1377:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1789:
	push	r0
	sub	r1,1,r1
	bne	_Label_1789
	mov	1214,r13		! source line 1214
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0RE",r10
!   _temp_1384 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1384 [entry ] into _temp_1385
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1383 = *_temp_1385  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1382 = _temp_1383 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1382  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1386
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1387
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1388
	.word	12
	.word	4
	.word	_Label_1389
	.word	-12
	.word	4
	.word	_Label_1390
	.word	-16
	.word	4
	.word	_Label_1391
	.word	-20
	.word	4
	.word	_Label_1392
	.word	-24
	.word	4
	.word	0
_Label_1386:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1387:
	.ascii	"Pself\0"
	.align
_Label_1388:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1790:
	push	r0
	sub	r1,1,r1
	bne	_Label_1790
	mov	1223,r13		! source line 1223
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0AS",r10
!   _temp_1393 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1393 [entry ] into _temp_1394
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1398 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1398 [entry ] into _temp_1399
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1397 = *_temp_1399  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1396 = _temp_1397 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1395 = _temp_1396 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1394 = _temp_1395  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1400
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1401
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1402
	.word	12
	.word	4
	.word	_Label_1403
	.word	16
	.word	4
	.word	_Label_1404
	.word	-12
	.word	4
	.word	_Label_1405
	.word	-16
	.word	4
	.word	_Label_1406
	.word	-20
	.word	4
	.word	_Label_1407
	.word	-24
	.word	4
	.word	_Label_1408
	.word	-28
	.word	4
	.word	_Label_1409
	.word	-32
	.word	4
	.word	_Label_1410
	.word	-36
	.word	4
	.word	0
_Label_1400:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1401:
	.ascii	"Pself\0"
	.align
_Label_1402:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1403:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1791:
	push	r0
	sub	r1,1,r1
	bne	_Label_1791
	mov	1233,r13		! source line 1233
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0RE",r10
!   _temp_1414 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1414 [entry ] into _temp_1415
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1413 = *_temp_1415  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1412 = _temp_1413 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1412) then goto _Label_1416
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1416
!   _temp_1411 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1417
_Label_1416:
!   _temp_1411 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1417:
!   ReturnResult: _temp_1411  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1418
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1419
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1420
	.word	12
	.word	4
	.word	_Label_1421
	.word	-16
	.word	4
	.word	_Label_1422
	.word	-20
	.word	4
	.word	_Label_1423
	.word	-24
	.word	4
	.word	_Label_1424
	.word	-28
	.word	4
	.word	_Label_1425
	.word	-9
	.word	1
	.word	0
_Label_1418:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1419:
	.ascii	"Pself\0"
	.align
_Label_1420:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1425:
	.byte	'C'
	.ascii	"_temp_1411\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1792:
	push	r0
	sub	r1,1,r1
	bne	_Label_1792
	mov	1242,r13		! source line 1242
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0RE",r10
!   _temp_1429 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1429 [entry ] into _temp_1430
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1428 = *_temp_1430  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1427 = _temp_1428 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1427) then goto _Label_1431
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1431
!   _temp_1426 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1432
_Label_1431:
!   _temp_1426 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1432:
!   ReturnResult: _temp_1426  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1433
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1434
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1435
	.word	12
	.word	4
	.word	_Label_1436
	.word	-16
	.word	4
	.word	_Label_1437
	.word	-20
	.word	4
	.word	_Label_1438
	.word	-24
	.word	4
	.word	_Label_1439
	.word	-28
	.word	4
	.word	_Label_1440
	.word	-9
	.word	1
	.word	0
_Label_1433:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1434:
	.ascii	"Pself\0"
	.align
_Label_1435:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1440:
	.byte	'C'
	.ascii	"_temp_1426\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1793:
	push	r0
	sub	r1,1,r1
	bne	_Label_1793
	mov	1251,r13		! source line 1251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0RE",r10
!   _temp_1444 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1444 [entry ] into _temp_1445
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1443 = *_temp_1445  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1442 = _temp_1443 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1442) then goto _Label_1446
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1446
!   _temp_1441 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1447
_Label_1446:
!   _temp_1441 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1447:
!   ReturnResult: _temp_1441  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1448
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1450
	.word	12
	.word	4
	.word	_Label_1451
	.word	-16
	.word	4
	.word	_Label_1452
	.word	-20
	.word	4
	.word	_Label_1453
	.word	-24
	.word	4
	.word	_Label_1454
	.word	-28
	.word	4
	.word	_Label_1455
	.word	-9
	.word	1
	.word	0
_Label_1448:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1449:
	.ascii	"Pself\0"
	.align
_Label_1450:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1455:
	.byte	'C'
	.ascii	"_temp_1441\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1794:
	push	r0
	sub	r1,1,r1
	bne	_Label_1794
	mov	1260,r13		! source line 1260
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0RE",r10
!   _temp_1459 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1459 [entry ] into _temp_1460
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1458 = *_temp_1460  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1457 = _temp_1458 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1457) then goto _Label_1461
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1461
!   _temp_1456 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1462
_Label_1461:
!   _temp_1456 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1462:
!   ReturnResult: _temp_1456  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1463
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1464
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1465
	.word	12
	.word	4
	.word	_Label_1466
	.word	-16
	.word	4
	.word	_Label_1467
	.word	-20
	.word	4
	.word	_Label_1468
	.word	-24
	.word	4
	.word	_Label_1469
	.word	-28
	.word	4
	.word	_Label_1470
	.word	-9
	.word	1
	.word	0
_Label_1463:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1464:
	.ascii	"Pself\0"
	.align
_Label_1465:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1470:
	.byte	'C'
	.ascii	"_temp_1456\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1795:
	push	r0
	sub	r1,1,r1
	bne	_Label_1795
	mov	1269,r13		! source line 1269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0AS",r10
!   _temp_1471 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1471 [entry ] into _temp_1472
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1475 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1475 [entry ] into _temp_1476
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1474 = *_temp_1476  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1473 = _temp_1474 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1472 = _temp_1473  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1477
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1478
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1479
	.word	12
	.word	4
	.word	_Label_1480
	.word	-12
	.word	4
	.word	_Label_1481
	.word	-16
	.word	4
	.word	_Label_1482
	.word	-20
	.word	4
	.word	_Label_1483
	.word	-24
	.word	4
	.word	_Label_1484
	.word	-28
	.word	4
	.word	_Label_1485
	.word	-32
	.word	4
	.word	0
_Label_1477:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1478:
	.ascii	"Pself\0"
	.align
_Label_1479:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1796:
	push	r0
	sub	r1,1,r1
	bne	_Label_1796
	mov	1278,r13		! source line 1278
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0AS",r10
!   _temp_1486 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1486 [entry ] into _temp_1487
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1490 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1490 [entry ] into _temp_1491
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1489 = *_temp_1491  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1488 = _temp_1489 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1487 = _temp_1488  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1492
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1493
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1494
	.word	12
	.word	4
	.word	_Label_1495
	.word	-12
	.word	4
	.word	_Label_1496
	.word	-16
	.word	4
	.word	_Label_1497
	.word	-20
	.word	4
	.word	_Label_1498
	.word	-24
	.word	4
	.word	_Label_1499
	.word	-28
	.word	4
	.word	_Label_1500
	.word	-32
	.word	4
	.word	0
_Label_1492:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1493:
	.ascii	"Pself\0"
	.align
_Label_1494:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1797:
	push	r0
	sub	r1,1,r1
	bne	_Label_1797
	mov	1287,r13		! source line 1287
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0AS",r10
!   _temp_1501 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1501 [entry ] into _temp_1502
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1505 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1505 [entry ] into _temp_1506
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1504 = *_temp_1506  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1503 = _temp_1504 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1502 = _temp_1503  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1507
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1508
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1509
	.word	12
	.word	4
	.word	_Label_1510
	.word	-12
	.word	4
	.word	_Label_1511
	.word	-16
	.word	4
	.word	_Label_1512
	.word	-20
	.word	4
	.word	_Label_1513
	.word	-24
	.word	4
	.word	_Label_1514
	.word	-28
	.word	4
	.word	_Label_1515
	.word	-32
	.word	4
	.word	0
_Label_1507:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1508:
	.ascii	"Pself\0"
	.align
_Label_1509:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1798:
	push	r0
	sub	r1,1,r1
	bne	_Label_1798
	mov	1296,r13		! source line 1296
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0AS",r10
!   _temp_1516 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1516 [entry ] into _temp_1517
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1520 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1520 [entry ] into _temp_1521
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1519 = *_temp_1521  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1518 = _temp_1519 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1517 = _temp_1518  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1522
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1523
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1524
	.word	12
	.word	4
	.word	_Label_1525
	.word	-12
	.word	4
	.word	_Label_1526
	.word	-16
	.word	4
	.word	_Label_1527
	.word	-20
	.word	4
	.word	_Label_1528
	.word	-24
	.word	4
	.word	_Label_1529
	.word	-28
	.word	4
	.word	_Label_1530
	.word	-32
	.word	4
	.word	0
_Label_1522:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1523:
	.ascii	"Pself\0"
	.align
_Label_1524:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1799:
	push	r0
	sub	r1,1,r1
	bne	_Label_1799
	mov	1305,r13		! source line 1305
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0AS",r10
!   _temp_1531 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1531 [entry ] into _temp_1532
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1535 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1535 [entry ] into _temp_1536
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1534 = *_temp_1536  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1533 = _temp_1534 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1532 = _temp_1533  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1537
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1539
	.word	12
	.word	4
	.word	_Label_1540
	.word	-12
	.word	4
	.word	_Label_1541
	.word	-16
	.word	4
	.word	_Label_1542
	.word	-20
	.word	4
	.word	_Label_1543
	.word	-24
	.word	4
	.word	_Label_1544
	.word	-28
	.word	4
	.word	_Label_1545
	.word	-32
	.word	4
	.word	0
_Label_1537:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1538:
	.ascii	"Pself\0"
	.align
_Label_1539:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1800:
	push	r0
	sub	r1,1,r1
	bne	_Label_1800
	mov	1314,r13		! source line 1314
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
!   _temp_1546 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1546 [entry ] into _temp_1547
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1550 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1550 [entry ] into _temp_1551
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1549 = *_temp_1551  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1548 = _temp_1549 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1547 = _temp_1548  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1552
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1554
	.word	12
	.word	4
	.word	_Label_1555
	.word	-12
	.word	4
	.word	_Label_1556
	.word	-16
	.word	4
	.word	_Label_1557
	.word	-20
	.word	4
	.word	_Label_1558
	.word	-24
	.word	4
	.word	_Label_1559
	.word	-28
	.word	4
	.word	_Label_1560
	.word	-32
	.word	4
	.word	0
_Label_1552:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1553:
	.ascii	"Pself\0"
	.align
_Label_1554:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1801:
	push	r0
	sub	r1,1,r1
	bne	_Label_1801
	mov	1323,r13		! source line 1323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0AS",r10
!   _temp_1561 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1561 [entry ] into _temp_1562
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1565 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1565 [entry ] into _temp_1566
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1564 = *_temp_1566  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1563 = _temp_1564 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1562 = _temp_1563  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1567
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1568
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1569
	.word	12
	.word	4
	.word	_Label_1570
	.word	-12
	.word	4
	.word	_Label_1571
	.word	-16
	.word	4
	.word	_Label_1572
	.word	-20
	.word	4
	.word	_Label_1573
	.word	-24
	.word	4
	.word	_Label_1574
	.word	-28
	.word	4
	.word	_Label_1575
	.word	-32
	.word	4
	.word	0
_Label_1567:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1568:
	.ascii	"Pself\0"
	.align
_Label_1569:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1802:
	push	r0
	sub	r1,1,r1
	bne	_Label_1802
	mov	1332,r13		! source line 1332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0AS",r10
!   _temp_1576 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1576 [entry ] into _temp_1577
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1580 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1580 [entry ] into _temp_1581
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1579 = *_temp_1581  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1578 = _temp_1579 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1577 = _temp_1578  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1582
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1583
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1584
	.word	12
	.word	4
	.word	_Label_1585
	.word	-12
	.word	4
	.word	_Label_1586
	.word	-16
	.word	4
	.word	_Label_1587
	.word	-20
	.word	4
	.word	_Label_1588
	.word	-24
	.word	4
	.word	_Label_1589
	.word	-28
	.word	4
	.word	_Label_1590
	.word	-32
	.word	4
	.word	0
_Label_1582:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1583:
	.ascii	"Pself\0"
	.align
_Label_1584:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1803:
	push	r0
	sub	r1,1,r1
	bne	_Label_1803
	mov	1341,r13		! source line 1341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1592 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1592 [0 ] into _temp_1593
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1591 = _temp_1593		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1594 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1591  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1594  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1347,r13		! source line 1347
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1595
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1596
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1597
	.word	-12
	.word	4
	.word	_Label_1598
	.word	-16
	.word	4
	.word	_Label_1599
	.word	-20
	.word	4
	.word	_Label_1600
	.word	-24
	.word	4
	.word	0
_Label_1595:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1596:
	.ascii	"Pself\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1804:
	push	r0
	sub	r1,1,r1
	bne	_Label_1804
	mov	1352,r13		! source line 1352
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1601
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1601
	jmp	_Label_1602
_Label_1601:
! THEN...
	mov	1368,r13		! source line 1368
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1603
_Label_1602:
! ELSE...
	mov	1369,r13		! source line 1369
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1605		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1605
!	jmp	_Label_1604
_Label_1604:
! THEN...
	mov	1370,r13		! source line 1370
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1605:
! END IF...
_Label_1603:
! ASSIGNMENT STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0WH",r10
_Label_1606:
!	jmp	_Label_1607
_Label_1607:
	mov	1376,r13		! source line 1376
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1610		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1610
!	jmp	_Label_1609
_Label_1609:
! THEN...
	mov	1378,r13		! source line 1378
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1611 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1611  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1378,r13		! source line 1378
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1610:
! IF STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0IF",r10
	mov	1381,r13		! source line 1381
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1615) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1614  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1614 then goto _Label_1613 else goto _Label_1612
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1612
	jmp	_Label_1613
_Label_1612:
! THEN...
	mov	1382,r13		! source line 1382
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1616 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1616  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1382,r13		! source line 1382
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1613:
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
	mov	1385,r13		! source line 1385
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1618) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1617  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1617 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0WH",r10
_Label_1619:
!   if offset >= 8192 then goto _Label_1621		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1621
!	jmp	_Label_1620
_Label_1620:
	mov	1387,r13		! source line 1387
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1622 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1622  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1624		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1624
!	jmp	_Label_1623
_Label_1623:
! THEN...
	mov	1396,r13		! source line 1396
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1624:
! END WHILE...
	jmp	_Label_1619
_Label_1621:
! ASSIGNMENT STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1606
_Label_1608:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1625
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1626
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1627
	.word	12
	.word	4
	.word	_Label_1628
	.word	16
	.word	4
	.word	_Label_1629
	.word	20
	.word	4
	.word	_Label_1630
	.word	-9
	.word	1
	.word	_Label_1631
	.word	-16
	.word	4
	.word	_Label_1632
	.word	-20
	.word	4
	.word	_Label_1633
	.word	-24
	.word	4
	.word	_Label_1634
	.word	-28
	.word	4
	.word	_Label_1635
	.word	-10
	.word	1
	.word	_Label_1636
	.word	-32
	.word	4
	.word	_Label_1637
	.word	-36
	.word	4
	.word	_Label_1638
	.word	-40
	.word	4
	.word	_Label_1639
	.word	-44
	.word	4
	.word	_Label_1640
	.word	-48
	.word	4
	.word	0
_Label_1625:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1626:
	.ascii	"Pself\0"
	.align
_Label_1627:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1628:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1629:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1630:
	.byte	'C'
	.ascii	"_temp_1622\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1635:
	.byte	'C'
	.ascii	"_temp_1614\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1637:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1638:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1639:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1640:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1805:
	push	r0
	sub	r1,1,r1
	bne	_Label_1805
	mov	1406,r13		! source line 1406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1641
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1641
	jmp	_Label_1642
_Label_1641:
! THEN...
	mov	1418,r13		! source line 1418
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1643
_Label_1642:
! ELSE...
	mov	1419,r13		! source line 1419
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1645		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1645
!	jmp	_Label_1644
_Label_1644:
! THEN...
	mov	1420,r13		! source line 1420
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1645:
! END IF...
_Label_1643:
! ASSIGNMENT STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0WH",r10
_Label_1646:
!	jmp	_Label_1647
_Label_1647:
	mov	1424,r13		! source line 1424
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1652		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1652
	jmp	_Label_1649
_Label_1652:
	mov	1426,r13		! source line 1426
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1654) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1653  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1653 then goto _Label_1651 else goto _Label_1649
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1649
	jmp	_Label_1651
_Label_1651:
	mov	1427,r13		! source line 1427
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1656) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1655  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1655 then goto _Label_1650 else goto _Label_1649
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1649
	jmp	_Label_1650
_Label_1649:
! THEN...
	mov	1428,r13		! source line 1428
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1650:
! ASSIGNMENT STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0AS",r10
	mov	1430,r13		! source line 1430
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1658) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1657  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1657 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0WH",r10
_Label_1659:
!   if offset >= 8192 then goto _Label_1661		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1661
!	jmp	_Label_1660
_Label_1660:
	mov	1431,r13		! source line 1431
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1662 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1662  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1664		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1664
!	jmp	_Label_1663
_Label_1663:
! THEN...
	mov	1438,r13		! source line 1438
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1664:
! END WHILE...
	jmp	_Label_1659
_Label_1661:
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1646
_Label_1648:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1665
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1666
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1667
	.word	12
	.word	4
	.word	_Label_1668
	.word	16
	.word	4
	.word	_Label_1669
	.word	20
	.word	4
	.word	_Label_1670
	.word	-9
	.word	1
	.word	_Label_1671
	.word	-16
	.word	4
	.word	_Label_1672
	.word	-20
	.word	4
	.word	_Label_1673
	.word	-24
	.word	4
	.word	_Label_1674
	.word	-10
	.word	1
	.word	_Label_1675
	.word	-28
	.word	4
	.word	_Label_1676
	.word	-11
	.word	1
	.word	_Label_1677
	.word	-32
	.word	4
	.word	_Label_1678
	.word	-36
	.word	4
	.word	_Label_1679
	.word	-40
	.word	4
	.word	_Label_1680
	.word	-44
	.word	4
	.word	0
_Label_1665:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1666:
	.ascii	"Pself\0"
	.align
_Label_1667:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1668:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1669:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1670:
	.byte	'C'
	.ascii	"_temp_1662\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1674:
	.byte	'C'
	.ascii	"_temp_1655\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1676:
	.byte	'C'
	.ascii	"_temp_1653\0"
	.align
_Label_1677:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1678:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1679:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1680:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1806:
	push	r0
	sub	r1,1,r1
	bne	_Label_1806
	mov	1448,r13		! source line 1448
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0IF",r10
	mov	1472,r13		! source line 1472
	mov	"\0\0SE",r10
!   _temp_1684 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1685) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1684  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1683  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1683 >= 4 then goto _Label_1682		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1682
!	jmp	_Label_1681
_Label_1681:
! THEN...
	mov	1475,r13		! source line 1475
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1682:
! IF STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1687		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1687
!	jmp	_Label_1686
_Label_1686:
! THEN...
	mov	1480,r13		! source line 1480
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1687:
! ASSIGNMENT STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
	mov	1485,r13		! source line 1485
	mov	"\0\0SE",r10
!   _temp_1690 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1689 = _temp_1690 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1691 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1692) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1689  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1691  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1688  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1688  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1693
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1694
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1695
	.word	12
	.word	4
	.word	_Label_1696
	.word	16
	.word	4
	.word	_Label_1697
	.word	20
	.word	4
	.word	_Label_1698
	.word	-12
	.word	4
	.word	_Label_1699
	.word	-16
	.word	4
	.word	_Label_1700
	.word	-20
	.word	4
	.word	_Label_1701
	.word	-24
	.word	4
	.word	_Label_1702
	.word	-28
	.word	4
	.word	_Label_1703
	.word	-32
	.word	4
	.word	_Label_1704
	.word	-36
	.word	4
	.word	_Label_1705
	.word	-40
	.word	4
	.word	_Label_1706
	.word	-44
	.word	4
	.word	0
_Label_1693:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1694:
	.ascii	"Pself\0"
	.align
_Label_1695:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1696:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1697:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1706:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
