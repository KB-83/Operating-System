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
! The following class and its methods are from this package
	.export	_P_Main_GamingParlorMonitor
	.export	_Method_P_Main_GamingParlorMonitor_1
	.export	_Method_P_Main_GamingParlorMonitor_2
	.export	_Method_P_Main_GamingParlorMonitor_3
	.export	_Method_P_Main_GamingParlorMonitor_4
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
_Global_waitingCustomers:
	.skip	12
_Global_barberStatus:
	.skip	4
_Global_onBarberSeat:
	.skip	4
_Global_mon:
	.skip	104
_Global_teams:
! Static array
	.word	8		! number of elements
! Static object
	.word	_P_Thread_Thread
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
! Static object
	.word	_P_Thread_Thread
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
! Static object
	.word	_P_Thread_Thread
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
! Static object
	.word	_P_Thread_Thread
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
! Static object
	.word	_P_Thread_Thread
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
! Static object
	.word	_P_Thread_Thread
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
! Static object
	.word	_P_Thread_Thread
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
! Static object
	.word	_P_Thread_Thread
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
_Global_mut:
	.skip	20
_Global_numOfPlayed:
! Static array
	.word	8		! number of elements
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
_StringConst_48:
	.word	24			! length
	.ascii	"num of available dices: "
	.align
_StringConst_47:
	.word	3			! length
	.ascii	"F  "
	.align
_StringConst_46:
	.word	3			! length
	.ascii	"P  "
	.align
_StringConst_45:
	.word	3			! length
	.ascii	"W  "
	.align
_StringConst_44:
	.word	13			! length
	.ascii	"H  Pictionary"
	.align
_StringConst_43:
	.word	13			! length
	.ascii	"G  Pictionary"
	.align
_StringConst_42:
	.word	11			! length
	.ascii	"F  Monopoly"
	.align
_StringConst_41:
	.word	11			! length
	.ascii	"E  Monopoly"
	.align
_StringConst_40:
	.word	7			! length
	.ascii	"D  Risk"
	.align
_StringConst_39:
	.word	7			! length
	.ascii	"C  Risk"
	.align
_StringConst_38:
	.word	13			! length
	.ascii	"B  Backgammon"
	.align
_StringConst_37:
	.word	13			! length
	.ascii	"A  Backgammon"
	.align
_StringConst_36:
	.word	3			! length
	.ascii	"C19"
	.align
_StringConst_35:
	.word	3			! length
	.ascii	"C18"
	.align
_StringConst_34:
	.word	3			! length
	.ascii	"C17"
	.align
_StringConst_33:
	.word	3			! length
	.ascii	"C16"
	.align
_StringConst_32:
	.word	3			! length
	.ascii	"C15"
	.align
_StringConst_31:
	.word	3			! length
	.ascii	"C14"
	.align
_StringConst_30:
	.word	3			! length
	.ascii	"C13"
	.align
_StringConst_29:
	.word	3			! length
	.ascii	"C12"
	.align
_StringConst_28:
	.word	3			! length
	.ascii	"C11"
	.align
_StringConst_27:
	.word	3			! length
	.ascii	"C10"
	.align
_StringConst_26:
	.word	2			! length
	.ascii	"C9"
	.align
_StringConst_25:
	.word	2			! length
	.ascii	"C8"
	.align
_StringConst_24:
	.word	2			! length
	.ascii	"C7"
	.align
_StringConst_23:
	.word	2			! length
	.ascii	"C6"
	.align
_StringConst_22:
	.word	2			! length
	.ascii	"C5"
	.align
_StringConst_21:
	.word	2			! length
	.ascii	"C4"
	.align
_StringConst_20:
	.word	2			! length
	.ascii	"C3"
	.align
_StringConst_19:
	.word	2			! length
	.ascii	"C2"
	.align
_StringConst_18:
	.word	2			! length
	.ascii	"C1"
	.align
_StringConst_17:
	.word	2			! length
	.ascii	"C0"
	.align
_StringConst_16:
	.word	6			! length
	.ascii	"Barber"
	.align
_StringConst_15:
	.word	2			! length
	.ascii	"Hi"
	.align
_StringConst_14:
	.word	17			! length
	.ascii	"              ; ;"
	.align
_StringConst_13:
	.word	16			! length
	.ascii	"                "
	.align
_StringConst_12:
	.word	16			! length
	.ascii	"              |_"
	.align
_StringConst_11:
	.word	16			! length
	.ascii	"                "
	.align
_StringConst_10:
	.word	14			! length
	.ascii	" - on seat : |"
	.align
_StringConst_9:
	.word	16			! length
	.ascii	"Barber status : "
	.align
_StringConst_8:
	.word	3			! length
	.ascii	" - "
	.align
_StringConst_7:
	.word	13			! length
	.ascii	"Shop seats : "
	.align
_StringConst_6:
	.word	30			! length
	.ascii	"Snapshot - Waiting customers: "
	.align
_StringConst_5:
	.word	5			! length
	.ascii	"noOne"
	.align
_StringConst_4:
	.word	19			! length
	.ascii	" is getting haircut"
	.align
_StringConst_3:
	.word	8			! length
	.ascii	" left :("
	.align
_StringConst_2:
	.word	8			! length
	.ascii	" came   "
	.align
_StringConst_1:
	.word	5			! length
	.ascii	"noOne"
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
	be	_Label_58		! .
	ret				! .
_Label_58:				! .
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
	be	_Label_59
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
_Label_59:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_60
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_60
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_60
! Make sure _P_Synch_ has hash value 0x05f5aed7 (decimal 99987159)
	set	_packageName,r2
	set	0x05f5aed7,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_60
_Label_60:
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
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	8,r13		! source line 8
	mov	"\0\0CA",r10
	call	_P_Thread_InitializeScheduler
! CALL STATEMENT...
!   Call the function
	mov	11,r13		! source line 11
	mov	"\0\0CA",r10
	call	_function_51_TestBarberShop
! RETURN STATEMENT...
	mov	11,r13		! source line 11
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_61
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_61:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION Init  ===============
! 
_function_57_Init:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_57_Init,r1
	push	r1
	mov	17,r1
_Label_781:
	push	r0
	sub	r1,1,r1
	bne	_Label_781
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
! ASSIGNMENT STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
!   _temp_66 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-52]
!   NEW ARRAY Constructor...
!   _temp_68 = &_temp_67
	add	r14,-48,r1
	store	r1,[r14+-36]
!   _temp_68 = _temp_68 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Next value...
	mov	5,r1
	store	r1,[r14+-32]
_Label_70:
!   Data Move: *_temp_68 = 101  (sizeInBytes=1)
	mov	101,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
!   _temp_68 = _temp_68 + 1
	load	[r14+-36],r1
	add	r1,1,r1
	store	r1,[r14+-36]
!   _temp_69 = _temp_69 + -1
	load	[r14+-32],r1
	add	r1,-1,r1
	store	r1,[r14+-32]
!   if intNotZero (_temp_69) then goto _Label_70
	load	[r14+-32],r1
	cmp	r1,r0
	bne	_Label_70
!   Initialize the array size...
	mov	5,r1
	store	r1,[r14+-48]
!   _temp_71 = &_temp_67
	add	r14,-48,r1
	store	r1,[r14+-28]
!   make sure array has size 5
	load	[r14+-52],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,0
	be	_Label_782
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_782:
!   make sure array has size 5
	load	[r14+-28],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_66 = *_temp_71  (sizeInBytes=12)
	load	[r14+-28],r5
	load	[r14+-52],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
! ASSIGNMENT STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0AS",r10
!   _Global_barberStatus = 1		(4 bytes)
	mov	1,r1
	set	_Global_barberStatus,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   _Global_onBarberSeat = _StringConst_1
	set	_StringConst_1,r1
	set	_Global_onBarberSeat,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0SE",r10
!   _temp_72 = &_Global_customers
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
	mov	40,r13		! source line 40
	mov	"\0\0SE",r10
!   _temp_73 = &_Global_barbers
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
	mov	41,r13		! source line 41
	mov	"\0\0SE",r10
!   _temp_74 = &_Global_mutex
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
	mov	42,r13		! source line 42
	mov	"\0\0SE",r10
!   _temp_75 = &_Global_printMu
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
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   _Global_waiting = 0		(4 bytes)
	mov	0,r1
	set	_Global_waiting,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_57_Init:
	.word	_sourceFileName
	.word	_Label_76
	.word	0		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_77
	.word	-12
	.word	4
	.word	_Label_78
	.word	-16
	.word	4
	.word	_Label_79
	.word	-20
	.word	4
	.word	_Label_80
	.word	-24
	.word	4
	.word	_Label_81
	.word	-28
	.word	4
	.word	_Label_82
	.word	-32
	.word	4
	.word	_Label_83
	.word	-36
	.word	4
	.word	_Label_84
	.word	-48
	.word	12
	.word	_Label_85
	.word	-52
	.word	4
	.word	_Label_86
	.word	-56
	.word	4
	.word	_Label_87
	.word	-60
	.word	4
	.word	_Label_88
	.word	-64
	.word	4
	.word	_Label_89
	.word	-68
	.word	4
	.word	0
