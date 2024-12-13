! Name of package being compiled: Main
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
	.import	_P_Kernel_TimerInterruptHandler
	.import	_P_Kernel_DiskInterruptHandler
	.import	_P_Kernel_SerialInterruptHandler
	.import	_P_Kernel_IllegalInstructionHandler
	.import	_P_Kernel_ArithmeticExceptionHandler
	.import	_P_Kernel_AddressExceptionHandler
	.import	_P_Kernel_PageInvalidExceptionHandler
	.import	_P_Kernel_PageReadonlyExceptionHandler
	.import	_P_Kernel_PrivilegedInstructionHandler
	.import	_P_Kernel_AlignmentExceptionHandler
	.import	_P_Kernel_SyscallTrapHandler
	.import	_P_Kernel_Handle_Sys_Fork
	.import	_P_Kernel_Handle_Sys_Yield
	.import	_P_Kernel_Handle_Sys_Exec
	.import	_P_Kernel_Handle_Sys_Join
	.import	_P_Kernel_Handle_Sys_Exit
	.import	_P_Kernel_Handle_Sys_Create
	.import	_P_Kernel_Handle_Sys_Open
	.import	_P_Kernel_Handle_Sys_Read
	.import	_P_Kernel_Handle_Sys_Write
	.import	_P_Kernel_Handle_Sys_Seek
	.import	_P_Kernel_Handle_Sys_Close
	.import	_P_Kernel_Handle_Sys_Shutdown
	.import	_P_Kernel_InitializeScheduler
	.import	_P_Kernel_Run
	.import	_P_Kernel_PrintReadyList
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
	.import	_P_Kernel_FatalError_ThreadVersion
	.import	_P_Kernel_SetInterruptsTo
	.import	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Kernel_Semaphore
! The following class and its methods are from other packages
	.import	_P_Kernel_Mutex
! The following class and its methods are from other packages
	.import	_P_Kernel_Condition
! The following class and its methods are from other packages
	.import	_P_Kernel_Thread
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FrameManager
! The following class and its methods are from other packages
	.import	_P_Kernel_AddrSpace
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
	.import	_P_Kernel_readyList
	.import	_P_Kernel_currentThread
	.import	_P_Kernel_mainThread
	.import	_P_Kernel_idleThread
	.import	_P_Kernel_threadsToBeDestroyed
	.import	_P_Kernel_currentInterruptStatus
	.import	_P_Kernel_processManager
	.import	_P_Kernel_threadManager
	.import	_P_Kernel_frameManager
! Global variables in this package
	.data
_Global_uniqueNumberLock:
! Static object
	.word	_P_Kernel_Mutex
	.word	0
	.word	0
	.word	0
	.word	0
_Global_nextUnique:
	.word	0x00000001		! decimal value = 1
_Global_allDone:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_freeze:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_allDone2:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_frameCount:
! Static array
	.word	27		! number of elements
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
	.align
! String constants
_StringConst_21:
	.word	49			! length
	.ascii	"Data corruption, indicating that frame was shared"
	.align
_StringConst_20:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_19:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_18:
	.word	43			! length
	.ascii	"Problems with bits in some page table entry"
	.align
_StringConst_17:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_16:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_15:
	.word	57			! length
	.ascii	"\n\n***** FRAME-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_14:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_13:
	.word	58			! length
	.ascii	"\n\nThe following shows how many times each frame was used:\n"
	.align
_StringConst_12:
	.word	16			! length
	.ascii	"TestFrameManager"
	.align
_StringConst_11:
	.word	36			! length
	.ascii	"\n\n*****  FRAME-MANAGER TEST  *****\n\n"
	.align
_StringConst_10:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_9:
	.word	59			! length
	.ascii	"\n\n***** PROCESS-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_8:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_7:
	.word	18			! length
	.ascii	"TestProcessManager"
	.align
_StringConst_6:
	.word	38			! length
	.ascii	"\n\n*****  PROCESS-MANAGER TEST  *****\n\n"
	.align
_StringConst_5:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_4:
	.word	58			! length
	.ascii	"\n\n***** THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_3:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_2:
	.word	17			! length
	.ascii	"TestThreadManager"
	.align
_StringConst_1:
	.word	37			! length
	.ascii	"\n\n*****  THREAD-MANAGER TEST  *****\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xeb2db4a8,r3		! .  hashVal = -349326168
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_31		! .
	ret				! .
