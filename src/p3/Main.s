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
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from other packages
	.import	_P_Synch_Semaphore
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex
! The following class and its methods are from other packages
	.import	_P_Synch_Condition
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
_Global_customers:
	.skip	20
_Global_barbers:
	.skip	20
_Global_mutex:
	.skip	20
_Global_waiting:
	.skip	4
_Global_barberThread:
	.skip	4092
_Global_customerThreads:
	.skip	81844
_Global_printMu:
	.skip	20
	.align
! String constants
_StringConst_28:
	.word	6			! length
	.ascii	"\nKB83\n"
	.align
_StringConst_27:
	.word	3			! length
	.ascii	"C19"
	.align
_StringConst_26:
	.word	3			! length
	.ascii	"C18"
	.align
_StringConst_25:
	.word	3			! length
	.ascii	"C17"
	.align
_StringConst_24:
	.word	3			! length
	.ascii	"C16"
	.align
_StringConst_23:
	.word	3			! length
	.ascii	"C15"
	.align
_StringConst_22:
	.word	3			! length
	.ascii	"C14"
	.align
_StringConst_21:
	.word	3			! length
	.ascii	"C13"
	.align
_StringConst_20:
	.word	3			! length
	.ascii	"C12"
	.align
_StringConst_19:
	.word	3			! length
	.ascii	"C11"
	.align
_StringConst_18:
	.word	3			! length
	.ascii	"C10"
	.align
_StringConst_17:
	.word	2			! length
	.ascii	"C9"
	.align
_StringConst_16:
	.word	2			! length
	.ascii	"C8"
	.align
_StringConst_15:
	.word	2			! length
	.ascii	"C7"
	.align
_StringConst_14:
	.word	2			! length
	.ascii	"C6"
	.align
_StringConst_13:
	.word	2			! length
	.ascii	"C5"
	.align
_StringConst_12:
	.word	2			! length
	.ascii	"C4"
	.align
_StringConst_11:
	.word	2			! length
	.ascii	"C3"
	.align
_StringConst_10:
	.word	2			! length
	.ascii	"C2"
	.align
_StringConst_9:
	.word	2			! length
	.ascii	"C1"
	.align
_StringConst_8:
	.word	2			! length
	.ascii	"C0"
	.align
_StringConst_7:
	.word	6			! length
	.ascii	"Barber"
	.align
_StringConst_6:
	.word	2			! length
	.ascii	"Hi"
	.align
_StringConst_5:
	.word	24			! length
	.ascii	" Barber is cutting hair\n"
	.align
_StringConst_4:
	.word	28			! length
	.ascii	" is getting a haircut **** \n"
	.align
_StringConst_3:
	.word	22			! length
	.ascii	"Hereee        My room "
	.align
_StringConst_2:
	.word	20			! length
	.ascii	"waiting costumers : "
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Example Thread-based Programs...\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x87d0aa21,r3		! .  hashVal = -2016368095
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_35		! .
	ret				! .
_Label_35:				! .
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
	set	0x87d0aa21,r4		! myHashVal = -2016368095
	cmp	r3,r4
	be	_Label_36
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
_Label_36:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_37
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_37
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_37
! Make sure _P_Synch_ has hash value 0x05f5aed7 (decimal 99987159)
	set	_packageName,r2
	set	0x05f5aed7,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_37
_Label_37:
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
	mov	2,r1
_Label_382:
	push	r0
	sub	r1,1,r1
	bne	_Label_382
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_38 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_38  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	8,r13		! source line 8
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	9,r13		! source line 9
	mov	"\0\0CA",r10
	call	_P_Thread_InitializeScheduler
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CA",r10
	call	_function_29_TestBarberShop
! RETURN STATEMENT...
	mov	14,r13		! source line 14
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_39
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_40
	.word	-12
	.word	4
	.word	0
_Label_39:
	.ascii	"main\0"
	.align
_Label_40:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
! 
! ===============  FUNCTION Init  ===============
! 
_function_34_Init:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_34_Init,r1
	push	r1
	mov	10,r1