_Label_76:
	.ascii	"Init\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
! 
! ===============  FUNCTION Barber  ===============
! 
_function_56_Barber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_56_Barber,r1
	push	r1
	mov	5,r1
_Label_783:
	push	r0
	sub	r1,1,r1
	bne	_Label_783
	mov	47,r13		! source line 47
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0WH",r10
_Label_90:
!	jmp	_Label_91
_Label_91:
	mov	48,r13		! source line 48
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0SE",r10
!   _temp_93 = &_Global_customers
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
	mov	50,r13		! source line 50
	mov	"\0\0SE",r10
!   _temp_94 = &_Global_mutex
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
	mov	51,r13		! source line 51
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
	mov	52,r13		! source line 52
	mov	"\0\0SE",r10
!   _temp_95 = &_Global_barbers
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
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_96 = &_Global_mutex
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
	mov	54,r13		! source line 54
	mov	"\0\0CA",r10
	call	_function_53_CutHair
! END WHILE...
	jmp	_Label_90
_Label_92:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_56_Barber:
	.word	_sourceFileName
	.word	_Label_97
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_98
	.word	8
	.word	4
	.word	_Label_99
	.word	-12
	.word	4
	.word	_Label_100
	.word	-16
	.word	4
	.word	_Label_101
	.word	-20
	.word	4
	.word	_Label_102
	.word	-24
	.word	4
	.word	0
_Label_97:
	.ascii	"Barber\0"
	.align
_Label_98:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
! 
! ===============  FUNCTION Customer  ===============
! 
_function_55_Customer:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_55_Customer,r1
	push	r1
	mov	27,r1
_Label_784:
	push	r0
	sub	r1,1,r1
	bne	_Label_784
	mov	58,r13		! source line 58
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   k = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
! SEND STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0SE",r10
!   _temp_103 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-108]
!   Send message Down
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0SE",r10
!   _temp_104 = &_Global_printMu
	set	_Global_printMu,r1
	store	r1,[r14+-104]
!   Send message Down
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CA",r10
	call	_P_System_nl
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
	store	r1,[r14+-96]
!   Data Move: _temp_105 = *_temp_106  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_105  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	66,r13		! source line 66
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_107 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_107  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   _temp_108 = &_Global_printMu
	set	_Global_printMu,r1
	store	r1,[r14+-88]
!   Send message Up
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! IF STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0IF",r10
!   if _Global_waiting >= 5 then goto _Label_110		(int)
	set	_Global_waiting,r1
	load	[r1],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_110
!	jmp	_Label_109
_Label_109:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0WH",r10
_Label_111:
!   _temp_116 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-84]
!   Move address of _temp_116 [k ] into _temp_117
!     make sure index expr is >= 0
	load	[r14+-112],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Data Move: _temp_115 = *_temp_117  (sizeInBytes=1)
	load	[r14+-80],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   _temp_118 = _temp_115 XOR 101		(bool)
	loadb	[r14+-12],r1
	mov	101,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_118 then goto _Label_114 else goto _Label_113
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_113
	jmp	_Label_114
_Label_114:
!   if k >= 4 then goto _Label_113		(int)
	load	[r14+-112],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_113
!	jmp	_Label_112
_Label_112:
	mov	72,r13		! source line 72
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   k = k + 1		(int)
	load	[r14+-112],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! END WHILE...
	jmp	_Label_111
_Label_113:
! CALL STATEMENT...
!   _temp_120 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-76]
!   Move address of _temp_120 [k ] into _temp_121
!     make sure index expr is >= 0
	load	[r14+-112],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Data Move: _temp_119 = *_temp_121  (sizeInBytes=1)
	load	[r14+-72],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Prepare Argument: offset=8  value=_temp_119  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CE",r10
	call	printChar
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   _temp_122 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-68]
!   Move address of _temp_122 [k ] into _temp_123
!     make sure index expr is >= 0
	load	[r14+-112],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_126 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-56]
!   Data Move: _temp_125 = *_temp_126  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_125) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_125 [1 ] into _temp_127
!     make sure index expr is >= 0
	mov	1,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_124 = *_temp_127  (sizeInBytes=1)
	load	[r14+-52],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_123 = _temp_124  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-64],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0AS",r10
!   _Global_waiting = _Global_waiting + 1		(int)
	set	_Global_waiting,r1
	load	[r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_waiting,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	79,r13		! source line 79
	mov	"\0\0CA",r10
	call	_function_52_PrintState
! SEND STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0SE",r10
!   _temp_128 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-48]
!   Send message Up
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0SE",r10
!   _temp_129 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-44]
!   Send message Up
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   _temp_130 = &_Global_barbers
	set	_Global_barbers,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CA",r10
	call	_function_54_HairCut
	jmp	_Label_131
_Label_110:
! ELSE...
	mov	85,r13		! source line 85
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_132 = &_Global_printMu
	set	_Global_printMu,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	86,r13		! source line 86
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_134 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-28]
!   Data Move: _temp_133 = *_temp_134  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_133  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_135 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_135  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	88,r13		! source line 88
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	89,r13		! source line 89
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0SE",r10
!   _temp_136 = &_Global_printMu
	set	_Global_printMu,r1
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
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_137 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_131:
! RETURN STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0RE",r10
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_55_Customer:
	.word	_sourceFileName
	.word	_Label_138
	.word	4		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_139
	.word	8
	.word	4
	.word	_Label_140
	.word	-16
	.word	4
	.word	_Label_141
	.word	-20
	.word	4
	.word	_Label_142
	.word	-24
	.word	4
	.word	_Label_143
	.word	-28
	.word	4
	.word	_Label_144
	.word	-32
	.word	4
	.word	_Label_145
	.word	-36
	.word	4
	.word	_Label_146
	.word	-40
	.word	4
	.word	_Label_147
	.word	-44
	.word	4
	.word	_Label_148
	.word	-48
	.word	4
	.word	_Label_149
	.word	-52
	.word	4
	.word	_Label_150
	.word	-56
	.word	4
	.word	_Label_151
	.word	-60
	.word	4
	.word	_Label_152
	.word	-9
	.word	1
	.word	_Label_153
	.word	-64
	.word	4
	.word	_Label_154
	.word	-68
	.word	4
	.word	_Label_155
	.word	-72
	.word	4
	.word	_Label_156
	.word	-76
	.word	4
	.word	_Label_157
	.word	-10
	.word	1
	.word	_Label_158
	.word	-11
	.word	1
	.word	_Label_159
	.word	-80
	.word	4
	.word	_Label_160
	.word	-84
	.word	4
	.word	_Label_161
	.word	-12
	.word	1
	.word	_Label_162
	.word	-88
	.word	4
	.word	_Label_163
	.word	-92
	.word	4
	.word	_Label_164
	.word	-96
	.word	4
	.word	_Label_165
	.word	-100
	.word	4
	.word	_Label_166
	.word	-104
	.word	4
	.word	_Label_167
	.word	-108
	.word	4
	.word	_Label_168
	.word	-112
	.word	4
	.word	0
_Label_138:
	.ascii	"Customer\0"
	.align
_Label_139:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_152:
	.byte	'C'
	.ascii	"_temp_124\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_157:
	.byte	'C'
	.ascii	"_temp_119\0"
	.align
_Label_158:
	.byte	'C'
	.ascii	"_temp_118\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_161:
	.byte	'C'
	.ascii	"_temp_115\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_168:
	.byte	'I'
	.ascii	"k\0"
	.align
! 
! ===============  FUNCTION HairCut  ===============
! 
_function_54_HairCut:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_54_HairCut,r1
	push	r1
	mov	16,r1
_Label_785:
	push	r0
	sub	r1,1,r1
	bne	_Label_785
	mov	95,r13		! source line 95
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0AS",r10
!   j = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0SE",r10
!   _temp_169 = &_Global_printMu
	set	_Global_printMu,r1
	store	r1,[r14+-64]
!   Send message Down
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	100,r13		! source line 100
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_171 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-56]
!   Data Move: _temp_170 = *_temp_171  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_170  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	101,r13		! source line 101
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_172 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_172  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	102,r13		! source line 102
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	103,r13		! source line 103
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0SE",r10
!   _temp_173 = &_Global_printMu
	set	_Global_printMu,r1
	store	r1,[r14+-48]