_Label_31:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
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
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xeb2db4a8,r4		! myHashVal = -349326168
	cmp	r3,r4
	be	_Label_32
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
_Label_32:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_33
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_33
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_33
! Make sure _P_Kernel_ has hash value 0x89d6f9cb (decimal -1982400053)
	set	_packageName,r2
	set	0x89d6f9cb,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_33
_Label_33:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	8,r1
_Label_470:
	push	r0
	sub	r1,1,r1
	bne	_Label_470
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_34 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	20,r13		! source line 20
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1316)
	set	_P_Kernel_processManager,r4
	mov	329,r3
_Label_471:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_471
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_36 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
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
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41696)
	set	_P_Kernel_threadManager,r4
	mov	10424,r3
_Label_472:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_472
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_38 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
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
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_frameManager = zeros  (sizeInBytes=56)
	set	_P_Kernel_frameManager,r4
	mov	14,r3
_Label_473:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_473
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_40 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CA",r10
	call	_function_29_RunThreadManagerTests
! CALL STATEMENT...
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CA",r10
	call	_function_27_RunProcessManagerTests
! CALL STATEMENT...
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_function_25_RunFrameManagerTests
! CALL STATEMENT...
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_41
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_42
	.word	-12
	.word	4
	.word	_Label_43
	.word	-16
	.word	4
	.word	_Label_44
	.word	-20
	.word	4
	.word	_Label_45
	.word	-24
	.word	4
	.word	_Label_46
	.word	-28
	.word	4
	.word	_Label_47
	.word	-32
	.word	4
	.word	_Label_48
	.word	-36
	.word	4
	.word	0
_Label_41:
	.ascii	"main\0"
	.align
_Label_42:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_43:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_44:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_45:
	.byte	'?'
	.ascii	"_temp_37\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_48:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
! 
! ===============  FUNCTION GetUniqueNumber  ===============
! 
_function_30_GetUniqueNumber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_30_GetUniqueNumber,r1
	push	r1
	mov	4,r1
_Label_474:
	push	r0
	sub	r1,1,r1
	bne	_Label_474
	mov	132,r13		! source line 132
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_49 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-16]
!   Send message Lock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
!   i = _Global_nextUnique		(4 bytes)
	set	_Global_nextUnique,r1
	load	[r1],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0AS",r10
!   _Global_nextUnique = _Global_nextUnique + count		(int)
	set	_Global_nextUnique,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextUnique,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0SE",r10
!   _temp_50 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
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
	mov	138,r13		! source line 138
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_30_GetUniqueNumber:
	.word	_sourceFileName
	.word	_Label_51
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_52
	.word	8
	.word	4
	.word	_Label_53
	.word	-12
	.word	4
	.word	_Label_54
	.word	-16
	.word	4
	.word	_Label_55
	.word	-20
	.word	4
	.word	0
_Label_51:
	.ascii	"GetUniqueNumber\0"
	.align
_Label_52:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_55:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerTests  ===============
! 
_function_29_RunThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_29_RunThreadManagerTests,r1
	push	r1
	mov	21,r1
_Label_475:
	push	r0
	sub	r1,1,r1
	bne	_Label_475
	mov	169,r13		! source line 169
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0SE",r10
!   _temp_56 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0SE",r10
!   _temp_57 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_58 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_59 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_59  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_64 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_65 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_64  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_60:
!   Perform the FOR-LOOP termination test
!   if i > _temp_65 then goto _Label_63		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_63
_Label_61:
	mov	180,r13		! source line 180
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_66)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_476:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_476
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0SE",r10
!   _temp_68 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_68  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_69 = _function_28_TestThreadManager
	set	_function_28_TestThreadManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_69  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_62:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_60
! END FOR
_Label_63:
! FOR STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_74 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_75 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_74  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_70:
!   Perform the FOR-LOOP termination test
!   if i > _temp_75 then goto _Label_73		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_73
_Label_71:
	mov	188,r13		! source line 188
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0SE",r10
!   _temp_76 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_72:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_70
! END FOR
_Label_73:
! IF STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CA",r10
	call	_function_30_GetUniqueNumber