_Label_383:
	push	r0
	sub	r1,1,r1
	bne	_Label_383
	mov	31,r13		! source line 31
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_customers = zeros  (sizeInBytes=20)
	set	_Global_customers,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_customers = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_customers,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barbers = zeros  (sizeInBytes=20)
	set	_Global_barbers,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_barbers = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_barbers,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_mutex = zeros  (sizeInBytes=20)
	set	_Global_mutex,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_mutex = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_mutex,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_printMu = zeros  (sizeInBytes=20)
	set	_Global_printMu,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_printMu = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_printMu,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0SE",r10
!   _temp_45 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0SE",r10
!   _temp_46 = &_Global_barbers
	set	_Global_barbers,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	38,r13		! source line 38
	mov	"\0\0SE",r10
!   _temp_47 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0SE",r10
!   _temp_48 = &_Global_printMu
	set	_Global_printMu,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0AS",r10
!   _Global_waiting = 0		(4 bytes)
	mov	0,r1
	set	_Global_waiting,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_34_Init:
	.word	_sourceFileName
	.word	_Label_49
	.word	0		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_50
	.word	-12
	.word	4
	.word	_Label_51
	.word	-16
	.word	4
	.word	_Label_52
	.word	-20
	.word	4
	.word	_Label_53
	.word	-24
	.word	4
	.word	_Label_54
	.word	-28
	.word	4
	.word	_Label_55
	.word	-32
	.word	4
	.word	_Label_56
	.word	-36
	.word	4
	.word	_Label_57
	.word	-40
	.word	4
	.word	0
_Label_49:
	.ascii	"Init\0"
	.align
_Label_50:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_51:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_52:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_55:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_56:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_57:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
! 
! ===============  FUNCTION Barber  ===============
! 
_function_33_Barber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_33_Barber,r1
	push	r1
	mov	5,r1
_Label_384:
	push	r0
	sub	r1,1,r1
	bne	_Label_384
	mov	44,r13		! source line 44
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0WH",r10
_Label_58:
!	jmp	_Label_59
_Label_59:
	mov	45,r13		! source line 45
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0SE",r10
!   _temp_61 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   _temp_62 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-20]
!   Send message Down
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0AS",r10
!   _Global_waiting = _Global_waiting - 1		(int)
	set	_Global_waiting,r1
	load	[r1],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_waiting,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0SE",r10
!   _temp_63 = &_Global_barbers
	set	_Global_barbers,r1
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
	mov	50,r13		! source line 50
	mov	"\0\0SE",r10
!   _temp_64 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	51,r13		! source line 51
	mov	"\0\0CA",r10
	call	_function_30_CutHair
! END WHILE...
	jmp	_Label_58
_Label_60:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_33_Barber:
	.word	_sourceFileName
	.word	_Label_65
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_66
	.word	8
	.word	4
	.word	_Label_67
	.word	-12
	.word	4
	.word	_Label_68
	.word	-16
	.word	4
	.word	_Label_69
	.word	-20
	.word	4
	.word	_Label_70
	.word	-24
	.word	4
	.word	0
_Label_65:
	.ascii	"Barber\0"
	.align
_Label_66:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
! 
! ===============  FUNCTION Customer  ===============
! 
_function_32_Customer:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_32_Customer,r1
	push	r1
	mov	12,r1
_Label_385:
	push	r0
	sub	r1,1,r1
	bne	_Label_385
	mov	55,r13		! source line 55
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_71 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-52]
!   Send message Down
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0SE",r10
!   _temp_72 = &_Global_printMu
	set	_Global_printMu,r1
	store	r1,[r14+-48]
!   Send message Down
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	58,r13		! source line 58
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	59,r13		! source line 59
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	60,r13		! source line 60
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_73 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_73  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	61,r13		! source line 61
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=_Global_waiting  sizeInBytes=4
	set	_Global_waiting,r1
	load	[r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	62,r13		! source line 62
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	63,r13		! source line 63
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0SE",r10
!   _temp_74 = &_Global_printMu
	set	_Global_printMu,r1
	store	r1,[r14+-40]
!   Send message Up
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_76 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-32]
!   Data Move: _temp_75 = *_temp_76  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_75  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0IF",r10
!   if _Global_waiting >= 5 then goto _Label_78		(int)
	set	_Global_waiting,r1
	load	[r1],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_78