!   Send message Up
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! WHILE STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0WH",r10
_Label_174:
!   _temp_178 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-44]
!   Move address of _temp_178 [j ] into _temp_179
!     make sure index expr is >= 0
	load	[r14+-68],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Data Move: _temp_177 = *_temp_179  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_182 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-32]
!   Data Move: _temp_181 = *_temp_182  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_181) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_181 [1 ] into _temp_183
!     make sure index expr is >= 0
	mov	1,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: _temp_180 = *_temp_183  (sizeInBytes=1)
	load	[r14+-28],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_184 = _temp_177 XOR _temp_180		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+-10],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_184 then goto _Label_175 else goto _Label_176
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_176
	jmp	_Label_175
_Label_175:
	mov	105,r13		! source line 105
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0AS",r10
!   j = j + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! END WHILE...
	jmp	_Label_174
_Label_176:
! ASSIGNMENT STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0AS",r10
!   _temp_185 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-24]
!   Move address of _temp_185 [j ] into _temp_186
!     make sure index expr is >= 0
	load	[r14+-68],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_186 = 101  (sizeInBytes=1)
	mov	101,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0AS",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_187 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-16]
!   Data Move: _Global_onBarberSeat = *_temp_187  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	set	_Global_onBarberSeat,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0AS",r10
!   _Global_barberStatus = 2		(4 bytes)
	mov	2,r1
	set	_Global_barberStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CA",r10
	call	_function_52_PrintState
! RETURN STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_54_HairCut:
	.word	_sourceFileName
	.word	_Label_188
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_189
	.word	-16
	.word	4
	.word	_Label_190
	.word	-20
	.word	4
	.word	_Label_191
	.word	-24
	.word	4
	.word	_Label_192
	.word	-9
	.word	1
	.word	_Label_193
	.word	-28
	.word	4
	.word	_Label_194
	.word	-32
	.word	4
	.word	_Label_195
	.word	-36
	.word	4
	.word	_Label_196
	.word	-10
	.word	1
	.word	_Label_197
	.word	-40
	.word	4
	.word	_Label_198
	.word	-44
	.word	4
	.word	_Label_199
	.word	-11
	.word	1
	.word	_Label_200
	.word	-48
	.word	4
	.word	_Label_201
	.word	-52
	.word	4
	.word	_Label_202
	.word	-56
	.word	4
	.word	_Label_203
	.word	-60
	.word	4
	.word	_Label_204
	.word	-64
	.word	4
	.word	_Label_205
	.word	-68
	.word	4
	.word	0
_Label_188:
	.ascii	"HairCut\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_192:
	.byte	'C'
	.ascii	"_temp_184\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_196:
	.byte	'C'
	.ascii	"_temp_180\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_199:
	.byte	'C'
	.ascii	"_temp_177\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_205:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  FUNCTION CutHair  ===============
! 
_function_53_CutHair:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_53_CutHair,r1
	push	r1
	mov	1,r1
_Label_786:
	push	r0
	sub	r1,1,r1
	bne	_Label_786
	mov	115,r13		! source line 115
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0AS",r10
!   _Global_onBarberSeat = _StringConst_5
	set	_StringConst_5,r1
	set	_Global_onBarberSeat,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0AS",r10
!   _Global_barberStatus = 1		(4 bytes)
	mov	1,r1
	set	_Global_barberStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_53_CutHair:
	.word	_sourceFileName
	.word	_Label_206
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_206:
	.ascii	"CutHair\0"
	.align
! 
! ===============  FUNCTION PrintState  ===============
! 
_function_52_PrintState:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_52_PrintState,r1
	push	r1
	mov	18,r1
_Label_787:
	push	r0
	sub	r1,1,r1
	bne	_Label_787
	mov	121,r13		! source line 121
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
!   _temp_207 = &_Global_printMu
	set	_Global_printMu,r1
	store	r1,[r14+-72]
!   Send message Down
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_208 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_208  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=_Global_waiting  sizeInBytes=4
	set	_Global_waiting,r1
	load	[r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	129,r13		! source line 129
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_209 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_209  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	131,r13		! source line 131
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
! FOR STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_214 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_215 = 4		(4 bytes)
	mov	4,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_214  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-76]
_Label_210:
!   Perform the FOR-LOOP termination test
!   if i > _temp_215 then goto _Label_213		
	load	[r14+-76],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_213
_Label_211:
	mov	133,r13		! source line 133
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_217 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-52]
!   Move address of _temp_217 [i ] into _temp_218
!     make sure index expr is >= 0
	load	[r14+-76],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_216 = *_temp_218  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_216  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_219 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	135,r13		! source line 135
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_212:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_210
! END FOR
_Label_213:
! CALL STATEMENT...
!   Call the function
	mov	137,r13		! source line 137
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_220 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	139,r13		! source line 139
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=_Global_barberStatus  sizeInBytes=4
	set	_Global_barberStatus,r1
	load	[r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	140,r13		! source line 140
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_221 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_221  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	141,r13		! source line 141
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=_Global_onBarberSeat  sizeInBytes=4
	set	_Global_onBarberSeat,r1
	load	[r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	142,r13		! source line 142
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_222 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_223 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_223  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_224 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_224  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_225 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_225  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	149,r13		! source line 149
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
!   _temp_226 = &_Global_printMu
	set	_Global_printMu,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_52_PrintState:
	.word	_sourceFileName
	.word	_Label_227
	.word	0		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_228
	.word	-16
	.word	4
	.word	_Label_229
	.word	-20
	.word	4
	.word	_Label_230
	.word	-24
	.word	4
	.word	_Label_231
	.word	-28
	.word	4
	.word	_Label_232
	.word	-32
	.word	4
	.word	_Label_233
	.word	-36
	.word	4
	.word	_Label_234
	.word	-40
	.word	4
	.word	_Label_235
	.word	-44
	.word	4
	.word	_Label_236
	.word	-48
	.word	4
	.word	_Label_237
	.word	-52
	.word	4
	.word	_Label_238
	.word	-9
	.word	1
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
	.word	0
_Label_227:
	.ascii	"PrintState\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_238:
	.byte	'C'
	.ascii	"_temp_216\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_244:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION TestBarberShop  ===============
! 
_function_51_TestBarberShop:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_51_TestBarberShop,r1
	push	r1
	mov	21618,r1
_Label_788:
	push	r0
	sub	r1,1,r1
	bne	_Label_788
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_245 = _StringConst_15
	set	_StringConst_15,r1
	set	-86468,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_245  sizeInBytes=4
	set	-86468,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	157,r13		! source line 157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	158,r13		! source line 158
	mov	"\0\0CA",r10
	call	_function_57_Init
! ASSIGNMENT STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barberThread = zeros  (sizeInBytes=4092)
	set	_Global_barberThread,r4
	mov	1023,r3
_Label_789:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_789
!   _Global_barberThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_Global_barberThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0SE",r10
!   _temp_247 = _StringConst_16
	set	_StringConst_16,r1
	set	-86460,r2
	store	r1,[r14+r2]
!   _temp_248 = &_Global_barberThread
	set	_Global_barberThread,r1
	set	-86456,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=_temp_247  sizeInBytes=4
	set	-86460,r1
	load	[r14+r1],r1
	store	r1,[r15+4]
!   Send message Init
	set	-86456,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0SE",r10
!   _temp_249 = _function_56_Barber
	set	_function_56_Barber,r1
	set	-86452,r2
	store	r1,[r14+r2]
!   _temp_250 = &_Global_barberThread
	set	_Global_barberThread,r1
	set	-86448,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=_temp_249  sizeInBytes=4
	set	-86452,r1
	load	[r14+r1],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	set	-86448,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   _temp_251 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	set	-86444,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_253 = &_temp_252
	set	-86440,r1
	add	r14,r1,r1
	store	r1,[r14+-4596]
!   _temp_253 = _temp_253 + 4
	load	[r14+-4596],r1
	add	r1,4,r1
	store	r1,[r14+-4596]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_255 = zeros  (sizeInBytes=4092)
	add	r14,-4588,r4
	mov	1023,r3
_Label_790:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_790
!   _temp_255 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4588]
	mov	20,r1
	store	r1,[r14+-4592]
_Label_257:
!   Data Move: *_temp_253 = _temp_255  (sizeInBytes=4092)
	add	r14,-4588,r5
	load	[r14+-4596],r4
	mov	1023,r3
_Label_791:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_791
!   _temp_253 = _temp_253 + 4092
	load	[r14+-4596],r1
	add	r1,4092,r1
	store	r1,[r14+-4596]
!   _temp_254 = _temp_254 + -1
	load	[r14+-4592],r1
	add	r1,-1,r1
	store	r1,[r14+-4592]
!   if intNotZero (_temp_254) then goto _Label_257
	load	[r14+-4592],r1
	cmp	r1,r0
	bne	_Label_257
!   Initialize the array size...
	mov	20,r1
	set	-86440,r2
	store	r1,[r14+r2]
!   _temp_258 = &_temp_252
	set	-86440,r1
	add	r14,r1,r1
	store	r1,[r14+-492]
!   make sure array has size 20
	set	-86444,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_792
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_792:
!   make sure array has size 20
	load	[r14+-492],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_251 = *_temp_258  (sizeInBytes=81844)
	load	[r14+-492],r5
	set	-86444,r4
	load	[r14+r4],r4
	mov	20461,r3
_Label_793:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_793
! SEND STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0SE",r10
!   _temp_259 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-488]
!   _temp_260 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-484]
!   Move address of _temp_260 [0 ] into _temp_261
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-484],r1
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
	store	r2,[r14+-480]