!   Retrieve Result: targetName=_temp_79  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_79 == 401 then goto _Label_78		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_78
!	jmp	_Label_77
_Label_77:
! THEN...
	mov	193,r13		! source line 193
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_80 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_80  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	193,r13		! source line 193
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_78:
! CALL STATEMENT...
!   _temp_81 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_81  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_29_RunThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_82
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_83
	.word	-12
	.word	4
	.word	_Label_84
	.word	-16
	.word	4
	.word	_Label_85
	.word	-20
	.word	4
	.word	_Label_86
	.word	-24
	.word	4
	.word	_Label_87
	.word	-28
	.word	4
	.word	_Label_88
	.word	-32
	.word	4
	.word	_Label_89
	.word	-36
	.word	4
	.word	_Label_90
	.word	-40
	.word	4
	.word	_Label_91
	.word	-44
	.word	4
	.word	_Label_92
	.word	-48
	.word	4
	.word	_Label_93
	.word	-52
	.word	4
	.word	_Label_94
	.word	-56
	.word	4
	.word	_Label_95
	.word	-60
	.word	4
	.word	_Label_96
	.word	-64
	.word	4
	.word	_Label_97
	.word	-68
	.word	4
	.word	_Label_98
	.word	-72
	.word	4
	.word	_Label_99
	.word	-76
	.word	4
	.word	_Label_100
	.word	-80
	.word	4
	.word	0
_Label_82:
	.ascii	"RunThreadManagerTests\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_99:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_100:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManager  ===============
! 
_function_28_TestThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_28_TestThreadManager,r1
	push	r1
	mov	22,r1
_Label_477:
	push	r0
	sub	r1,1,r1
	bne	_Label_477
	mov	207,r13		! source line 207
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=43  sizeInBytes=1
	mov	43,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	210,r13		! source line 210
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CE",r10
	call	printInt
! FOR STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_105 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_106 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_105  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_101:
!   Perform the FOR-LOOP termination test
!   if i > _temp_106 then goto _Label_104		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_104
_Label_102:
	mov	212,r13		! source line 212
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	215,r13		! source line 215
	mov	"\0\0CA",r10
	call	_function_30_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
!   _temp_107 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_108 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_108 [0 ] into _temp_109
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_109 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_114 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_115 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_114  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_110:
!   Perform the FOR-LOOP termination test
!   if j > _temp_115 then goto _Label_113		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_113
_Label_111:
	mov	218,r13		! source line 218
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	219,r13		! source line 219
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
!   Increment the FOR-LOOP index variable and jump back
_Label_112:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_110
! END FOR
_Label_113:
! IF STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_119 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_119 [0 ] into _temp_120
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_118 = *_temp_120  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_118 then goto _Label_117		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_117
!	jmp	_Label_116
_Label_116:
! THEN...
	mov	222,r13		! source line 222
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_121 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_121  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	222,r13		! source line 222
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_117:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=44  sizeInBytes=1
	mov	44,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0SE",r10
!   _temp_122 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_127 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_128 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_127  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_123:
!   Perform the FOR-LOOP termination test
!   if j > _temp_128 then goto _Label_126		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_126
_Label_124:
	mov	227,r13		! source line 227
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	228,r13		! source line 228
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
!   Increment the FOR-LOOP index variable and jump back
_Label_125:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_123
! END FOR
_Label_126:
!   Increment the FOR-LOOP index variable and jump back
_Label_103:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_101
! END FOR
_Label_104:
! SEND STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0SE",r10
!   _temp_129 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0SE",r10
!   _temp_130 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_28_TestThreadManager:
	.word	_sourceFileName
	.word	_Label_131
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_132
	.word	8
	.word	4
	.word	_Label_133
	.word	-12
	.word	4
	.word	_Label_134
	.word	-16
	.word	4
	.word	_Label_135
	.word	-20
	.word	4
	.word	_Label_136
	.word	-24
	.word	4
	.word	_Label_137
	.word	-28
	.word	4
	.word	_Label_138
	.word	-32
	.word	4
	.word	_Label_139
	.word	-36
	.word	4
	.word	_Label_140
	.word	-40
	.word	4
	.word	_Label_141
	.word	-44
	.word	4
	.word	_Label_142
	.word	-48
	.word	4
	.word	_Label_143
	.word	-52
	.word	4
	.word	_Label_144
	.word	-56
	.word	4
	.word	_Label_145
	.word	-60
	.word	4
	.word	_Label_146
	.word	-64
	.word	4
	.word	_Label_147
	.word	-68
	.word	4
	.word	_Label_148
	.word	-72
	.word	4
	.word	_Label_149
	.word	-76
	.word	4
	.word	_Label_150
	.word	-80
	.word	4
	.word	_Label_151
	.word	-84
	.word	4
	.word	_Label_152
	.word	-88
	.word	4
	.word	0
_Label_131:
	.ascii	"TestThreadManager\0"
	.align