!	jmp	_Label_77
_Label_77:
! THEN...
	mov	68,r13		! source line 68
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_79 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_79  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   _Global_waiting = _Global_waiting + 1		(int)
	set	_Global_waiting,r1
	load	[r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_waiting,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   _temp_80 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-24]
!   Send message Up
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_81 = &_Global_mutex
	set	_Global_mutex,r1
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
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   _temp_82 = &_Global_barbers
	set	_Global_barbers,r1
	store	r1,[r14+-16]
!   Send message Down
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CA",r10
	call	_function_31_HairCut
	jmp	_Label_83
_Label_78:
! ELSE...
	mov	76,r13		! source line 76
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0SE",r10
!   _temp_84 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_83:
! RETURN STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_32_Customer:
	.word	_sourceFileName
	.word	_Label_85
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_86
	.word	8
	.word	4
	.word	_Label_87
	.word	-12
	.word	4
	.word	_Label_88
	.word	-16
	.word	4
	.word	_Label_89
	.word	-20
	.word	4
	.word	_Label_90
	.word	-24
	.word	4
	.word	_Label_91
	.word	-28
	.word	4
	.word	_Label_92
	.word	-32
	.word	4
	.word	_Label_93
	.word	-36
	.word	4
	.word	_Label_94
	.word	-40
	.word	4
	.word	_Label_95
	.word	-44
	.word	4
	.word	_Label_96
	.word	-48
	.word	4
	.word	_Label_97
	.word	-52
	.word	4
	.word	0
_Label_85:
	.ascii	"Customer\0"
	.align
_Label_86:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
! 
! ===============  FUNCTION HairCut  ===============
! 
_function_31_HairCut:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_31_HairCut,r1
	push	r1
	mov	4,r1
_Label_386:
	push	r0
	sub	r1,1,r1
	bne	_Label_386
	mov	80,r13		! source line 80
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_99 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-16]
!   Data Move: _temp_98 = *_temp_99  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_98  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_100 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_100  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	82,r13		! source line 82
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_31_HairCut:
	.word	_sourceFileName
	.word	_Label_101
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_102
	.word	-12
	.word	4
	.word	_Label_103
	.word	-16
	.word	4
	.word	_Label_104
	.word	-20
	.word	4
	.word	0
_Label_101:
	.ascii	"HairCut\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_104:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
! 
! ===============  FUNCTION CutHair  ===============
! 
_function_30_CutHair:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_30_CutHair,r1
	push	r1
	mov	4,r1
_Label_387:
	push	r0
	sub	r1,1,r1
	bne	_Label_387
	mov	85,r13		! source line 85
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_106 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-16]
!   Data Move: _temp_105 = *_temp_106  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_105  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	86,r13		! source line 86
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_107 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_107  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_30_CutHair:
	.word	_sourceFileName
	.word	_Label_108
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_109
	.word	-12
	.word	4
	.word	_Label_110
	.word	-16
	.word	4
	.word	_Label_111
	.word	-20
	.word	4
	.word	0
_Label_108:
	.ascii	"CutHair\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_111:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
! 
! ===============  FUNCTION TestBarberShop  ===============
! 
_function_29_TestBarberShop:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_29_TestBarberShop,r1
	push	r1
	mov	21619,r1
_Label_388:
	push	r0
	sub	r1,1,r1
	bne	_Label_388
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_112 = _StringConst_6
	set	_StringConst_6,r1
	set	-86472,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_112  sizeInBytes=4
	set	-86472,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_function_34_Init
! ASSIGNMENT STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barberThread = zeros  (sizeInBytes=4092)
	set	_Global_barberThread,r4
	mov	1023,r3
_Label_389:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_389
!   _Global_barberThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_Global_barberThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0SE",r10
!   _temp_114 = _StringConst_7
	set	_StringConst_7,r1
	set	-86464,r2
	store	r1,[r14+r2]
!   _temp_115 = &_Global_barberThread
	set	_Global_barberThread,r1
	set	-86460,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=_temp_114  sizeInBytes=4
	set	-86464,r1
	load	[r14+r1],r1
	store	r1,[r15+4]