!   Prepare Argument: offset=12  value=_temp_259  sizeInBytes=4
	load	[r14+-488],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-480],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0SE",r10
!   _temp_262 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-476]
!   _temp_263 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-472]
!   Move address of _temp_263 [0 ] into _temp_264
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-472],r1
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
	store	r2,[r14+-468]
!   Prepare Argument: offset=12  value=_temp_262  sizeInBytes=4
	load	[r14+-476],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-468],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0SE",r10
!   _temp_265 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-464]
!   _temp_266 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-460]
!   Move address of _temp_266 [1 ] into _temp_267
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-460],r1
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
	store	r2,[r14+-456]
!   Prepare Argument: offset=12  value=_temp_265  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-456],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0SE",r10
!   _temp_268 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-452]
!   _temp_269 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-448]
!   Move address of _temp_269 [1 ] into _temp_270
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-448],r1
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
	store	r2,[r14+-444]
!   Prepare Argument: offset=12  value=_temp_268  sizeInBytes=4
	load	[r14+-452],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-444],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0SE",r10
!   _temp_271 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-440]
!   _temp_272 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-436]
!   Move address of _temp_272 [2 ] into _temp_273
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-436],r1
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
	store	r2,[r14+-432]
!   Prepare Argument: offset=12  value=_temp_271  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-432],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0SE",r10
!   _temp_274 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-428]
!   _temp_275 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-424]
!   Move address of _temp_275 [2 ] into _temp_276
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-424],r1
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
	store	r2,[r14+-420]
!   Prepare Argument: offset=12  value=_temp_274  sizeInBytes=4
	load	[r14+-428],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-420],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0SE",r10
!   _temp_277 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-416]
!   _temp_278 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-412]
!   Move address of _temp_278 [3 ] into _temp_279
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-412],r1
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
	store	r2,[r14+-408]
!   Prepare Argument: offset=12  value=_temp_277  sizeInBytes=4
	load	[r14+-416],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-408],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0SE",r10
!   _temp_280 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-404]
!   _temp_281 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-400]
!   Move address of _temp_281 [3 ] into _temp_282
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-400],r1
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
	store	r2,[r14+-396]
!   Prepare Argument: offset=12  value=_temp_280  sizeInBytes=4
	load	[r14+-404],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-396],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	179,r13		! source line 179
	mov	"\0\0SE",r10
!   _temp_283 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-392]
!   _temp_284 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-388]
!   Move address of _temp_284 [4 ] into _temp_285
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-388],r1
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
	store	r2,[r14+-384]
!   Prepare Argument: offset=12  value=_temp_283  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-384],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0SE",r10
!   _temp_286 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-380]
!   _temp_287 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-376]
!   Move address of _temp_287 [4 ] into _temp_288
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-376],r1
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
	store	r2,[r14+-372]
!   Prepare Argument: offset=12  value=_temp_286  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-372],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0SE",r10
!   _temp_289 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-368]
!   _temp_290 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-364]
!   Move address of _temp_290 [5 ] into _temp_291
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-364],r1
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
	store	r2,[r14+-360]
!   Prepare Argument: offset=12  value=_temp_289  sizeInBytes=4
	load	[r14+-368],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-360],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_292 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-356]
!   _temp_293 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-352]
!   Move address of _temp_293 [5 ] into _temp_294
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-352],r1
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
	store	r2,[r14+-348]
!   Prepare Argument: offset=12  value=_temp_292  sizeInBytes=4
	load	[r14+-356],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-348],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0SE",r10
!   _temp_295 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-344]
!   _temp_296 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-340]
!   Move address of _temp_296 [6 ] into _temp_297
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-340],r1
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
	store	r2,[r14+-336]
!   Prepare Argument: offset=12  value=_temp_295  sizeInBytes=4
	load	[r14+-344],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-336],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0SE",r10
!   _temp_298 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-332]
!   _temp_299 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-328]
!   Move address of _temp_299 [6 ] into _temp_300
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-328],r1
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
	store	r2,[r14+-324]
!   Prepare Argument: offset=12  value=_temp_298  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-324],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0SE",r10
!   _temp_301 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-320]
!   _temp_302 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-316]
!   Move address of _temp_302 [7 ] into _temp_303
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-316],r1
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
	store	r2,[r14+-312]
!   Prepare Argument: offset=12  value=_temp_301  sizeInBytes=4
	load	[r14+-320],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0SE",r10
!   _temp_304 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-308]
!   _temp_305 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-304]
!   Move address of _temp_305 [7 ] into _temp_306
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-304],r1
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
	store	r2,[r14+-300]
!   Prepare Argument: offset=12  value=_temp_304  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-300],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0SE",r10
!   _temp_307 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-296]
!   _temp_308 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-292]
!   Move address of _temp_308 [8 ] into _temp_309
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-292],r1
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
	store	r2,[r14+-288]
!   Prepare Argument: offset=12  value=_temp_307  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-288],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0SE",r10
!   _temp_310 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-284]
!   _temp_311 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-280]
!   Move address of _temp_311 [8 ] into _temp_312
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-280],r1
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
	store	r2,[r14+-276]
!   Prepare Argument: offset=12  value=_temp_310  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-276],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0SE",r10
!   _temp_313 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-272]
!   _temp_314 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-268]
!   Move address of _temp_314 [9 ] into _temp_315
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-268],r1
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
	store	r2,[r14+-264]
!   Prepare Argument: offset=12  value=_temp_313  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0SE",r10
!   _temp_316 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-260]
!   _temp_317 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-256]
!   Move address of _temp_317 [9 ] into _temp_318
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-256],r1
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
	store	r2,[r14+-252]
!   Prepare Argument: offset=12  value=_temp_316  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0SE",r10
!   _temp_319 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-248]
!   _temp_320 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-244]
!   Move address of _temp_320 [10 ] into _temp_321
!     make sure index expr is >= 0
	mov	10,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-244],r1
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
	store	r2,[r14+-240]
!   Prepare Argument: offset=12  value=_temp_319  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0SE",r10
!   _temp_322 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-236]
!   _temp_323 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-232]
!   Move address of _temp_323 [10 ] into _temp_324
!     make sure index expr is >= 0
	mov	10,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-232],r1
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
	store	r2,[r14+-228]
!   Prepare Argument: offset=12  value=_temp_322  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0SE",r10
!   _temp_325 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-224]
!   _temp_326 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-220]
!   Move address of _temp_326 [11 ] into _temp_327
!     make sure index expr is >= 0
	mov	11,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-220],r1
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
	store	r2,[r14+-216]
!   Prepare Argument: offset=12  value=_temp_325  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0SE",r10
!   _temp_328 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-212]
!   _temp_329 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-208]
!   Move address of _temp_329 [11 ] into _temp_330
!     make sure index expr is >= 0
	mov	11,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-208],r1
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
	store	r2,[r14+-204]
!   Prepare Argument: offset=12  value=_temp_328  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=11  sizeInBytes=4
	mov	11,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0SE",r10
!   _temp_331 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-200]
!   _temp_332 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-196]
!   Move address of _temp_332 [12 ] into _temp_333
!     make sure index expr is >= 0
	mov	12,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
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
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_331  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0SE",r10
!   _temp_334 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-188]
!   _temp_335 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-184]
!   Move address of _temp_335 [12 ] into _temp_336
!     make sure index expr is >= 0
	mov	12,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_334  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=12  sizeInBytes=4
	mov	12,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0SE",r10
!   _temp_337 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-176]
!   _temp_338 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-172]
!   Move address of _temp_338 [13 ] into _temp_339
!     make sure index expr is >= 0
	mov	13,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
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
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_337  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0SE",r10
!   _temp_340 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-164]
!   _temp_341 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-160]
!   Move address of _temp_341 [13 ] into _temp_342
!     make sure index expr is >= 0
	mov	13,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
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
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_340  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=13  sizeInBytes=4
	mov	13,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0SE",r10