_Label_132:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_149:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_150:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_151:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_152:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerTests  ===============
! 
_function_27_RunProcessManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_27_RunProcessManagerTests,r1
	push	r1
	mov	21,r1
_Label_478:
	push	r0
	sub	r1,1,r1
	bne	_Label_478
	mov	252,r13		! source line 252
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_153 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0SE",r10
!   _temp_154 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0SE",r10
!   _temp_155 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_156 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_156  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	261,r13		! source line 261
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_161 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_162 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_161  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_157:
!   Perform the FOR-LOOP termination test
!   if i > _temp_162 then goto _Label_160		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_160
_Label_158:
	mov	263,r13		! source line 263
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_163)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_479:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_479
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0SE",r10
!   _temp_165 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_165  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0SE",r10
!   _temp_166 = _function_26_TestProcessManager
	set	_function_26_TestProcessManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_166  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_159:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_157
! END FOR
_Label_160:
! FOR STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_171 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_172 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_171  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_167:
!   Perform the FOR-LOOP termination test
!   if i > _temp_172 then goto _Label_170		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_170
_Label_168:
	mov	271,r13		! source line 271
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   _temp_173 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_169:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_167
! END FOR
_Label_170:
! IF STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CA",r10
	call	_function_30_GetUniqueNumber
!   Retrieve Result: targetName=_temp_176  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_176 == 401 then goto _Label_175		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_175
!	jmp	_Label_174
_Label_174:
! THEN...
	mov	276,r13		! source line 276
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_177 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_177  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	276,r13		! source line 276
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_175:
! CALL STATEMENT...
!   _temp_178 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_178  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_27_RunProcessManagerTests:
	.word	_sourceFileName
	.word	_Label_179
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_180
	.word	-12
	.word	4
	.word	_Label_181
	.word	-16
	.word	4
	.word	_Label_182
	.word	-20
	.word	4
	.word	_Label_183
	.word	-24
	.word	4
	.word	_Label_184
	.word	-28
	.word	4
	.word	_Label_185
	.word	-32
	.word	4
	.word	_Label_186
	.word	-36
	.word	4
	.word	_Label_187
	.word	-40
	.word	4
	.word	_Label_188
	.word	-44
	.word	4
	.word	_Label_189
	.word	-48
	.word	4
	.word	_Label_190
	.word	-52
	.word	4
	.word	_Label_191
	.word	-56
	.word	4
	.word	_Label_192
	.word	-60
	.word	4
	.word	_Label_193
	.word	-64
	.word	4
	.word	_Label_194
	.word	-68
	.word	4
	.word	_Label_195
	.word	-72
	.word	4
	.word	_Label_196
	.word	-76
	.word	4
	.word	_Label_197
	.word	-80
	.word	4
	.word	0
_Label_179:
	.ascii	"RunProcessManagerTests\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_196:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_197:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManager  ===============
! 
_function_26_TestProcessManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_26_TestProcessManager,r1
	push	r1
	mov	20,r1
_Label_480:
	push	r0
	sub	r1,1,r1
	bne	_Label_480
	mov	291,r13		! source line 291
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=43  sizeInBytes=1
	mov	43,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CE",r10
	call	printInt
! FOR STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_202 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_203 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_202  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_198:
!   Perform the FOR-LOOP termination test
!   if i > _temp_203 then goto _Label_201		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_201
_Label_199:
	mov	296,r13		! source line 296
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	297,r13		! source line 297
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CA",r10
	call	_function_30_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_204 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   Send message GetANewProcess
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_205 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_205 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_210 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_211 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_210  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_206:
!   Perform the FOR-LOOP termination test
!   if j > _temp_211 then goto _Label_209		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_209
_Label_207:
	mov	302,r13		! source line 302
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	303,r13		! source line 303
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
!   Increment the FOR-LOOP index variable and jump back
_Label_208:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_206
! END FOR
_Label_209:
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_215 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_214 = *_temp_215  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_214 then goto _Label_213		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_213
!	jmp	_Label_212
_Label_212:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_216 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_216  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	306,r13		! source line 306
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_213:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=44  sizeInBytes=1
	mov	44,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	309,r13		! source line 309
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_217 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_222 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_223 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_222  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_218:
!   Perform the FOR-LOOP termination test
!   if j > _temp_223 then goto _Label_221		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_221
_Label_219:
	mov	311,r13		! source line 311
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
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
!   Increment the FOR-LOOP index variable and jump back
_Label_220:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_218
! END FOR
_Label_221:
!   Increment the FOR-LOOP index variable and jump back
_Label_200:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_198
! END FOR
_Label_201:
! SEND STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0SE",r10
!   _temp_224 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0SE",r10
!   _temp_225 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_26_TestProcessManager:
	.word	_sourceFileName
	.word	_Label_226
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_227
	.word	8
	.word	4
	.word	_Label_228
	.word	-12
	.word	4
	.word	_Label_229
	.word	-16
	.word	4
	.word	_Label_230
	.word	-20
	.word	4
	.word	_Label_231
	.word	-24
	.word	4
	.word	_Label_232
	.word	-28
	.word	4
	.word	_Label_233
	.word	-32
	.word	4
	.word	_Label_234
	.word	-36
	.word	4
	.word	_Label_235
	.word	-40
	.word	4
	.word	_Label_236
	.word	-44
	.word	4
	.word	_Label_237
	.word	-48
	.word	4
	.word	_Label_238
	.word	-52
	.word	4
	.word	_Label_239
	.word	-56
	.word	4
	.word	_Label_240
	.word	-60
	.word	4
	.word	_Label_241
	.word	-64
	.word	4
	.word	_Label_242
	.word	-68
	.word	4
	.word	_Label_243
	.word	-72
	.word	4
	.word	_Label_244
	.word	-76
	.word	4
	.word	_Label_245
	.word	-80
	.word	4
	.word	0