!   Send message Init
	set	-86460,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0SE",r10
!   _temp_116 = _function_33_Barber
	set	_function_33_Barber,r1
	set	-86456,r2
	store	r1,[r14+r2]
!   _temp_117 = &_Global_barberThread
	set	_Global_barberThread,r1
	set	-86452,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=_temp_116  sizeInBytes=4
	set	-86456,r1
	load	[r14+r1],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	set	-86452,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0AS",r10
!   _temp_118 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	set	-86448,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_120 = &_temp_119
	set	-86444,r1
	add	r14,r1,r1
	store	r1,[r14+-4600]
!   _temp_120 = _temp_120 + 4
	load	[r14+-4600],r1
	add	r1,4,r1
	store	r1,[r14+-4600]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_122 = zeros  (sizeInBytes=4092)
	add	r14,-4592,r4
	mov	1023,r3
_Label_390:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_390
!   _temp_122 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4592]
	mov	20,r1
	store	r1,[r14+-4596]
_Label_124:
!   Data Move: *_temp_120 = _temp_122  (sizeInBytes=4092)
	add	r14,-4592,r5
	load	[r14+-4600],r4
	mov	1023,r3
_Label_391:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_391
!   _temp_120 = _temp_120 + 4092
	load	[r14+-4600],r1
	add	r1,4092,r1
	store	r1,[r14+-4600]
!   _temp_121 = _temp_121 + -1
	load	[r14+-4596],r1
	add	r1,-1,r1
	store	r1,[r14+-4596]
!   if intNotZero (_temp_121) then goto _Label_124
	load	[r14+-4596],r1
	cmp	r1,r0
	bne	_Label_124
!   Initialize the array size...
	mov	20,r1
	set	-86444,r2
	store	r1,[r14+r2]
!   _temp_125 = &_temp_119
	set	-86444,r1
	add	r14,r1,r1
	store	r1,[r14+-496]
!   make sure array has size 20
	set	-86448,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_392
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_392:
!   make sure array has size 20
	load	[r14+-496],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_118 = *_temp_125  (sizeInBytes=81844)
	load	[r14+-496],r5
	set	-86448,r4
	load	[r14+r4],r4
	mov	20461,r3
_Label_393:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_393
! SEND STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0SE",r10
!   _temp_126 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-492]
!   _temp_127 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-488]
!   Move address of _temp_127 [0 ] into _temp_128
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-488],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-484]
!   Prepare Argument: offset=12  value=_temp_126  sizeInBytes=4
	load	[r14+-492],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-484],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	123,r13		! source line 123
	mov	"\0\0SE",r10
!   _temp_129 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-480]
!   _temp_130 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-476]
!   Move address of _temp_130 [0 ] into _temp_131
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-476],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-472]
!   Prepare Argument: offset=12  value=_temp_129  sizeInBytes=4
	load	[r14+-480],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-472],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0SE",r10
!   _temp_132 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-468]
!   _temp_133 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-464]
!   Move address of _temp_133 [1 ] into _temp_134
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-464],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-460]
!   Prepare Argument: offset=12  value=_temp_132  sizeInBytes=4
	load	[r14+-468],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-460],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0SE",r10
!   _temp_135 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-456]
!   _temp_136 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-452]
!   Move address of _temp_136 [1 ] into _temp_137
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-452],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-448]
!   Prepare Argument: offset=12  value=_temp_135  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-448],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
!   _temp_138 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-444]
!   _temp_139 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-440]
!   Move address of _temp_139 [2 ] into _temp_140
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-440],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-436]
!   Prepare Argument: offset=12  value=_temp_138  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-436],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0SE",r10
!   _temp_141 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-432]
!   _temp_142 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-428]
!   Move address of _temp_142 [2 ] into _temp_143
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-428],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-424]
!   Prepare Argument: offset=12  value=_temp_141  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-424],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0SE",r10
!   _temp_144 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-420]
!   _temp_145 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-416]
!   Move address of _temp_145 [3 ] into _temp_146
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-416],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_144  sizeInBytes=4
	load	[r14+-420],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0SE",r10