!   _temp_343 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-152]
!   _temp_344 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-148]
!   Move address of _temp_344 [14 ] into _temp_345
!     make sure index expr is >= 0
	mov	14,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
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
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_343  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0SE",r10
!   _temp_346 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-140]
!   _temp_347 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-136]
!   Move address of _temp_347 [14 ] into _temp_348
!     make sure index expr is >= 0
	mov	14,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
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
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_346  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=14  sizeInBytes=4
	mov	14,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0SE",r10
!   _temp_349 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-128]
!   _temp_350 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-124]
!   Move address of _temp_350 [15 ] into _temp_351
!     make sure index expr is >= 0
	mov	15,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_349  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0SE",r10
!   _temp_352 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-116]
!   _temp_353 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-112]
!   Move address of _temp_353 [15 ] into _temp_354
!     make sure index expr is >= 0
	mov	15,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
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
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_352  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=15  sizeInBytes=4
	mov	15,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0SE",r10
!   _temp_355 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-104]
!   _temp_356 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-100]
!   Move address of _temp_356 [16 ] into _temp_357
!     make sure index expr is >= 0
	mov	16,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_355  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
!   _temp_358 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-92]
!   _temp_359 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-88]
!   Move address of _temp_359 [16 ] into _temp_360
!     make sure index expr is >= 0
	mov	16,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
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
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_358  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=16  sizeInBytes=4
	mov	16,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0SE",r10
!   _temp_361 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-80]
!   _temp_362 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-76]
!   Move address of _temp_362 [17 ] into _temp_363
!     make sure index expr is >= 0
	mov	17,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
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
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_361  sizeInBytes=4
	load	[r14+-80],r1
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
	mov	219,r13		! source line 219
	mov	"\0\0SE",r10
!   _temp_364 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-68]
!   _temp_365 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-64]
!   Move address of _temp_365 [17 ] into _temp_366
!     make sure index expr is >= 0
	mov	17,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_364  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=17  sizeInBytes=4
	mov	17,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0SE",r10
!   _temp_367 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-56]
!   _temp_368 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-52]
!   Move address of _temp_368 [18 ] into _temp_369
!     make sure index expr is >= 0
	mov	18,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_367  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0SE",r10
!   _temp_370 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-44]
!   _temp_371 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-40]
!   Move address of _temp_371 [18 ] into _temp_372
!     make sure index expr is >= 0
	mov	18,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_370  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=18  sizeInBytes=4
	mov	18,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0SE",r10
!   _temp_373 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-32]
!   _temp_374 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-28]
!   Move address of _temp_374 [19 ] into _temp_375
!     make sure index expr is >= 0
	mov	19,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_373  sizeInBytes=4
	load	[r14+-32],r1
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
	mov	225,r13		! source line 225
	mov	"\0\0SE",r10
!   _temp_376 = _function_55_Customer
	set	_function_55_Customer,r1
	store	r1,[r14+-20]
!   _temp_377 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-16]
!   Move address of _temp_377 [19 ] into _temp_378
!     make sure index expr is >= 0
	mov	19,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_376  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=19  sizeInBytes=4
	mov	19,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	227,r13		! source line 227
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0RE",r10
	set	86476,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_51_TestBarberShop:
	.word	_sourceFileName
	.word	_Label_379
	.word	0		! total size of parameters
	.word	86472		! frame size = 86472
	.word	_Label_380
	.word	-12
	.word	4
	.word	_Label_381
	.word	-16
	.word	4
	.word	_Label_382
	.word	-20
	.word	4
	.word	_Label_383
	.word	-24
	.word	4
	.word	_Label_384
	.word	-28
	.word	4
	.word	_Label_385
	.word	-32
	.word	4
	.word	_Label_386
	.word	-36
	.word	4
	.word	_Label_387
	.word	-40
	.word	4
	.word	_Label_388
	.word	-44
	.word	4
	.word	_Label_389
	.word	-48
	.word	4
	.word	_Label_390
	.word	-52
	.word	4
	.word	_Label_391
	.word	-56
	.word	4
	.word	_Label_392
	.word	-60
	.word	4
	.word	_Label_393
	.word	-64
	.word	4
	.word	_Label_394
	.word	-68
	.word	4
	.word	_Label_395
	.word	-72
	.word	4
	.word	_Label_396
	.word	-76
	.word	4
	.word	_Label_397
	.word	-80
	.word	4
	.word	_Label_398
	.word	-84
	.word	4
	.word	_Label_399
	.word	-88
	.word	4
	.word	_Label_400
	.word	-92
	.word	4
	.word	_Label_401
	.word	-96
	.word	4
	.word	_Label_402
	.word	-100
	.word	4
	.word	_Label_403
	.word	-104
	.word	4
	.word	_Label_404
	.word	-108
	.word	4
	.word	_Label_405
	.word	-112
	.word	4
	.word	_Label_406
	.word	-116
	.word	4
	.word	_Label_407
	.word	-120
	.word	4
	.word	_Label_408
	.word	-124
	.word	4
	.word	_Label_409
	.word	-128
	.word	4
	.word	_Label_410
	.word	-132
	.word	4
	.word	_Label_411
	.word	-136
	.word	4
	.word	_Label_412
	.word	-140
	.word	4
	.word	_Label_413
	.word	-144
	.word	4
	.word	_Label_414
	.word	-148
	.word	4
	.word	_Label_415
	.word	-152
	.word	4
	.word	_Label_416
	.word	-156
	.word	4
	.word	_Label_417
	.word	-160
	.word	4
	.word	_Label_418
	.word	-164
	.word	4
	.word	_Label_419
	.word	-168
	.word	4
	.word	_Label_420
	.word	-172
	.word	4
	.word	_Label_421
	.word	-176
	.word	4
	.word	_Label_422
	.word	-180
	.word	4
	.word	_Label_423
	.word	-184
	.word	4
	.word	_Label_424
	.word	-188
	.word	4
	.word	_Label_425
	.word	-192
	.word	4
	.word	_Label_426
	.word	-196
	.word	4
	.word	_Label_427
	.word	-200
	.word	4
	.word	_Label_428
	.word	-204
	.word	4
	.word	_Label_429
	.word	-208
	.word	4
	.word	_Label_430
	.word	-212
	.word	4
	.word	_Label_431
	.word	-216
	.word	4
	.word	_Label_432
	.word	-220
	.word	4
	.word	_Label_433
	.word	-224
	.word	4
	.word	_Label_434
	.word	-228
	.word	4
	.word	_Label_435
	.word	-232
	.word	4
	.word	_Label_436
	.word	-236
	.word	4
	.word	_Label_437
	.word	-240
	.word	4
	.word	_Label_438
	.word	-244
	.word	4
	.word	_Label_439
	.word	-248
	.word	4
	.word	_Label_440
	.word	-252
	.word	4
	.word	_Label_441
	.word	-256
	.word	4
	.word	_Label_442
	.word	-260
	.word	4
	.word	_Label_443
	.word	-264
	.word	4
	.word	_Label_444
	.word	-268
	.word	4
	.word	_Label_445
	.word	-272
	.word	4
	.word	_Label_446
	.word	-276
	.word	4
	.word	_Label_447
	.word	-280
	.word	4
	.word	_Label_448
	.word	-284
	.word	4
	.word	_Label_449
	.word	-288
	.word	4
	.word	_Label_450
	.word	-292
	.word	4
	.word	_Label_451
	.word	-296
	.word	4
	.word	_Label_452
	.word	-300
	.word	4
	.word	_Label_453
	.word	-304
	.word	4
	.word	_Label_454
	.word	-308
	.word	4
	.word	_Label_455
	.word	-312
	.word	4
	.word	_Label_456
	.word	-316
	.word	4
	.word	_Label_457
	.word	-320
	.word	4
	.word	_Label_458
	.word	-324
	.word	4
	.word	_Label_459
	.word	-328
	.word	4
	.word	_Label_460
	.word	-332
	.word	4
	.word	_Label_461
	.word	-336
	.word	4
	.word	_Label_462
	.word	-340
	.word	4
	.word	_Label_463
	.word	-344
	.word	4
	.word	_Label_464
	.word	-348
	.word	4
	.word	_Label_465
	.word	-352
	.word	4
	.word	_Label_466
	.word	-356
	.word	4
	.word	_Label_467
	.word	-360
	.word	4
	.word	_Label_468
	.word	-364
	.word	4
	.word	_Label_469
	.word	-368
	.word	4
	.word	_Label_470
	.word	-372
	.word	4
	.word	_Label_471
	.word	-376
	.word	4
	.word	_Label_472
	.word	-380
	.word	4
	.word	_Label_473
	.word	-384
	.word	4
	.word	_Label_474
	.word	-388
	.word	4
	.word	_Label_475
	.word	-392
	.word	4
	.word	_Label_476
	.word	-396
	.word	4
	.word	_Label_477
	.word	-400
	.word	4
	.word	_Label_478
	.word	-404
	.word	4
	.word	_Label_479
	.word	-408
	.word	4
	.word	_Label_480
	.word	-412
	.word	4
	.word	_Label_481
	.word	-416
	.word	4
	.word	_Label_482
	.word	-420
	.word	4
	.word	_Label_483
	.word	-424
	.word	4
	.word	_Label_484
	.word	-428
	.word	4
	.word	_Label_485
	.word	-432
	.word	4
	.word	_Label_486
	.word	-436
	.word	4
	.word	_Label_487
	.word	-440
	.word	4
	.word	_Label_488
	.word	-444
	.word	4
	.word	_Label_489
	.word	-448
	.word	4
	.word	_Label_490
	.word	-452
	.word	4
	.word	_Label_491
	.word	-456
	.word	4
	.word	_Label_492
	.word	-460
	.word	4
	.word	_Label_493
	.word	-464
	.word	4
	.word	_Label_494
	.word	-468
	.word	4
	.word	_Label_495
	.word	-472
	.word	4
	.word	_Label_496
	.word	-476
	.word	4
	.word	_Label_497
	.word	-480
	.word	4
	.word	_Label_498
	.word	-484
	.word	4
	.word	_Label_499
	.word	-488
	.word	4
	.word	_Label_500
	.word	-492
	.word	4
	.word	_Label_501
	.word	-496
	.word	4
	.word	_Label_502
	.word	-4588
	.word	4092
	.word	_Label_503
	.word	-4592
	.word	4
	.word	_Label_504
	.word	-4596
	.word	4
	.word	_Label_505
	.word	-86440
	.word	81844
	.word	_Label_506
	.word	-86444
	.word	4
	.word	_Label_507
	.word	-86448
	.word	4
	.word	_Label_508
	.word	-86452
	.word	4
	.word	_Label_509
	.word	-86456
	.word	4
	.word	_Label_510
	.word	-86460
	.word	4
	.word	_Label_511
	.word	-86464
	.word	4
	.word	_Label_512
	.word	-86468
	.word	4
	.word	0