_Label_226:
	.ascii	"TestProcessManager\0"
	.align
_Label_227:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_243:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_244:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_245:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunFrameManagerTests  ===============
! 
_function_25_RunFrameManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_25_RunFrameManagerTests,r1
	push	r1
	mov	25,r1
_Label_481:
	push	r0
	sub	r1,1,r1
	bne	_Label_481
	mov	337,r13		! source line 337
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0SE",r10
!   _temp_246 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_247 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_248 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_248  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_253 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_254 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_253  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-92]
_Label_249:
!   Perform the FOR-LOOP termination test
!   if i > _temp_254 then goto _Label_252		
	load	[r14+-92],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_252
_Label_250:
	mov	346,r13		! source line 346
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-68]
!   th = alloc (_temp_255)
	load	[r14+-68],r1
	call	_heapAlloc
	store	r1,[r14+-96]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-96],r4
	mov	1041,r3
_Label_482:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_482
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-96],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0SE",r10
!   _temp_257 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-60]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_257  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0SE",r10
!   _temp_258 = _function_24_TestFrameManager
	set	_function_24_TestFrameManager,r1
	store	r1,[r14+-56]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_258  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_251:
!   i = i + 1
	load	[r14+-92],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
	jmp	_Label_249
! END FOR
_Label_252:
! FOR STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_263 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_264 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_263  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-92]
_Label_259:
!   Perform the FOR-LOOP termination test
!   if i > _temp_264 then goto _Label_262		
	load	[r14+-92],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_262
_Label_260:
	mov	355,r13		! source line 355
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0SE",r10
!   _temp_265 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-44]
!   Send message Down
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_261:
!   i = i + 1
	load	[r14+-92],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
	jmp	_Label_259
! END FOR
_Label_262:
! CALL STATEMENT...
!   _temp_266 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_271 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_272 = 26		(4 bytes)
	mov	26,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_271  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-92]
_Label_267:
!   Perform the FOR-LOOP termination test
!   if i > _temp_272 then goto _Label_270		
	load	[r14+-92],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_270
_Label_268:
	mov	361,r13		! source line 361
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_273 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_273  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_275 = &_Global_frameCount
	set	_Global_frameCount,r1
	store	r1,[r14+-20]
!   Move address of _temp_275 [i ] into _temp_276
!     make sure index expr is >= 0
	load	[r14+-92],r2
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
!   Data Move: _temp_274 = *_temp_276  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_274  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	364,r13		! source line 364
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	365,r13		! source line 365
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_269:
!   i = i + 1
	load	[r14+-92],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
	jmp	_Label_267