!   _temp_147 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-408]
!   _temp_148 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-404]
!   Move address of _temp_148 [3 ] into _temp_149
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-404],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-400]
!   Prepare Argument: offset=12  value=_temp_147  sizeInBytes=4
	load	[r14+-408],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
!   _temp_150 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-396]
!   _temp_151 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-392]
!   Move address of _temp_151 [4 ] into _temp_152
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-392],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-388]
!   Prepare Argument: offset=12  value=_temp_150  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-388],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
!   _temp_153 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-384]
!   _temp_154 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-380]
!   Move address of _temp_154 [4 ] into _temp_155
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-380],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-376]
!   Prepare Argument: offset=12  value=_temp_153  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-376],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0SE",r10
!   _temp_156 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-372]
!   _temp_157 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-368]
!   Move address of _temp_157 [5 ] into _temp_158
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-368],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-364]
!   Prepare Argument: offset=12  value=_temp_156  sizeInBytes=4
	load	[r14+-372],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-364],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0SE",r10
!   _temp_159 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-360]
!   _temp_160 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-356]
!   Move address of _temp_160 [5 ] into _temp_161
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-356],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-352]
!   Prepare Argument: offset=12  value=_temp_159  sizeInBytes=4
	load	[r14+-360],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-352],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0SE",r10
!   _temp_162 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-348]
!   _temp_163 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-344]
!   Move address of _temp_163 [6 ] into _temp_164
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-344],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-340]
!   Prepare Argument: offset=12  value=_temp_162  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-340],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_165 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-336]
!   _temp_166 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-332]
!   Move address of _temp_166 [6 ] into _temp_167
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-332],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-328]
!   Prepare Argument: offset=12  value=_temp_165  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-328],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0SE",r10
!   _temp_168 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-324]
!   _temp_169 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-320]
!   Move address of _temp_169 [7 ] into _temp_170
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-320],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-316]
!   Prepare Argument: offset=12  value=_temp_168  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-316],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
!   _temp_171 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-312]
!   _temp_172 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-308]
!   Move address of _temp_172 [7 ] into _temp_173
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-308],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-304]
!   Prepare Argument: offset=12  value=_temp_171  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-304],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0SE",r10
!   _temp_174 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-300]
!   _temp_175 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-296]
!   Move address of _temp_175 [8 ] into _temp_176
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-296],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-292]
!   Prepare Argument: offset=12  value=_temp_174  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0SE",r10
!   _temp_177 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-288]
!   _temp_178 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-284]
!   Move address of _temp_178 [8 ] into _temp_179
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-284],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-280]
!   Prepare Argument: offset=12  value=_temp_177  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	159,r13		! source line 159
	mov	"\0\0SE",r10
!   _temp_180 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-276]
!   _temp_181 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-272]
!   Move address of _temp_181 [9 ] into _temp_182
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-272],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-268]
!   Prepare Argument: offset=12  value=_temp_180  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0SE",r10
!   _temp_183 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-264]
!   _temp_184 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-260]
!   Move address of _temp_184 [9 ] into _temp_185
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-260],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-256]
!   Prepare Argument: offset=12  value=_temp_183  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-256],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0SE",r10
!   _temp_186 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-252]
!   _temp_187 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-248]
!   Move address of _temp_187 [10 ] into _temp_188
!     make sure index expr is >= 0
	mov	10,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-248],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-244]
!   Prepare Argument: offset=12  value=_temp_186  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0SE",r10
!   _temp_189 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-240]
!   _temp_190 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-236]
!   Move address of _temp_190 [10 ] into _temp_191
!     make sure index expr is >= 0
	mov	10,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-236],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-232]
!   Prepare Argument: offset=12  value=_temp_189  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-232],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0SE",r10
!   _temp_192 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-228]
!   _temp_193 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-224]
!   Move address of _temp_193 [11 ] into _temp_194
!     make sure index expr is >= 0
	mov	11,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-220]
!   Prepare Argument: offset=12  value=_temp_192  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-220],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0SE",r10
!   _temp_195 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-216]
!   _temp_196 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-212]
!   Move address of _temp_196 [11 ] into _temp_197
!     make sure index expr is >= 0
	mov	11,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-212],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-208]