_Label_379:
	.ascii	"TestBarberShop\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
! 
! ===============  FUNCTION GamingParlor  ===============
! 
_function_50_GamingParlor:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_50_GamingParlor,r1
	push	r1
	mov	56,r1
_Label_794:
	push	r0
	sub	r1,1,r1
	bne	_Label_794
	mov	241,r13		! source line 241
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_mon = zeros  (sizeInBytes=104)
	set	_Global_mon,r4
	mov	26,r3
_Label_795:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_795
!   _Global_mon = _P_Main_GamingParlorMonitor
	set	_P_Main_GamingParlorMonitor,r1
	set	_Global_mon,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0SE",r10
!   _temp_514 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-216]
!   Send message Init
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_mut = zeros  (sizeInBytes=20)
	set	_Global_mut,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_mut = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_mut,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0SE",r10
!   _temp_516 = &_Global_mut
	set	_Global_mut,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-208],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0SE",r10
!   _temp_517 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-204]
!   Send message PrintAllStatus
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0SE",r10
!   _temp_518 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-200]
!   _temp_519 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-196]
!   Move address of _temp_519 [0 ] into _temp_520
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
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
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_518  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_521 = _function_49_Play
	set	_function_49_Play,r1
	store	r1,[r14+-188]
!   _temp_522 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-184]
!   Move address of _temp_522 [0 ] into _temp_523
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_521  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=40  sizeInBytes=4
	mov	40,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_524 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-176]
!   _temp_525 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-172]
!   Move address of _temp_525 [1 ] into _temp_526
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
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
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_524  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_527 = _function_49_Play
	set	_function_49_Play,r1
	store	r1,[r14+-164]
!   _temp_528 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-160]
!   Move address of _temp_528 [1 ] into _temp_529
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
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
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_527  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=41  sizeInBytes=4
	mov	41,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_530 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-152]
!   _temp_531 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-148]
!   Move address of _temp_531 [2 ] into _temp_532
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
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
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_530  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_533 = _function_49_Play
	set	_function_49_Play,r1
	store	r1,[r14+-140]
!   _temp_534 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-136]
!   Move address of _temp_534 [2 ] into _temp_535
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
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
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_533  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=52  sizeInBytes=4
	mov	52,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0SE",r10
!   _temp_536 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-128]
!   _temp_537 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-124]
!   Move address of _temp_537 [3 ] into _temp_538
!     make sure index expr is >= 0
	mov	3,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_536  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0SE",r10
!   _temp_539 = _function_49_Play
	set	_function_49_Play,r1
	store	r1,[r14+-116]
!   _temp_540 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-112]
!   Move address of _temp_540 [3 ] into _temp_541
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
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
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_539  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=53  sizeInBytes=4
	mov	53,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0SE",r10
!   _temp_542 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-104]
!   _temp_543 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-100]
!   Move address of _temp_543 [4 ] into _temp_544
!     make sure index expr is >= 0
	mov	4,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_542  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	262,r13		! source line 262
	mov	"\0\0SE",r10
!   _temp_545 = _function_49_Play
	set	_function_49_Play,r1
	store	r1,[r14+-92]
!   _temp_546 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-88]
!   Move address of _temp_546 [4 ] into _temp_547
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
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
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_545  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=24  sizeInBytes=4
	mov	24,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0SE",r10
!   _temp_548 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-80]
!   _temp_549 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-76]
!   Move address of _temp_549 [5 ] into _temp_550
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
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
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_548  sizeInBytes=4
	load	[r14+-80],r1
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
	mov	265,r13		! source line 265
	mov	"\0\0SE",r10
!   _temp_551 = _function_49_Play
	set	_function_49_Play,r1
	store	r1,[r14+-68]
!   _temp_552 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-64]
!   Move address of _temp_552 [5 ] into _temp_553
!     make sure index expr is >= 0
	mov	5,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_551  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=25  sizeInBytes=4
	mov	25,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0SE",r10
!   _temp_554 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-56]
!   _temp_555 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-52]
!   Move address of _temp_555 [6 ] into _temp_556
!     make sure index expr is >= 0
	mov	6,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_554  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_557 = _function_49_Play
	set	_function_49_Play,r1
	store	r1,[r14+-44]
!   _temp_558 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-40]
!   Move address of _temp_558 [6 ] into _temp_559
!     make sure index expr is >= 0
	mov	6,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_557  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=16  sizeInBytes=4
	mov	16,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_560 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-32]
!   _temp_561 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-28]
!   Move address of _temp_561 [7 ] into _temp_562
!     make sure index expr is >= 0
	mov	7,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_560  sizeInBytes=4
	load	[r14+-32],r1
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
	mov	271,r13		! source line 271
	mov	"\0\0SE",r10
!   _temp_563 = _function_49_Play
	set	_function_49_Play,r1
	store	r1,[r14+-20]
!   _temp_564 = &_Global_teams
	set	_Global_teams,r1
	store	r1,[r14+-16]