! END FOR
_Label_270:
! CALL STATEMENT...
!   _temp_277 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	368,r13		! source line 368
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_25_RunFrameManagerTests:
	.word	_sourceFileName
	.word	_Label_278
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_279
	.word	-12
	.word	4
	.word	_Label_280
	.word	-16
	.word	4
	.word	_Label_281
	.word	-20
	.word	4
	.word	_Label_282
	.word	-24
	.word	4
	.word	_Label_283
	.word	-28
	.word	4
	.word	_Label_284
	.word	-32
	.word	4
	.word	_Label_285
	.word	-36
	.word	4
	.word	_Label_286
	.word	-40
	.word	4
	.word	_Label_287
	.word	-44
	.word	4
	.word	_Label_288
	.word	-48
	.word	4
	.word	_Label_289
	.word	-52
	.word	4
	.word	_Label_290
	.word	-56
	.word	4
	.word	_Label_291
	.word	-60
	.word	4
	.word	_Label_292
	.word	-64
	.word	4
	.word	_Label_293
	.word	-68
	.word	4
	.word	_Label_294
	.word	-72
	.word	4
	.word	_Label_295
	.word	-76
	.word	4
	.word	_Label_296
	.word	-80
	.word	4
	.word	_Label_297
	.word	-84
	.word	4
	.word	_Label_298
	.word	-88
	.word	4
	.word	_Label_299
	.word	-92
	.word	4
	.word	_Label_300
	.word	-96
	.word	4
	.word	0
_Label_278:
	.ascii	"RunFrameManagerTests\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_299:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_300:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestFrameManager  ===============
! 
_function_24_TestFrameManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_24_TestFrameManager,r1
	push	r1
	mov	30,r1
_Label_483:
	push	r0
	sub	r1,1,r1
	bne	_Label_483
	mov	392,r13		! source line 392
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=43  sizeInBytes=1
	mov	43,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   _temp_301 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Send message GetANewProcess
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_306 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_307 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_306  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-100]
_Label_302:
!   Perform the FOR-LOOP termination test
!   if i > _temp_307 then goto _Label_305		
	load	[r14+-100],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_305
_Label_303:
	mov	398,r13		! source line 398
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_312 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_313 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: sz = _temp_312  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-112]
_Label_308:
!   Perform the FOR-LOOP termination test
!   if sz > _temp_313 then goto _Label_311		
	load	[r14+-112],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_311
_Label_309:
	mov	399,r13		! source line 399
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	400,r13		! source line 400
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	401,r13		! source line 401
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CA",r10
	call	_function_30_GetUniqueNumber
!   Retrieve Result: targetName=newData  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_315 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_314 = _temp_315		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-76]
!   _temp_316 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_314  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_318 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_317 = _temp_318		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CA",r10
	call	_function_23_CheckAddrSpace
! FOR STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_323 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_324 = 10 + i		(int)
	mov	10,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_323  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-104]
_Label_319:
!   Perform the FOR-LOOP termination test
!   if j > _temp_324 then goto _Label_322		
	load	[r14+-104],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_322
_Label_320:
	mov	405,r13		! source line 405
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	406,r13		! source line 406
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
!   Increment the FOR-LOOP index variable and jump back
_Label_321:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_319
! END FOR
_Label_322:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=44  sizeInBytes=1
	mov	44,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	408,r13		! source line 408
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_326 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_325 = _temp_326		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CA",r10
	call	_function_22_CheckAddrSpace2
! SEND STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_328 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_327 = _temp_328		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_329 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_327  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_334 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_335 = 10 - i		(int)
	mov	10,r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_334  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_330:
!   Perform the FOR-LOOP termination test
!   if j > _temp_335 then goto _Label_333		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_333
_Label_331:
	mov	412,r13		! source line 412
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	413,r13		! source line 413
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
!   Increment the FOR-LOOP index variable and jump back
_Label_332:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_330
! END FOR
_Label_333:
!   Increment the FOR-LOOP index variable and jump back
_Label_310:
!   sz = sz + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_308
! END FOR
_Label_311:
!   Increment the FOR-LOOP index variable and jump back
_Label_304:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_302
! END FOR
_Label_305:
! SEND STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0SE",r10
!   _temp_336 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0SE",r10
!   _temp_337 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0SE",r10
!   _temp_338 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_24_TestFrameManager:
	.word	_sourceFileName
	.word	_Label_339
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_340
	.word	8
	.word	4
	.word	_Label_341
	.word	-12
	.word	4
	.word	_Label_342
	.word	-16
	.word	4
	.word	_Label_343
	.word	-20
	.word	4
	.word	_Label_344
	.word	-24
	.word	4
	.word	_Label_345
	.word	-28
	.word	4
	.word	_Label_346
	.word	-32
	.word	4
	.word	_Label_347
	.word	-36
	.word	4
	.word	_Label_348
	.word	-40
	.word	4
	.word	_Label_349
	.word	-44
	.word	4
	.word	_Label_350
	.word	-48
	.word	4
	.word	_Label_351
	.word	-52
	.word	4
	.word	_Label_352
	.word	-56
	.word	4
	.word	_Label_353
	.word	-60
	.word	4
	.word	_Label_354
	.word	-64
	.word	4
	.word	_Label_355
	.word	-68
	.word	4
	.word	_Label_356
	.word	-72
	.word	4
	.word	_Label_357
	.word	-76
	.word	4
	.word	_Label_358
	.word	-80
	.word	4
	.word	_Label_359
	.word	-84
	.word	4
	.word	_Label_360
	.word	-88
	.word	4
	.word	_Label_361
	.word	-92
	.word	4
	.word	_Label_362
	.word	-96
	.word	4
	.word	_Label_363
	.word	-100
	.word	4
	.word	_Label_364
	.word	-104
	.word	4
	.word	_Label_365
	.word	-108
	.word	4
	.word	_Label_366
	.word	-112
	.word	4
	.word	_Label_367
	.word	-116
	.word	4
	.word	0