!   Prepare Argument: offset=12  value=_temp_195  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=11  sizeInBytes=4
	mov	11,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-208],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	171,r13		! source line 171
	mov	"\0\0SE",r10
!   _temp_198 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-204]
!   _temp_199 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-200]
!   Move address of _temp_199 [12 ] into _temp_200
!     make sure index expr is >= 0
	mov	12,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-200],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-196]
!   Prepare Argument: offset=12  value=_temp_198  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	172,r13		! source line 172
	mov	"\0\0SE",r10
!   _temp_201 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-192]
!   _temp_202 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-188]
!   Move address of _temp_202 [12 ] into _temp_203
!     make sure index expr is >= 0
	mov	12,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-188],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-184]
!   Prepare Argument: offset=12  value=_temp_201  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=12  sizeInBytes=4
	mov	12,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_204 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-180]
!   _temp_205 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-176]
!   Move address of _temp_205 [13 ] into _temp_206
!     make sure index expr is >= 0
	mov	13,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Prepare Argument: offset=12  value=_temp_204  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0SE",r10
!   _temp_207 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-168]
!   _temp_208 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-164]
!   Move address of _temp_208 [13 ] into _temp_209
!     make sure index expr is >= 0
	mov	13,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-160]
!   Prepare Argument: offset=12  value=_temp_207  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=13  sizeInBytes=4
	mov	13,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	179,r13		! source line 179
	mov	"\0\0SE",r10
!   _temp_210 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-156]
!   _temp_211 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-152]
!   Move address of _temp_211 [14 ] into _temp_212
!     make sure index expr is >= 0
	mov	14,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   Prepare Argument: offset=12  value=_temp_210  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0SE",r10
!   _temp_213 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-144]
!   _temp_214 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-140]
!   Move address of _temp_214 [14 ] into _temp_215
!     make sure index expr is >= 0
	mov	14,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   Prepare Argument: offset=12  value=_temp_213  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=14  sizeInBytes=4
	mov	14,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_216 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-132]
!   _temp_217 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-128]
!   Move address of _temp_217 [15 ] into _temp_218
!     make sure index expr is >= 0
	mov	15,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Prepare Argument: offset=12  value=_temp_216  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0SE",r10
!   _temp_219 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-120]
!   _temp_220 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-116]
!   Move address of _temp_220 [15 ] into _temp_221
!     make sure index expr is >= 0
	mov	15,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   Prepare Argument: offset=12  value=_temp_219  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=15  sizeInBytes=4
	mov	15,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0SE",r10
!   _temp_222 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-108]
!   _temp_223 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-104]
!   Move address of _temp_223 [16 ] into _temp_224
!     make sure index expr is >= 0
	mov	16,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_222  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0SE",r10
!   _temp_225 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-96]
!   _temp_226 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-92]
!   Move address of _temp_226 [16 ] into _temp_227
!     make sure index expr is >= 0
	mov	16,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_225  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=16  sizeInBytes=4
	mov	16,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0SE",r10
!   _temp_228 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-84]
!   _temp_229 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-80]
!   Move address of _temp_229 [17 ] into _temp_230
!     make sure index expr is >= 0
	mov	17,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_228  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0SE",r10
!   _temp_231 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-72]
!   _temp_232 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-68]
!   Move address of _temp_232 [17 ] into _temp_233
!     make sure index expr is >= 0
	mov	17,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_231  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=17  sizeInBytes=4
	mov	17,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0SE",r10
!   _temp_234 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-60]
!   _temp_235 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-56]
!   Move address of _temp_235 [18 ] into _temp_236
!     make sure index expr is >= 0
	mov	18,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_234  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0SE",r10
!   _temp_237 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-48]
!   _temp_238 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-44]
!   Move address of _temp_238 [18 ] into _temp_239
!     make sure index expr is >= 0
	mov	18,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_237  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=18  sizeInBytes=4
	mov	18,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0SE",r10
!   _temp_240 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-36]
!   _temp_241 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-32]
!   Move address of _temp_241 [19 ] into _temp_242
!     make sure index expr is >= 0
	mov	19,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_240  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0SE",r10
!   _temp_243 = _function_32_Customer
	set	_function_32_Customer,r1
	store	r1,[r14+-24]