!   Move address of _temp_564 [7 ] into _temp_565
!     make sure index expr is >= 0
	mov	7,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_563  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=17  sizeInBytes=4
	mov	17,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0RE",r10
	add	r15,228,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_50_GamingParlor:
	.word	_sourceFileName
	.word	_Label_566
	.word	0		! total size of parameters
	.word	224		! frame size = 224
	.word	_Label_567
	.word	-12
	.word	4
	.word	_Label_568
	.word	-16
	.word	4
	.word	_Label_569
	.word	-20
	.word	4
	.word	_Label_570
	.word	-24
	.word	4
	.word	_Label_571
	.word	-28
	.word	4
	.word	_Label_572
	.word	-32
	.word	4
	.word	_Label_573
	.word	-36
	.word	4
	.word	_Label_574
	.word	-40
	.word	4
	.word	_Label_575
	.word	-44
	.word	4
	.word	_Label_576
	.word	-48
	.word	4
	.word	_Label_577
	.word	-52
	.word	4
	.word	_Label_578
	.word	-56
	.word	4
	.word	_Label_579
	.word	-60
	.word	4
	.word	_Label_580
	.word	-64
	.word	4
	.word	_Label_581
	.word	-68
	.word	4
	.word	_Label_582
	.word	-72
	.word	4
	.word	_Label_583
	.word	-76
	.word	4
	.word	_Label_584
	.word	-80
	.word	4
	.word	_Label_585
	.word	-84
	.word	4
	.word	_Label_586
	.word	-88
	.word	4
	.word	_Label_587
	.word	-92
	.word	4
	.word	_Label_588
	.word	-96
	.word	4
	.word	_Label_589
	.word	-100
	.word	4
	.word	_Label_590
	.word	-104
	.word	4
	.word	_Label_591
	.word	-108
	.word	4
	.word	_Label_592
	.word	-112
	.word	4
	.word	_Label_593
	.word	-116
	.word	4
	.word	_Label_594
	.word	-120
	.word	4
	.word	_Label_595
	.word	-124
	.word	4
	.word	_Label_596
	.word	-128
	.word	4
	.word	_Label_597
	.word	-132
	.word	4
	.word	_Label_598
	.word	-136
	.word	4
	.word	_Label_599
	.word	-140
	.word	4
	.word	_Label_600
	.word	-144
	.word	4
	.word	_Label_601
	.word	-148
	.word	4
	.word	_Label_602
	.word	-152
	.word	4
	.word	_Label_603
	.word	-156
	.word	4
	.word	_Label_604
	.word	-160
	.word	4
	.word	_Label_605
	.word	-164
	.word	4
	.word	_Label_606
	.word	-168
	.word	4
	.word	_Label_607
	.word	-172
	.word	4
	.word	_Label_608
	.word	-176
	.word	4
	.word	_Label_609
	.word	-180
	.word	4
	.word	_Label_610
	.word	-184
	.word	4
	.word	_Label_611
	.word	-188
	.word	4
	.word	_Label_612
	.word	-192
	.word	4
	.word	_Label_613
	.word	-196
	.word	4
	.word	_Label_614
	.word	-200
	.word	4
	.word	_Label_615
	.word	-204
	.word	4
	.word	_Label_616
	.word	-208
	.word	4
	.word	_Label_617
	.word	-212
	.word	4
	.word	_Label_618
	.word	-216
	.word	4
	.word	_Label_619
	.word	-220
	.word	4
	.word	0
_Label_566:
	.ascii	"GamingParlor\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
! 
! ===============  FUNCTION Play  ===============
! 
_function_49_Play:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_49_Play,r1
	push	r1
	mov	9,r1
_Label_796:
	push	r0
	sub	r1,1,r1
	bne	_Label_796
	mov	277,r13		! source line 277
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0AS",r10
!   id = in rem 10		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	281,r13		! source line 281
	mov	"\0\0AS",r10
!   p = in - id		(int)
	load	[r14+8],r1
	load	[r14+-28],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
!   p = p div 10		(int)
	load	[r14+-32],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0WH",r10
_Label_620:
!   _temp_624 = &_Global_numOfPlayed
	set	_Global_numOfPlayed,r1
	store	r1,[r14+-20]
!   Move address of _temp_624 [id ] into _temp_625
!     make sure index expr is >= 0
	load	[r14+-28],r2
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
!   Data Move: _temp_623 = *_temp_625  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_623 >= 5 then goto _Label_622		(int)
	load	[r14+-24],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_622
!	jmp	_Label_621
_Label_621:
	mov	283,r13		! source line 283
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_626 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=id  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=p  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_620
_Label_622:
! RETURN STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_49_Play:
	.word	_sourceFileName
	.word	_Label_627
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_628
	.word	8
	.word	4
	.word	_Label_629
	.word	-12
	.word	4
	.word	_Label_630
	.word	-16
	.word	4
	.word	_Label_631
	.word	-20
	.word	4
	.word	_Label_632
	.word	-24
	.word	4
	.word	_Label_633
	.word	-28
	.word	4
	.word	_Label_634
	.word	-32
	.word	4
	.word	0
_Label_627:
	.ascii	"Play\0"
	.align
_Label_628:
	.byte	'I'
	.ascii	"in\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_633:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_634:
	.byte	'I'
	.ascii	"p\0"
	.align
! 
! ===============  CLASS GamingParlorMonitor  ===============
! 
! Dispatch Table:
! 
_P_Main_GamingParlorMonitor:
	.word	_Label_635
	jmp	_Method_P_Main_GamingParlorMonitor_1	! 4:	Init
	jmp	_Method_P_Main_GamingParlorMonitor_2	! 8:	Request
	jmp	_Method_P_Main_GamingParlorMonitor_3	! 12:	Return
	jmp	_Method_P_Main_GamingParlorMonitor_4	! 16:	PrintAllStatus
	.word	0
! 
! Class descriptor:
! 
_Label_635:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_636
	.word	_sourceFileName
	.word	288		! line number
	.word	104		! size of instances, in bytes
	.word	_P_Main_GamingParlorMonitor
	.word	_P_System_Object
	.word	0
_Label_636:
	.ascii	"GamingParlorMonitor\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_GamingParlorMonitor_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlorMonitor_1,r1
	push	r1
	mov	21,r1
_Label_797:
	push	r0
	sub	r1,1,r1
	bne	_Label_797
	mov	304,r13		! source line 304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: dices = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   dices = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0SE",r10
!   _temp_638 = &dices
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mute = zeros  (sizeInBytes=24)
	load	[r14+8],r4
	add	r4,76,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
	store	r0,[r4+20]
!   mute = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   _temp_640 = &mute
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: monitor = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   monitor = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_642 = &monitor
	load	[r14+8],r1
	add	r1,60,r1
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
	mov	311,r13		! source line 311
	mov	"\0\0AS",r10
!   available = 8		(4 bytes)
	mov	8,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0AS",r10
!   _temp_643 = &status
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   NEW ARRAY Constructor...
!   _temp_645 = &_temp_644
	add	r14,-56,r1
	store	r1,[r14+-20]
!   _temp_645 = _temp_645 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	8,r1
	store	r1,[r14+-16]
_Label_647:
!   Data Move: *_temp_645 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_645 = _temp_645 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_646 = _temp_646 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_646) then goto _Label_647
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_647
!   Initialize the array size...
	mov	8,r1
	store	r1,[r14+-56]
!   _temp_648 = &_temp_644
	add	r14,-56,r1
	store	r1,[r14+-12]
!   make sure array has size 8
	load	[r14+-60],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,0
	be	_Label_798
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_798:
!   make sure array has size 8
	load	[r14+-12],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_643 = *_temp_648  (sizeInBytes=36)
	load	[r14+-12],r5
	load	[r14+-60],r4
	mov	9,r3
_Label_799:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_799
! RETURN STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlorMonitor_1:
	.word	_sourceFileName
	.word	_Label_649
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_650
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_651
	.word	-12
	.word	4
	.word	_Label_652
	.word	-16
	.word	4
	.word	_Label_653
	.word	-20
	.word	4
	.word	_Label_654
	.word	-56
	.word	36
	.word	_Label_655
	.word	-60
	.word	4
	.word	_Label_656
	.word	-64
	.word	4
	.word	_Label_657
	.word	-68
	.word	4
	.word	_Label_658
	.word	-72
	.word	4
	.word	_Label_659
	.word	-76
	.word	4
	.word	_Label_660
	.word	-80
	.word	4
	.word	_Label_661
	.word	-84
	.word	4
	.word	0
_Label_649:
	.ascii	"GamingParlorMonitor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_650:
	.ascii	"Pself\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
! 
! ===============  METHOD Request  ===============
! 
_Method_P_Main_GamingParlorMonitor_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlorMonitor_2,r1
	push	r1
	mov	25,r1
_Label_800:
	push	r0
	sub	r1,1,r1
	bne	_Label_800
	mov	315,r13		! source line 315
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   _temp_662 = &mute
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-92]
!   Send message Lock
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0IF",r10
!   if available < numberOfDice then goto _Label_664		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_664
!	jmp	_Label_663
_Label_663:
! THEN...
	mov	319,r13		! source line 319
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	319,r13		! source line 319
	mov	"\0\0AS",r10
!   available = available - numberOfDice		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! FOR STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_669 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_670 = numberOfDice		(4 bytes)
	load	[r14+16],r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_669  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-96]
_Label_665:
!   Perform the FOR-LOOP termination test
!   if i > _temp_670 then goto _Label_668		
	load	[r14+-96],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_668
_Label_666:
	mov	320,r13		! source line 320
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	321,r13		! source line 321
	mov	"\0\0SE",r10
!   _temp_671 = &dices
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Send message Down
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_667:
!   i = i + 1
	load	[r14+-96],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
	jmp	_Label_665
! END FOR
_Label_668:
! ASSIGNMENT STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0AS",r10
!   _temp_672 = &status
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-76]
!   Move address of _temp_672 [teamId ] into _temp_673
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
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
	store	r2,[r14+-72]
!   Data Move: *_temp_673 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_674) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintAllStatus
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   _temp_675 = &_Global_numOfPlayed
	set	_Global_numOfPlayed,r1
	store	r1,[r14+-64]