_Label_339:
	.ascii	"TestFrameManager\0"
	.align
_Label_340:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_363:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_364:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_365:
	.byte	'I'
	.ascii	"newData\0"
	.align
_Label_366:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_367:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace  ===============
! 
_function_23_CheckAddrSpace:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_23_CheckAddrSpace,r1
	push	r1
	mov	23,r1
_Label_484:
	push	r0
	sub	r1,1,r1
	bne	_Label_484
	mov	427,r13		! source line 427
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_371 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_370 = *_temp_371  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_370 == n then goto _Label_369		(int)
	load	[r14+-80],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_369
!	jmp	_Label_368
_Label_368:
! THEN...
	mov	430,r13		! source line 430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_372 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	430,r13		! source line 430
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_369:
! FOR STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_377 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_378 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_377  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_373:
!   Perform the FOR-LOOP termination test
!   if i > _temp_378 then goto _Label_376		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_376
_Label_374:
	mov	432,r13		! source line 432
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
	mov	433,r13		! source line 433
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   _temp_379 = frameAddr - 1048576		(int)
	load	[r14+-88],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   frameNumber = _temp_379 div 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_383		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_383
	jmp	_Label_380
_Label_383:
!   if frameNumber < 27 then goto _Label_382		(int)
	load	[r14+-92],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_382
	jmp	_Label_380
_Label_382:
!   _temp_384 = frameAddr rem 8192		(int)
	load	[r14+-88],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if intIsZero (_temp_384) then goto _Label_381
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_381
!	jmp	_Label_380
_Label_380:
! THEN...
	mov	440,r13		! source line 440
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_385 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	440,r13		! source line 440
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_381:
! ASSIGNMENT STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0AS",r10
!   _temp_386 = &_Global_frameCount
	set	_Global_frameCount,r1
	store	r1,[r14+-48]
!   Move address of _temp_386 [frameNumber ] into _temp_387
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
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
	store	r2,[r14+-44]
!   _temp_390 = &_Global_frameCount
	set	_Global_frameCount,r1
	store	r1,[r14+-32]
!   Move address of _temp_390 [frameNumber ] into _temp_391
!     make sure index expr is >= 0
	load	[r14+-92],r2
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
!   Data Move: _temp_389 = *_temp_391  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_388 = _temp_389 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_387 = _temp_388  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0IF",r10
	mov	443,r13		! source line 443
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_398  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_398) then goto _Label_397
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_397
	jmp	_Label_392
_Label_397:
	mov	444,r13		! source line 444
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_392 else goto _Label_396
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_396
	jmp	_Label_392
_Label_396:
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_392 else goto _Label_395
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_395
	jmp	_Label_392
_Label_395:
	mov	446,r13		! source line 446
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_399  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_399 then goto _Label_394 else goto _Label_392
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_392
	jmp	_Label_394
_Label_394:
	mov	447,r13		! source line 447
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_400  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_400 then goto _Label_393 else goto _Label_392
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_392
	jmp	_Label_393