!   _temp_244 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-20]
!   Move address of _temp_244 [19 ] into _temp_245
!     make sure index expr is >= 0
	mov	19,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_243  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=19  sizeInBytes=4
	mov	19,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_246 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_246  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0RE",r10
	set	86480,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_29_TestBarberShop:
	.word	_sourceFileName
	.word	_Label_247
	.word	0		! total size of parameters
	.word	86476		! frame size = 86476
	.word	_Label_248
	.word	-12
	.word	4
	.word	_Label_249
	.word	-16
	.word	4
	.word	_Label_250
	.word	-20
	.word	4
	.word	_Label_251
	.word	-24
	.word	4
	.word	_Label_252
	.word	-28
	.word	4
	.word	_Label_253
	.word	-32
	.word	4
	.word	_Label_254
	.word	-36
	.word	4
	.word	_Label_255
	.word	-40
	.word	4
	.word	_Label_256
	.word	-44
	.word	4
	.word	_Label_257
	.word	-48
	.word	4
	.word	_Label_258
	.word	-52
	.word	4
	.word	_Label_259
	.word	-56
	.word	4
	.word	_Label_260
	.word	-60
	.word	4
	.word	_Label_261
	.word	-64
	.word	4
	.word	_Label_262
	.word	-68
	.word	4
	.word	_Label_263
	.word	-72
	.word	4
	.word	_Label_264
	.word	-76
	.word	4
	.word	_Label_265
	.word	-80
	.word	4
	.word	_Label_266
	.word	-84
	.word	4
	.word	_Label_267
	.word	-88
	.word	4
	.word	_Label_268
	.word	-92
	.word	4
	.word	_Label_269
	.word	-96
	.word	4
	.word	_Label_270
	.word	-100
	.word	4
	.word	_Label_271
	.word	-104
	.word	4
	.word	_Label_272
	.word	-108
	.word	4
	.word	_Label_273
	.word	-112
	.word	4
	.word	_Label_274
	.word	-116
	.word	4
	.word	_Label_275
	.word	-120
	.word	4
	.word	_Label_276
	.word	-124
	.word	4
	.word	_Label_277
	.word	-128
	.word	4
	.word	_Label_278
	.word	-132
	.word	4
	.word	_Label_279
	.word	-136
	.word	4
	.word	_Label_280
	.word	-140
	.word	4
	.word	_Label_281
	.word	-144
	.word	4
	.word	_Label_282
	.word	-148
	.word	4
	.word	_Label_283
	.word	-152
	.word	4
	.word	_Label_284
	.word	-156
	.word	4
	.word	_Label_285
	.word	-160
	.word	4
	.word	_Label_286
	.word	-164
	.word	4
	.word	_Label_287
	.word	-168
	.word	4
	.word	_Label_288
	.word	-172
	.word	4
	.word	_Label_289
	.word	-176
	.word	4
	.word	_Label_290
	.word	-180
	.word	4
	.word	_Label_291
	.word	-184
	.word	4
	.word	_Label_292
	.word	-188
	.word	4
	.word	_Label_293
	.word	-192
	.word	4
	.word	_Label_294
	.word	-196
	.word	4
	.word	_Label_295
	.word	-200
	.word	4
	.word	_Label_296
	.word	-204
	.word	4
	.word	_Label_297
	.word	-208
	.word	4
	.word	_Label_298
	.word	-212
	.word	4
	.word	_Label_299
	.word	-216
	.word	4
	.word	_Label_300
	.word	-220
	.word	4
	.word	_Label_301
	.word	-224
	.word	4
	.word	_Label_302
	.word	-228
	.word	4
	.word	_Label_303
	.word	-232
	.word	4
	.word	_Label_304
	.word	-236
	.word	4
	.word	_Label_305
	.word	-240
	.word	4
	.word	_Label_306
	.word	-244
	.word	4
	.word	_Label_307
	.word	-248
	.word	4
	.word	_Label_308
	.word	-252
	.word	4
	.word	_Label_309
	.word	-256
	.word	4
	.word	_Label_310
	.word	-260
	.word	4
	.word	_Label_311
	.word	-264
	.word	4
	.word	_Label_312
	.word	-268
	.word	4
	.word	_Label_313
	.word	-272
	.word	4
	.word	_Label_314
	.word	-276
	.word	4
	.word	_Label_315
	.word	-280
	.word	4
	.word	_Label_316
	.word	-284
	.word	4
	.word	_Label_317
	.word	-288
	.word	4
	.word	_Label_318
	.word	-292
	.word	4
	.word	_Label_319
	.word	-296
	.word	4
	.word	_Label_320
	.word	-300
	.word	4
	.word	_Label_321
	.word	-304
	.word	4
	.word	_Label_322
	.word	-308
	.word	4
	.word	_Label_323
	.word	-312
	.word	4
	.word	_Label_324
	.word	-316
	.word	4
	.word	_Label_325
	.word	-320
	.word	4
	.word	_Label_326
	.word	-324
	.word	4
	.word	_Label_327
	.word	-328
	.word	4
	.word	_Label_328
	.word	-332
	.word	4
	.word	_Label_329
	.word	-336
	.word	4
	.word	_Label_330
	.word	-340
	.word	4
	.word	_Label_331
	.word	-344
	.word	4
	.word	_Label_332
	.word	-348
	.word	4
	.word	_Label_333
	.word	-352
	.word	4
	.word	_Label_334
	.word	-356
	.word	4
	.word	_Label_335
	.word	-360
	.word	4
	.word	_Label_336
	.word	-364
	.word	4
	.word	_Label_337
	.word	-368
	.word	4
	.word	_Label_338
	.word	-372
	.word	4
	.word	_Label_339
	.word	-376
	.word	4
	.word	_Label_340
	.word	-380
	.word	4
	.word	_Label_341
	.word	-384
	.word	4
	.word	_Label_342
	.word	-388
	.word	4
	.word	_Label_343
	.word	-392
	.word	4
	.word	_Label_344
	.word	-396
	.word	4
	.word	_Label_345
	.word	-400
	.word	4
	.word	_Label_346
	.word	-404
	.word	4
	.word	_Label_347
	.word	-408
	.word	4
	.word	_Label_348
	.word	-412
	.word	4
	.word	_Label_349
	.word	-416
	.word	4
	.word	_Label_350
	.word	-420
	.word	4
	.word	_Label_351
	.word	-424
	.word	4
	.word	_Label_352
	.word	-428
	.word	4
	.word	_Label_353
	.word	-432
	.word	4
	.word	_Label_354
	.word	-436
	.word	4
	.word	_Label_355
	.word	-440
	.word	4
	.word	_Label_356
	.word	-444
	.word	4
	.word	_Label_357
	.word	-448
	.word	4
	.word	_Label_358
	.word	-452
	.word	4
	.word	_Label_359
	.word	-456
	.word	4
	.word	_Label_360
	.word	-460
	.word	4
	.word	_Label_361
	.word	-464
	.word	4
	.word	_Label_362
	.word	-468
	.word	4
	.word	_Label_363
	.word	-472
	.word	4
	.word	_Label_364
	.word	-476
	.word	4
	.word	_Label_365
	.word	-480
	.word	4
	.word	_Label_366
	.word	-484
	.word	4
	.word	_Label_367
	.word	-488
	.word	4
	.word	_Label_368
	.word	-492
	.word	4
	.word	_Label_369
	.word	-496
	.word	4
	.word	_Label_370
	.word	-500
	.word	4
	.word	_Label_371
	.word	-4592
	.word	4092
	.word	_Label_372
	.word	-4596
	.word	4
	.word	_Label_373
	.word	-4600
	.word	4
	.word	_Label_374
	.word	-86444
	.word	81844
	.word	_Label_375
	.word	-86448
	.word	4
	.word	_Label_376
	.word	-86452
	.word	4
	.word	_Label_377
	.word	-86456
	.word	4
	.word	_Label_378
	.word	-86460
	.word	4
	.word	_Label_379
	.word	-86464
	.word	4
	.word	_Label_380
	.word	-86468
	.word	4
	.word	_Label_381
	.word	-86472
	.word	4
	.word	0
_Label_247:
	.ascii	"TestBarberShop\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