!   Move address of _temp_675 [teamId ] into _temp_676
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_679 = &_Global_numOfPlayed
	set	_Global_numOfPlayed,r1
	store	r1,[r14+-48]
!   Move address of _temp_679 [teamId ] into _temp_680
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_678 = *_temp_680  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_677 = _temp_678 + 1		(int)
	load	[r14+-52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   Data Move: *_temp_676 = _temp_677  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-60],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_681 = &mute
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_682) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=teamId  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfDice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_683
_Label_664:
! ELSE...
	mov	330,r13		! source line 330
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   _temp_684 = &status
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Move address of _temp_684 [teamId ] into _temp_685
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
!   Data Move: *_temp_685 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_686) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintAllStatus
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0SE",r10
!   _temp_687 = &mute
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   _temp_688 = &monitor
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_687  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_683:
! SEND STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0SE",r10
!   _temp_689 = &mute
	load	[r14+8],r1
	add	r1,76,r1
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
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlorMonitor_2:
	.word	_sourceFileName
	.word	_Label_690
	.word	12		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_692
	.word	12
	.word	4
	.word	_Label_693
	.word	16
	.word	4
	.word	_Label_694
	.word	-12
	.word	4
	.word	_Label_695
	.word	-16
	.word	4
	.word	_Label_696
	.word	-20
	.word	4
	.word	_Label_697
	.word	-24
	.word	4
	.word	_Label_698
	.word	-28
	.word	4
	.word	_Label_699
	.word	-32
	.word	4
	.word	_Label_700
	.word	-36
	.word	4
	.word	_Label_701
	.word	-40
	.word	4
	.word	_Label_702
	.word	-44
	.word	4
	.word	_Label_703
	.word	-48
	.word	4
	.word	_Label_704
	.word	-52
	.word	4
	.word	_Label_705
	.word	-56
	.word	4
	.word	_Label_706
	.word	-60
	.word	4
	.word	_Label_707
	.word	-64
	.word	4
	.word	_Label_708
	.word	-68
	.word	4
	.word	_Label_709
	.word	-72
	.word	4
	.word	_Label_710
	.word	-76
	.word	4
	.word	_Label_711
	.word	-80
	.word	4
	.word	_Label_712
	.word	-84
	.word	4
	.word	_Label_713
	.word	-88
	.word	4
	.word	_Label_714
	.word	-92
	.word	4
	.word	_Label_715
	.word	-96
	.word	4
	.word	0
_Label_690:
	.ascii	"GamingParlorMonitor"
	.ascii	"::"
	.ascii	"Request\0"
	.align
_Label_691:
	.ascii	"Pself\0"
	.align
_Label_692:
	.byte	'I'
	.ascii	"teamId\0"
	.align
_Label_693:
	.byte	'I'
	.ascii	"numberOfDice\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Return  ===============
! 
_Method_P_Main_GamingParlorMonitor_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlorMonitor_3,r1
	push	r1
	mov	13,r1
_Label_801:
	push	r0
	sub	r1,1,r1
	bne	_Label_801
	mov	338,r13		! source line 338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0SE",r10
!   _temp_716 = &mute
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0AS",r10
!   available = available + numberOfDice		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! FOR STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_721 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_722 = numberOfDice		(4 bytes)
	load	[r14+16],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_721  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_717:
!   Perform the FOR-LOOP termination test
!   if i > _temp_722 then goto _Label_720		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_720
_Label_718:
	mov	342,r13		! source line 342
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0SE",r10
!   _temp_723 = &dices
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Send message Up
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_719:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_717
! END FOR
_Label_720:
! ASSIGNMENT STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0AS",r10
!   _temp_724 = &status
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Move address of _temp_724 [teamId ] into _temp_725
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
!   Data Move: *_temp_725 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_726) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintAllStatus
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0IF",r10
!   if available <= 0 then goto _Label_728		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_728
!	jmp	_Label_727
_Label_727:
! THEN...
	mov	349,r13		! source line 349
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0SE",r10
!   _temp_729 = &mute
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   _temp_730 = &monitor
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_729  sizeInBytes=4
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
! END IF...
_Label_728:
! SEND STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0SE",r10
!   _temp_731 = &mute
	load	[r14+8],r1
	add	r1,76,r1
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
	mov	351,r13		! source line 351
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlorMonitor_3:
	.word	_sourceFileName
	.word	_Label_732
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_733
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_734
	.word	12
	.word	4
	.word	_Label_735
	.word	16
	.word	4
	.word	_Label_736
	.word	-12
	.word	4
	.word	_Label_737
	.word	-16
	.word	4
	.word	_Label_738
	.word	-20
	.word	4
	.word	_Label_739
	.word	-24
	.word	4
	.word	_Label_740
	.word	-28
	.word	4
	.word	_Label_741
	.word	-32
	.word	4
	.word	_Label_742
	.word	-36
	.word	4
	.word	_Label_743
	.word	-40
	.word	4
	.word	_Label_744
	.word	-44
	.word	4
	.word	_Label_745
	.word	-48
	.word	4
	.word	_Label_746
	.word	-52
	.word	4
	.word	0
_Label_732:
	.ascii	"GamingParlorMonitor"
	.ascii	"::"
	.ascii	"Return\0"
	.align
_Label_733:
	.ascii	"Pself\0"
	.align
_Label_734:
	.byte	'I'
	.ascii	"teamId\0"
	.align
_Label_735:
	.byte	'I'
	.ascii	"numberOfDice\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_746:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD PrintAllStatus  ===============
! 
_Method_P_Main_GamingParlorMonitor_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlorMonitor_4,r1
	push	r1
	mov	13,r1
_Label_802:
	push	r0
	sub	r1,1,r1
	bne	_Label_802
	mov	354,r13		! source line 354
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0SE",r10
!   _temp_747 = &_Global_mut
	set	_Global_mut,r1
	store	r1,[r14+-52]
!   Send message Down
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_752 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_753 = 7		(4 bytes)
	mov	7,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: p = _temp_752  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_748:
!   Perform the FOR-LOOP termination test
!   if p > _temp_753 then goto _Label_751		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_751
_Label_749:
	mov	357,r13		! source line 357
	mov	"\0\0FB",r10
! SWITCH STATEMENT (using series of tests)...
	mov	358,r13		! source line 358
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   _temp_760 = &status
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   Move address of _temp_760 [p ] into _temp_761
!     make sure index expr is >= 0
	load	[r14+-56],r2
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
!   Data Move: _temp_759 = *_temp_761  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Branch to the right case label
	load	[r14+-40],r1
	cmp	r1,2
	be	_Label_756
	cmp	r1,1
	be	_Label_757
	cmp	r1,3
	be	_Label_758
	jmp	_Label_754
! CASE 2...
_Label_756:
! CALL STATEMENT...
!   _temp_762 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0BR",r10
	jmp	_Label_755
! CASE 1...
_Label_757:
! CALL STATEMENT...
!   _temp_763 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0BR",r10
	jmp	_Label_755
! CASE 3...
_Label_758:
! CALL STATEMENT...
!   _temp_764 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0BR",r10
	jmp	_Label_755
! DEFAULT CASE...
_Label_754:
! END SWITCH...
_Label_755:
!   Increment the FOR-LOOP index variable and jump back
_Label_750:
!   p = p + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_748
! END FOR
_Label_751:
! CALL STATEMENT...
!   Call the function
	mov	370,r13		! source line 370
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_765 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_765  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	371,r13		! source line 371
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=available  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+100],r1
	store	r1,[r15+0]
!   Call the function
	mov	372,r13		! source line 372
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	373,r13		! source line 373
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0SE",r10
!   _temp_766 = &_Global_mut
	set	_Global_mut,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlorMonitor_4:
	.word	_sourceFileName
	.word	_Label_767
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_768
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_769
	.word	-12
	.word	4
	.word	_Label_770
	.word	-16
	.word	4
	.word	_Label_771
	.word	-20
	.word	4
	.word	_Label_772
	.word	-24
	.word	4
	.word	_Label_773
	.word	-28
	.word	4
	.word	_Label_774
	.word	-32
	.word	4
	.word	_Label_775
	.word	-36
	.word	4
	.word	_Label_776
	.word	-40
	.word	4
	.word	_Label_777
	.word	-44
	.word	4
	.word	_Label_778
	.word	-48
	.word	4
	.word	_Label_779
	.word	-52
	.word	4
	.word	_Label_780
	.word	-56
	.word	4
	.word	0
_Label_767:
	.ascii	"GamingParlorMonitor"
	.ascii	"::"
	.ascii	"PrintAllStatus\0"
	.align
_Label_768:
	.ascii	"Pself\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_780:
	.byte	'I'
	.ascii	"p\0"
	.align