_Label_392:
! THEN...
	mov	448,r13		! source line 448
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_401 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	448,r13		! source line 448
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_393:
! ASSIGNMENT STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0AS",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_402 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-84],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *frameAddr = _temp_402  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-88],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_375:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_373
! END FOR
_Label_376:
! RETURN STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_23_CheckAddrSpace:
	.word	_sourceFileName
	.word	_Label_403
	.word	12		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_404
	.word	8
	.word	4
	.word	_Label_405
	.word	12
	.word	4
	.word	_Label_406
	.word	16
	.word	4
	.word	_Label_407
	.word	-16
	.word	4
	.word	_Label_408
	.word	-20
	.word	4
	.word	_Label_409
	.word	-9
	.word	1
	.word	_Label_410
	.word	-10
	.word	1
	.word	_Label_411
	.word	-24
	.word	4
	.word	_Label_412
	.word	-28
	.word	4
	.word	_Label_413
	.word	-32
	.word	4
	.word	_Label_414
	.word	-36
	.word	4
	.word	_Label_415
	.word	-40
	.word	4
	.word	_Label_416
	.word	-44
	.word	4
	.word	_Label_417
	.word	-48
	.word	4
	.word	_Label_418
	.word	-52
	.word	4
	.word	_Label_419
	.word	-56
	.word	4
	.word	_Label_420
	.word	-60
	.word	4
	.word	_Label_421
	.word	-64
	.word	4
	.word	_Label_422
	.word	-68
	.word	4
	.word	_Label_423
	.word	-72
	.word	4
	.word	_Label_424
	.word	-76
	.word	4
	.word	_Label_425
	.word	-80
	.word	4
	.word	_Label_426
	.word	-84
	.word	4
	.word	_Label_427
	.word	-88
	.word	4
	.word	_Label_428
	.word	-92
	.word	4
	.word	0
_Label_403:
	.ascii	"CheckAddrSpace\0"
	.align
_Label_404:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_405:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_406:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_409:
	.byte	'C'
	.ascii	"_temp_400\0"
	.align
_Label_410:
	.byte	'C'
	.ascii	"_temp_399\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace2  ===============
! 
_function_22_CheckAddrSpace2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_22_CheckAddrSpace2,r1
	push	r1
	mov	16,r1
_Label_485:
	push	r0
	sub	r1,1,r1
	bne	_Label_485
	mov	461,r13		! source line 461
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_432 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_431 = *_temp_432  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_431 == n then goto _Label_430		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_430
!	jmp	_Label_429
_Label_429:
! THEN...
	mov	464,r13		! source line 464
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_433 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	464,r13		! source line 464
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_430:
! FOR STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_438 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_439 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_438  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_434:
!   Perform the FOR-LOOP termination test
!   if i > _temp_439 then goto _Label_437		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_437
_Label_435:
	mov	466,r13		! source line 466
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0AS",r10
	mov	467,r13		! source line 467
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0AS",r10
!   _temp_440 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_440 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_444		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_444
	jmp	_Label_441
_Label_444:
!   if frameNumber < 27 then goto _Label_443		(int)
	load	[r14+-64],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_443
	jmp	_Label_441
_Label_443:
!   _temp_445 = frameAddr rem 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_445) then goto _Label_442
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_442
!	jmp	_Label_441
_Label_441:
! THEN...
	mov	473,r13		! source line 473
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_446 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	473,r13		! source line 473
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_442:
! IF STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0IF",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_449 = *frameAddr  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_450 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if _temp_449 == _temp_450 then goto _Label_448		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	be	_Label_448
!	jmp	_Label_447
_Label_447:
! THEN...
	mov	476,r13		! source line 476
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_451 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_451  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	476,r13		! source line 476
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_448:
!   Increment the FOR-LOOP index variable and jump back
_Label_436:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_434
! END FOR
_Label_437:
! RETURN STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_22_CheckAddrSpace2:
	.word	_sourceFileName
	.word	_Label_452
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_453
	.word	8
	.word	4
	.word	_Label_454
	.word	12
	.word	4
	.word	_Label_455
	.word	16
	.word	4
	.word	_Label_456
	.word	-12
	.word	4
	.word	_Label_457
	.word	-16
	.word	4
	.word	_Label_458
	.word	-20
	.word	4
	.word	_Label_459
	.word	-24
	.word	4
	.word	_Label_460
	.word	-28
	.word	4
	.word	_Label_461
	.word	-32
	.word	4
	.word	_Label_462
	.word	-36
	.word	4
	.word	_Label_463
	.word	-40
	.word	4
	.word	_Label_464
	.word	-44
	.word	4
	.word	_Label_465
	.word	-48
	.word	4
	.word	_Label_466
	.word	-52
	.word	4
	.word	_Label_467
	.word	-56
	.word	4
	.word	_Label_468
	.word	-60
	.word	4
	.word	_Label_469
	.word	-64
	.word	4
	.word	0
_Label_452:
	.ascii	"CheckAddrSpace2\0"
	.align
_Label_453:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_454:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_455:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_467:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_468:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_469:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
