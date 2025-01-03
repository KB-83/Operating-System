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
	.export	_P_Kernel_InitFirstProcess
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
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
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
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
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
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_177:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_176:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_175:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_174:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_173:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_172:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_171:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_170:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_169:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_168:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_167:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_166:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_165:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_164:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_163:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_162:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_161:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_160:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_159:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_158:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_157:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_156:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_155:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_154:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_153:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_152:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_151:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_150:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_149:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_148:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_147:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_146:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_145:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_144:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_143:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_142:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_141:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_139:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_138:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_137:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_136:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_135:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_134:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_133:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_132:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_131:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_130:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_129:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_128:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_127:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_126:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_125:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_124:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_121:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_118:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_116:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_115:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_113:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_112:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_111:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_110:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_109:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_108:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_107:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_106:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_105:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_104:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_103:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_102:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_101:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_100:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_99:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_98:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_97:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_96:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_95:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_94:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_93:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_92:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_91:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_90:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_89:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_88:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_87:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_86:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_85:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_84:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_83:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_82:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_81:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_80:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_79:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_78:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_77:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_76:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_75:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_74:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_73:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_72:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_70:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_67:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_66:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_65:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_64:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_63:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_62:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_61:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_60:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_59:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_58:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_57:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_56:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_55:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_54:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_53:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_51:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_49:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_48:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_47:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_46:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_45:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_44:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_42:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_41:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_40:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_39:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_38:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_37:
	.word	4			! length
	.ascii	"  0x"
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
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
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
	set	0x82832c48,r4		! myHashVal = -2105332664
	cmp	r3,r4
	be	_Label_185
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
_Label_185:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_186
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_186
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_186
_Label_186:
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
_Label_2718:
	push	r0
	sub	r1,1,r1
	bne	_Label_2718
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_187 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_187  sizeInBytes=4
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
_Label_2719:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2719
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_191 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_192 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_191  sizeInBytes=4
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
!   _temp_193 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_194 = _temp_193 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_194 = 3  (sizeInBytes=4)
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
_Label_2720:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2720
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_196 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_197 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_196  sizeInBytes=4
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
!   _temp_198 = _function_184_IdleFunction
	set	_function_184_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_199 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_198  sizeInBytes=4
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
	.word	_Label_200
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_201
	.word	-12
	.word	4
	.word	_Label_202
	.word	-16
	.word	4
	.word	_Label_203
	.word	-20
	.word	4
	.word	_Label_204
	.word	-24
	.word	4
	.word	_Label_205
	.word	-28
	.word	4
	.word	_Label_206
	.word	-32
	.word	4
	.word	_Label_207
	.word	-36
	.word	4
	.word	_Label_208
	.word	-40
	.word	4
	.word	_Label_209
	.word	-44
	.word	4
	.word	_Label_210
	.word	-48
	.word	4
	.word	_Label_211
	.word	-52
	.word	4
	.word	_Label_212
	.word	-56
	.word	4
	.word	_Label_213
	.word	-60
	.word	4
	.word	0
_Label_200:
	.ascii	"InitializeScheduler\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_184_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_184_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2721:
	push	r0
	sub	r1,1,r1
	bne	_Label_2721
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_214:
!	jmp	_Label_215
_Label_215:
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
!   _temp_219 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_217 else goto _Label_218
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_218
	jmp	_Label_217
_Label_217:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_220
_Label_218:
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
_Label_220:
! END WHILE...
	jmp	_Label_214
_Label_216:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_184_IdleFunction:
	.word	_sourceFileName
	.word	_Label_221
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_222
	.word	8
	.word	4
	.word	_Label_223
	.word	-12
	.word	4
	.word	_Label_224
	.word	-16
	.word	4
	.word	0
_Label_221:
	.ascii	"IdleFunction\0"
	.align
_Label_222:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_224:
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
_Label_2722:
	push	r0
	sub	r1,1,r1
	bne	_Label_2722
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
!   _temp_227 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_227 ) then goto _Label_226		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_226
!	jmp	_Label_225
_Label_225:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_229 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_229 [0 ] into _temp_230
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
!   _temp_228 = _temp_230		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_228  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_226:
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
!   _temp_231 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_231 = 3  (sizeInBytes=4)
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
_Label_232:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_236 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_235  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_235 then goto _Label_234 else goto _Label_233
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_233
	jmp	_Label_234
_Label_233:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_237 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_238 = &_P_Kernel_threadManager
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
	jmp	_Label_232
_Label_234:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_241 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_241 ) then goto _Label_240		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_240
!	jmp	_Label_239
_Label_239:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_243 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_243 [0 ] into _temp_244
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
!   _temp_242 = _temp_244		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
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
!   _temp_246 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_245 = *_temp_246  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_245) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_247 = _temp_245 + 32
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
_Label_240:
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
	.word	_Label_248
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_249
	.word	8
	.word	4
	.word	_Label_250
	.word	-16
	.word	4
	.word	_Label_251
	.word	-20
	.word	4
	.word	_Label_252
	.word	-24
	.word	4
	.word	_Label_253
	.word	-28
	.word	4
	.word	_Label_254
	.word	-32
	.word	4
	.word	_Label_255
	.word	-36
	.word	4
	.word	_Label_256
	.word	-40
	.word	4
	.word	_Label_257
	.word	-44
	.word	4
	.word	_Label_258
	.word	-48
	.word	4
	.word	_Label_259
	.word	-52
	.word	4
	.word	_Label_260
	.word	-9
	.word	1
	.word	_Label_261
	.word	-56
	.word	4
	.word	_Label_262
	.word	-60
	.word	4
	.word	_Label_263
	.word	-64
	.word	4
	.word	_Label_264
	.word	-68
	.word	4
	.word	_Label_265
	.word	-72
	.word	4
	.word	_Label_266
	.word	-76
	.word	4
	.word	_Label_267
	.word	-80
	.word	4
	.word	0
_Label_248:
	.ascii	"Run\0"
	.align
_Label_249:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_260:
	.byte	'C'
	.ascii	"_temp_235\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_266:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_267:
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
_Label_2723:
	push	r0
	sub	r1,1,r1
	bne	_Label_2723
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
!   _temp_268 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_269 = _function_183_ThreadPrintShort
	set	_function_183_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_270 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_269  sizeInBytes=4
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
	.word	_Label_271
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_272
	.word	-12
	.word	4
	.word	_Label_273
	.word	-16
	.word	4
	.word	_Label_274
	.word	-20
	.word	4
	.word	_Label_275
	.word	-24
	.word	4
	.word	0
_Label_271:
	.ascii	"PrintReadyList\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_275:
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
_Label_2724:
	push	r0
	sub	r1,1,r1
	bne	_Label_2724
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
!   _temp_276 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_276  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_277 = *_temp_278  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
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
!   _temp_279 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
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
	.word	_Label_280
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_281
	.word	-12
	.word	4
	.word	_Label_282
	.word	-16
	.word	4
	.word	_Label_283
	.word	-20
	.word	4
	.word	_Label_284
	.word	-24
	.word	4
	.word	_Label_285
	.word	-28
	.word	4
	.word	_Label_286
	.word	-32
	.word	4
	.word	0
_Label_280:
	.ascii	"ThreadStartMain\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_285:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_286:
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
_Label_2725:
	push	r0
	sub	r1,1,r1
	bne	_Label_2725
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
!   _temp_287 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_288 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
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
	.word	_Label_289
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_290
	.word	-12
	.word	4
	.word	_Label_291
	.word	-16
	.word	4
	.word	_Label_292
	.word	-20
	.word	4
	.word	0
_Label_289:
	.ascii	"ThreadFinish\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_292:
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
_Label_2726:
	push	r0
	sub	r1,1,r1
	bne	_Label_2726
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
!   _temp_293 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_295		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_295
!	jmp	_Label_294
_Label_294:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_296 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
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
!   _temp_298 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_297 = *_temp_298  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_295:
! CALL STATEMENT...
!   _temp_299 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
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
!   _temp_300 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_301 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
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
	.word	_Label_302
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_303
	.word	8
	.word	4
	.word	_Label_304
	.word	-12
	.word	4
	.word	_Label_305
	.word	-16
	.word	4
	.word	_Label_306
	.word	-20
	.word	4
	.word	_Label_307
	.word	-24
	.word	4
	.word	_Label_308
	.word	-28
	.word	4
	.word	_Label_309
	.word	-32
	.word	4
	.word	_Label_310
	.word	-36
	.word	4
	.word	_Label_311
	.word	-40
	.word	4
	.word	0
_Label_302:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_303:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_311:
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
_Label_2727:
	push	r0
	sub	r1,1,r1
	bne	_Label_2727
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
!   if newStatus != 1 then goto _Label_313		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_313
!	jmp	_Label_312
_Label_312:
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
	jmp	_Label_314
_Label_313:
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
_Label_314:
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
	.word	_Label_315
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_316
	.word	8
	.word	4
	.word	_Label_317
	.word	-12
	.word	4
	.word	0
_Label_315:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_316:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_317:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_183_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_183_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2728:
	push	r0
	sub	r1,1,r1
	bne	_Label_2728
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
!   if t == 0 then goto _Label_321		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_321
!   _temp_320 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_322
_Label_321:
!   _temp_320 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_322:
!   if _temp_320 then goto _Label_319 else goto _Label_318
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_318
	jmp	_Label_319
_Label_318:
! THEN...
	mov	668,r13		! source line 668
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_323 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
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
_Label_319:
! CALL STATEMENT...
!   _temp_324 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
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
!   _temp_326 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_325 = *_temp_326  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_327 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
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
!   _temp_336 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_335 = *_temp_336  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_330
	cmp	r1,2
	be	_Label_331
	cmp	r1,3
	be	_Label_332
	cmp	r1,4
	be	_Label_333
	cmp	r1,5
	be	_Label_334
	jmp	_Label_328
! CASE 1...
_Label_330:
! CALL STATEMENT...
!   _temp_337 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0BR",r10
	jmp	_Label_329
! CASE 2...
_Label_331:
! CALL STATEMENT...
!   _temp_338 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0BR",r10
	jmp	_Label_329
! CASE 3...
_Label_332:
! CALL STATEMENT...
!   _temp_339 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	683,r13		! source line 683
	mov	"\0\0BR",r10
	jmp	_Label_329
! CASE 4...
_Label_333:
! CALL STATEMENT...
!   _temp_340 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	686,r13		! source line 686
	mov	"\0\0BR",r10
	jmp	_Label_329
! CASE 5...
_Label_334:
! CALL STATEMENT...
!   _temp_341 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	688,r13		! source line 688
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0BR",r10
	jmp	_Label_329
! DEFAULT CASE...
_Label_328:
! CALL STATEMENT...
!   _temp_342 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
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
_Label_329:
! CALL STATEMENT...
!   _temp_343 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_344 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_345 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
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
_RoutineDescriptor__function_183_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_346
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_347
	.word	8
	.word	4
	.word	_Label_348
	.word	-16
	.word	4
	.word	_Label_349
	.word	-20
	.word	4
	.word	_Label_350
	.word	-24
	.word	4
	.word	_Label_351
	.word	-28
	.word	4
	.word	_Label_352
	.word	-32
	.word	4
	.word	_Label_353
	.word	-36
	.word	4
	.word	_Label_354
	.word	-40
	.word	4
	.word	_Label_355
	.word	-44
	.word	4
	.word	_Label_356
	.word	-48
	.word	4
	.word	_Label_357
	.word	-52
	.word	4
	.word	_Label_358
	.word	-56
	.word	4
	.word	_Label_359
	.word	-60
	.word	4
	.word	_Label_360
	.word	-64
	.word	4
	.word	_Label_361
	.word	-68
	.word	4
	.word	_Label_362
	.word	-72
	.word	4
	.word	_Label_363
	.word	-76
	.word	4
	.word	_Label_364
	.word	-9
	.word	1
	.word	_Label_365
	.word	-80
	.word	4
	.word	0
_Label_346:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_347:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_364:
	.byte	'C'
	.ascii	"_temp_320\0"
	.align
_Label_365:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_182_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_182_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2729:
	push	r0
	sub	r1,1,r1
	bne	_Label_2729
	mov	989,r13		! source line 989
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_366 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
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
_RoutineDescriptor__function_182_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_367
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_368
	.word	8
	.word	4
	.word	_Label_369
	.word	-12
	.word	4
	.word	0
_Label_367:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_368:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_366\0"
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
_Label_2730:
	push	r0
	sub	r1,1,r1
	bne	_Label_2730
	mov	999,r13		! source line 999
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_370 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
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
	.word	_Label_371
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_372
	.word	8
	.word	4
	.word	_Label_373
	.word	-12
	.word	4
	.word	0
_Label_371:
	.ascii	"ProcessFinish\0"
	.align
_Label_372:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	2,r1
_Label_2731:
	push	r0
	sub	r1,1,r1
	bne	_Label_2731
	mov	1009,r13		! source line 1009
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_374 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1010,r13		! source line 1010
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_375
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_376
	.word	-12
	.word	4
	.word	0
_Label_375:
	.ascii	"InitFirstProcess\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_374\0"
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
_Label_2732:
	push	r0
	sub	r1,1,r1
	bne	_Label_2732
	mov	1498,r13		! source line 1498
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1510,r13		! source line 1510
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
	mov	1511,r13		! source line 1511
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1511,r13		! source line 1511
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
	.word	_Label_377
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_377:
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
	mov	7,r1
_Label_2733:
	push	r0
	sub	r1,1,r1
	bne	_Label_2733
	mov	1516,r13		! source line 1516
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0IF",r10
!   _temp_381 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_382 = _temp_381 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_380 = *_temp_382  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_380 == 0 then goto _Label_379		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_379
!	jmp	_Label_378
_Label_378:
! THEN...
	mov	1531,r13		! source line 1531
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1531,r13		! source line 1531
	mov	"\0\0SE",r10
!   _temp_384 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_385 = _temp_384 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_383 = *_temp_385  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_383) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_379:
! RETURN STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_386
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_387
	.word	-12
	.word	4
	.word	_Label_388
	.word	-16
	.word	4
	.word	_Label_389
	.word	-20
	.word	4
	.word	_Label_390
	.word	-24
	.word	4
	.word	_Label_391
	.word	-28
	.word	4
	.word	_Label_392
	.word	-32
	.word	4
	.word	0
_Label_386:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_380\0"
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
	mov	1538,r13		! source line 1538
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1547,r13		! source line 1547
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
	.word	_Label_393
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_393:
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
_Label_2734:
	push	r0
	sub	r1,1,r1
	bne	_Label_2734
	mov	1552,r13		! source line 1552
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_394 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1559,r13		! source line 1559
	mov	"\0\0CA",r10
	call	_function_181_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1559,r13		! source line 1559
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
	.word	_Label_395
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_396
	.word	-12
	.word	4
	.word	0
_Label_395:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_394\0"
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
_Label_2735:
	push	r0
	sub	r1,1,r1
	bne	_Label_2735
	mov	1564,r13		! source line 1564
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_397 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1571,r13		! source line 1571
	mov	"\0\0CA",r10
	call	_function_181_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1571,r13		! source line 1571
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
	.word	_Label_398
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_399
	.word	-12
	.word	4
	.word	0
_Label_398:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_397\0"
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
_Label_2736:
	push	r0
	sub	r1,1,r1
	bne	_Label_2736
	mov	1576,r13		! source line 1576
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_400 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1583,r13		! source line 1583
	mov	"\0\0CA",r10
	call	_function_181_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1583,r13		! source line 1583
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
	.word	_Label_401
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_402
	.word	-12
	.word	4
	.word	0
_Label_401:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_400\0"
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
_Label_2737:
	push	r0
	sub	r1,1,r1
	bne	_Label_2737
	mov	1588,r13		! source line 1588
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_403 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_403  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1595,r13		! source line 1595
	mov	"\0\0CA",r10
	call	_function_181_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1595,r13		! source line 1595
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
	.word	_Label_404
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_405
	.word	-12
	.word	4
	.word	0
_Label_404:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_403\0"
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
_Label_2738:
	push	r0
	sub	r1,1,r1
	bne	_Label_2738
	mov	1600,r13		! source line 1600
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_406 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_406  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1607,r13		! source line 1607
	mov	"\0\0CA",r10
	call	_function_181_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1607,r13		! source line 1607
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
	.word	_Label_407
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_408
	.word	-12
	.word	4
	.word	0
_Label_407:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_406\0"
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
_Label_2739:
	push	r0
	sub	r1,1,r1
	bne	_Label_2739
	mov	1612,r13		! source line 1612
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_409 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1619,r13		! source line 1619
	mov	"\0\0CA",r10
	call	_function_181_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1619,r13		! source line 1619
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
	.word	_Label_410
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_411
	.word	-12
	.word	4
	.word	0
_Label_410:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_409\0"
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
_Label_2740:
	push	r0
	sub	r1,1,r1
	bne	_Label_2740
	mov	1624,r13		! source line 1624
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_412 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1631,r13		! source line 1631
	mov	"\0\0CA",r10
	call	_function_181_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1631,r13		! source line 1631
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
	.word	_Label_413
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_414
	.word	-12
	.word	4
	.word	0
_Label_413:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_181_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_181_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2741:
	push	r0
	sub	r1,1,r1
	bne	_Label_2741
	mov	1636,r13		! source line 1636
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_415 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1641,r13		! source line 1641
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1642,r13		! source line 1642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_416 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1643,r13		! source line 1643
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_420 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_419 = *_temp_420  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_419 == 0 then goto _Label_418		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_418
!	jmp	_Label_417
_Label_417:
! THEN...
	mov	1647,r13		! source line 1647
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_422 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_421 = *_temp_422  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_421) then goto _runtimeErrorNullPointer
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
	jmp	_Label_423
_Label_418:
! ELSE...
	mov	1649,r13		! source line 1649
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_424 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_424  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1649,r13		! source line 1649
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_423:
! SEND STATEMENT...
	mov	1651,r13		! source line 1651
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
	mov	1657,r13		! source line 1657
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_181_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_425
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_426
	.word	8
	.word	4
	.word	_Label_427
	.word	-12
	.word	4
	.word	_Label_428
	.word	-16
	.word	4
	.word	_Label_429
	.word	-20
	.word	4
	.word	_Label_430
	.word	-24
	.word	4
	.word	_Label_431
	.word	-28
	.word	4
	.word	_Label_432
	.word	-32
	.word	4
	.word	_Label_433
	.word	-36
	.word	4
	.word	0
_Label_425:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_426:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_415\0"
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
_Label_2742:
	push	r0
	sub	r1,1,r1
	bne	_Label_2742
	mov	1662,r13		! source line 1662
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1683,r13		! source line 1683
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2743
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_434
_Label_2743:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_434
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_434
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_448,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_448:
	jmp	_Label_440	! 1:	
	jmp	_Label_447	! 2:	
	jmp	_Label_437	! 3:	
	jmp	_Label_436	! 4:	
	jmp	_Label_439	! 5:	
	jmp	_Label_438	! 6:	
	jmp	_Label_441	! 7:	
	jmp	_Label_442	! 8:	
	jmp	_Label_443	! 9:	
	jmp	_Label_444	! 10:	
	jmp	_Label_445	! 11:	
	jmp	_Label_446	! 12:	
! CASE 4...
_Label_436:
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0RE",r10
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_449  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_449  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_437:
! CALL STATEMENT...
!   Call the function
	mov	1687,r13		! source line 1687
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_438:
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1690,r13		! source line 1690
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_450  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_450  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_439:
! RETURN STATEMENT...
	mov	1692,r13		! source line 1692
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1692,r13		! source line 1692
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_451  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_451  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_440:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_441:
! RETURN STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_452  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_452  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_442:
! RETURN STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1699,r13		! source line 1699
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_453  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_453  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_443:
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
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
	mov	1701,r13		! source line 1701
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_454  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_454  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_444:
! RETURN STATEMENT...
	mov	1703,r13		! source line 1703
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
	mov	1703,r13		! source line 1703
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_455  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_455  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_445:
! RETURN STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1705,r13		! source line 1705
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_456  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_456  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_446:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1707,r13		! source line 1707
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_447:
! CALL STATEMENT...
!   Call the function
	mov	1710,r13		! source line 1710
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_434:
! CALL STATEMENT...
!   _temp_457 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1713,r13		! source line 1713
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1715,r13		! source line 1715
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_458 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1716,r13		! source line 1716
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_435:
! RETURN STATEMENT...
	mov	1718,r13		! source line 1718
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
	.word	_Label_459
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_460
	.word	8
	.word	4
	.word	_Label_461
	.word	12
	.word	4
	.word	_Label_462
	.word	16
	.word	4
	.word	_Label_463
	.word	20
	.word	4
	.word	_Label_464
	.word	24
	.word	4
	.word	_Label_465
	.word	-12
	.word	4
	.word	_Label_466
	.word	-16
	.word	4
	.word	_Label_467
	.word	-20
	.word	4
	.word	_Label_468
	.word	-24
	.word	4
	.word	_Label_469
	.word	-28
	.word	4
	.word	_Label_470
	.word	-32
	.word	4
	.word	_Label_471
	.word	-36
	.word	4
	.word	_Label_472
	.word	-40
	.word	4
	.word	_Label_473
	.word	-44
	.word	4
	.word	_Label_474
	.word	-48
	.word	4
	.word	0
_Label_459:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_460:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_461:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_462:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_463:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_449\0"
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
	mov	1723,r13		! source line 1723
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1723,r13		! source line 1723
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
	.word	_Label_475
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_476
	.word	8
	.word	4
	.word	0
_Label_475:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_476:
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
	mov	1729,r13		! source line 1729
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1729,r13		! source line 1729
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
	.word	_Label_477
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_477:
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
	mov	1735,r13		! source line 1735
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1735,r13		! source line 1735
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
	.word	_Label_478
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_478:
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
	mov	1741,r13		! source line 1741
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1743,r13		! source line 1743
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
	.word	_Label_479
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_479:
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
	mov	1748,r13		! source line 1748
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1750,r13		! source line 1750
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
	.word	_Label_480
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_481
	.word	8
	.word	4
	.word	0
_Label_480:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_481:
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
	mov	1755,r13		! source line 1755
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1757,r13		! source line 1757
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
	.word	_Label_482
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_483
	.word	8
	.word	4
	.word	0
_Label_482:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_483:
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
	mov	1762,r13		! source line 1762
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1764,r13		! source line 1764
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
	.word	_Label_484
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_485
	.word	8
	.word	4
	.word	0
_Label_484:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_485:
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
	mov	1769,r13		! source line 1769
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1771,r13		! source line 1771
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
	.word	_Label_486
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_487
	.word	8
	.word	4
	.word	0
_Label_486:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_487:
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
	mov	1776,r13		! source line 1776
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
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
	.word	_Label_488
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_489
	.word	8
	.word	4
	.word	_Label_490
	.word	12
	.word	4
	.word	_Label_491
	.word	16
	.word	4
	.word	0
_Label_488:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_489:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_490:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_491:
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
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1785,r13		! source line 1785
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
	.word	_Label_492
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_493
	.word	8
	.word	4
	.word	_Label_494
	.word	12
	.word	4
	.word	_Label_495
	.word	16
	.word	4
	.word	0
_Label_492:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_493:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_494:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_495:
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
	mov	1790,r13		! source line 1790
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1792,r13		! source line 1792
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
	.word	_Label_496
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_497
	.word	8
	.word	4
	.word	_Label_498
	.word	12
	.word	4
	.word	0
_Label_496:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_497:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_498:
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
	mov	1797,r13		! source line 1797
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
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
	.word	_Label_499
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_500
	.word	8
	.word	4
	.word	0
_Label_499:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_500:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_180_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_180_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_2744:
	push	r0
	sub	r1,1,r1
	bne	_Label_2744
	mov	2388,r13		! source line 2388
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_501 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_501  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0AS",r10
!   _temp_502 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_502) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_504 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_504) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_503 = *_temp_504  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_502 = _temp_503  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
!   _temp_505 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_505) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_507 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_507) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_506 = *_temp_507  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_505 = _temp_506  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0AS",r10
!   _temp_508 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_508) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_510 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_510) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_509 = *_temp_510  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_508 = _temp_509  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_180_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_511
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_512
	.word	8
	.word	4
	.word	_Label_513
	.word	12
	.word	4
	.word	_Label_514
	.word	-16
	.word	4
	.word	_Label_515
	.word	-9
	.word	1
	.word	_Label_516
	.word	-20
	.word	4
	.word	_Label_517
	.word	-24
	.word	4
	.word	_Label_518
	.word	-10
	.word	1
	.word	_Label_519
	.word	-28
	.word	4
	.word	_Label_520
	.word	-32
	.word	4
	.word	_Label_521
	.word	-11
	.word	1
	.word	_Label_522
	.word	-36
	.word	4
	.word	_Label_523
	.word	-12
	.word	1
	.word	_Label_524
	.word	-40
	.word	4
	.word	_Label_525
	.word	-44
	.word	4
	.word	0
_Label_511:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_512:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_513:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_515:
	.byte	'C'
	.ascii	"_temp_509\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_518:
	.byte	'C'
	.ascii	"_temp_506\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_521:
	.byte	'C'
	.ascii	"_temp_503\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_523:
	.byte	'C'
	.ascii	"_temp_501\0"
	.align
_Label_524:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_525:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_179_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_179_printFCB,r1
	push	r1
	mov	3,r1
_Label_2745:
	push	r0
	sub	r1,1,r1
	bne	_Label_2745
	mov	2398,r13		! source line 2398
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_527 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_526 = *_temp_527  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_526  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2399,r13		! source line 2399
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2400,r13		! source line 2400
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_179_printFCB:
	.word	_sourceFileName
	.word	_Label_528
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_529
	.word	8
	.word	4
	.word	_Label_530
	.word	-12
	.word	4
	.word	_Label_531
	.word	-16
	.word	4
	.word	0
_Label_528:
	.ascii	"printFCB\0"
	.align
_Label_529:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_178_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_178_printOpen,r1
	push	r1
	mov	4,r1
_Label_2746:
	push	r0
	sub	r1,1,r1
	bne	_Label_2746
	mov	2403,r13		! source line 2403
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_532 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2404,r13		! source line 2404
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_533 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2405,r13		! source line 2405
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_534 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2406,r13		! source line 2406
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_178_printOpen:
	.word	_sourceFileName
	.word	_Label_535
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_536
	.word	8
	.word	4
	.word	_Label_537
	.word	-12
	.word	4
	.word	_Label_538
	.word	-16
	.word	4
	.word	_Label_539
	.word	-20
	.word	4
	.word	0
_Label_535:
	.ascii	"printOpen\0"
	.align
_Label_536:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_540
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_540:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_541
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_541:
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
_Label_2747:
	push	r0
	sub	r1,1,r1
	bne	_Label_2747
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_543		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_543
!	jmp	_Label_542
_Label_542:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_544 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_544  sizeInBytes=4
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
_Label_543:
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
	.word	_Label_546
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_547
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_548
	.word	12
	.word	4
	.word	_Label_549
	.word	-12
	.word	4
	.word	_Label_550
	.word	-16
	.word	4
	.word	0
_Label_546:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_547:
	.ascii	"Pself\0"
	.align
_Label_548:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_544\0"
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
_Label_2748:
	push	r0
	sub	r1,1,r1
	bne	_Label_2748
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
!   if count != 2147483647 then goto _Label_552		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_552
!	jmp	_Label_551
_Label_551:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_553 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
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
_Label_552:
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
!   if count > 0 then goto _Label_555		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_555
!	jmp	_Label_554
_Label_554:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_556 = &waitingThreads
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
!   _temp_557 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_557 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_558 = &_P_Kernel_readyList
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
_Label_555:
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
	.word	_Label_559
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_560
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_561
	.word	-12
	.word	4
	.word	_Label_562
	.word	-16
	.word	4
	.word	_Label_563
	.word	-20
	.word	4
	.word	_Label_564
	.word	-24
	.word	4
	.word	_Label_565
	.word	-28
	.word	4
	.word	_Label_566
	.word	-32
	.word	4
	.word	0
_Label_559:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_560:
	.ascii	"Pself\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_565:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_566:
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
_Label_2749:
	push	r0
	sub	r1,1,r1
	bne	_Label_2749
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
!   if count != -2147483648 then goto _Label_568		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_568
!	jmp	_Label_567
_Label_567:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_569 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
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
_Label_568:
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
!   if count >= 0 then goto _Label_571		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_571
!	jmp	_Label_570
_Label_570:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_572 = &waitingThreads
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
_Label_571:
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
	.word	_Label_573
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_574
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_575
	.word	-12
	.word	4
	.word	_Label_576
	.word	-16
	.word	4
	.word	_Label_577
	.word	-20
	.word	4
	.word	0
_Label_573:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_574:
	.ascii	"Pself\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_577:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_578
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_578:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_579
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_579:
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
_Label_2750:
	push	r0
	sub	r1,1,r1
	bne	_Label_2750
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
	.word	_Label_581
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_583
	.word	-12
	.word	4
	.word	0
_Label_581:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_582:
	.ascii	"Pself\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_580\0"
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
_Label_2751:
	push	r0
	sub	r1,1,r1
	bne	_Label_2751
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_585		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_585
!	jmp	_Label_584
_Label_584:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_586 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_586  sizeInBytes=4
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
_Label_585:
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
!   if heldBy == 0 then goto _Label_590		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_590
!   _temp_589 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_591
_Label_590:
!   _temp_589 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_591:
!   if _temp_589 then goto _Label_588 else goto _Label_587
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_587
	jmp	_Label_588
_Label_587:
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
	jmp	_Label_592
_Label_588:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_593 = &waitingThreads
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
_Label_592:
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
	.word	_Label_594
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_595
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_596
	.word	-16
	.word	4
	.word	_Label_597
	.word	-9
	.word	1
	.word	_Label_598
	.word	-20
	.word	4
	.word	_Label_599
	.word	-24
	.word	4
	.word	0
_Label_594:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_595:
	.ascii	"Pself\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_597:
	.byte	'C'
	.ascii	"_temp_589\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_599:
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
_Label_2752:
	push	r0
	sub	r1,1,r1
	bne	_Label_2752
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_601		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_601
!	jmp	_Label_600
_Label_600:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_602 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_602  sizeInBytes=4
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
_Label_601:
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
!   _temp_603 = &waitingThreads
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
!   if t == 0 then goto _Label_605		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_605
!	jmp	_Label_604
_Label_604:
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
!   _temp_606 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_606 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_607 = &_P_Kernel_readyList
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
	jmp	_Label_608
_Label_605:
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
_Label_608:
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
	.word	_Label_609
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_610
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_611
	.word	-12
	.word	4
	.word	_Label_612
	.word	-16
	.word	4
	.word	_Label_613
	.word	-20
	.word	4
	.word	_Label_614
	.word	-24
	.word	4
	.word	_Label_615
	.word	-28
	.word	4
	.word	_Label_616
	.word	-32
	.word	4
	.word	0
_Label_609:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_610:
	.ascii	"Pself\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_615:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_616:
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
_Label_2753:
	push	r0
	sub	r1,1,r1
	bne	_Label_2753
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_619		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_619
!	jmp	_Label_618
_Label_618:
!   _temp_617 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_620
_Label_619:
!   _temp_617 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_620:
!   ReturnResult: _temp_617  (sizeInBytes=1)
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
	.word	_Label_621
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_622
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_623
	.word	-9
	.word	1
	.word	0
_Label_621:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_622:
	.ascii	"Pself\0"
	.align
_Label_623:
	.byte	'C'
	.ascii	"_temp_617\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_624
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_624:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_625
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_625:
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
_Label_2754:
	push	r0
	sub	r1,1,r1
	bne	_Label_2754
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
	.word	_Label_627
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_628
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_629
	.word	-12
	.word	4
	.word	0
_Label_627:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_628:
	.ascii	"Pself\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_626\0"
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
_Label_2755:
	push	r0
	sub	r1,1,r1
	bne	_Label_2755
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
!   Retrieve Result: targetName=_temp_632  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_632 then goto _Label_631 else goto _Label_630
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_630
	jmp	_Label_631
_Label_630:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_633 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_633  sizeInBytes=4
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
_Label_631:
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
!   _temp_634 = &waitingThreads
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
	.word	_Label_635
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_637
	.word	12
	.word	4
	.word	_Label_638
	.word	-16
	.word	4
	.word	_Label_639
	.word	-20
	.word	4
	.word	_Label_640
	.word	-9
	.word	1
	.word	_Label_641
	.word	-24
	.word	4
	.word	0
_Label_635:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_636:
	.ascii	"Pself\0"
	.align
_Label_637:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_640:
	.byte	'C'
	.ascii	"_temp_632\0"
	.align
_Label_641:
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
_Label_2756:
	push	r0
	sub	r1,1,r1
	bne	_Label_2756
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
!   Retrieve Result: targetName=_temp_644  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_644 then goto _Label_643 else goto _Label_642
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_642
	jmp	_Label_643
_Label_642:
! THEN...
	mov	424,r13		! source line 424
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_645 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_645  sizeInBytes=4
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
_Label_643:
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
!   _temp_646 = &waitingThreads
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
!   if t == 0 then goto _Label_648		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_648
!	jmp	_Label_647
_Label_647:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_649 = &_P_Kernel_readyList
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
_Label_648:
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
	.word	_Label_650
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_651
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_652
	.word	12
	.word	4
	.word	_Label_653
	.word	-16
	.word	4
	.word	_Label_654
	.word	-20
	.word	4
	.word	_Label_655
	.word	-24
	.word	4
	.word	_Label_656
	.word	-9
	.word	1
	.word	_Label_657
	.word	-28
	.word	4
	.word	_Label_658
	.word	-32
	.word	4
	.word	0
_Label_650:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_651:
	.ascii	"Pself\0"
	.align
_Label_652:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_656:
	.byte	'C'
	.ascii	"_temp_644\0"
	.align
_Label_657:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_658:
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
_Label_2757:
	push	r0
	sub	r1,1,r1
	bne	_Label_2757
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
!   Retrieve Result: targetName=_temp_661  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_661 then goto _Label_660 else goto _Label_659
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_659
	jmp	_Label_660
_Label_659:
! THEN...
	mov	444,r13		! source line 444
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_662 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_662  sizeInBytes=4
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
_Label_660:
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
_Label_663:
!	jmp	_Label_664
_Label_664:
	mov	447,r13		! source line 447
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0AS",r10
	mov	448,r13		! source line 448
	mov	"\0\0SE",r10
!   _temp_666 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_667
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_667
	jmp	_Label_668
_Label_667:
! THEN...
	mov	450,r13		! source line 450
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0BR",r10
	jmp	_Label_665
! END IF...
_Label_668:
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_669 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_669 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   _temp_670 = &_P_Kernel_readyList
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
	jmp	_Label_663
_Label_665:
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
	.word	_Label_671
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_672
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_673
	.word	12
	.word	4
	.word	_Label_674
	.word	-16
	.word	4
	.word	_Label_675
	.word	-20
	.word	4
	.word	_Label_676
	.word	-24
	.word	4
	.word	_Label_677
	.word	-28
	.word	4
	.word	_Label_678
	.word	-9
	.word	1
	.word	_Label_679
	.word	-32
	.word	4
	.word	_Label_680
	.word	-36
	.word	4
	.word	0
_Label_671:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_672:
	.ascii	"Pself\0"
	.align
_Label_673:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_678:
	.byte	'C'
	.ascii	"_temp_661\0"
	.align
_Label_679:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_680:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_681
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
_Label_681:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_682
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_682:
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
_Label_2758:
	push	r0
	sub	r1,1,r1
	bne	_Label_2758
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
!   _temp_683 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_683) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_683 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0AS",r10
!   _temp_684 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_684 [0 ] into _temp_685
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
!   Data Move: *_temp_685 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   _temp_686 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_686 [999 ] into _temp_687
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
!   Data Move: *_temp_687 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   _temp_688 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_688 [999 ] into _temp_689
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
!   stackTop = _temp_689		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   _temp_690 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_692 = &_temp_691
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_692 = _temp_692 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_694:
!   Data Move: *_temp_692 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_692 = _temp_692 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_693 = _temp_693 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_693) then goto _Label_694
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_694
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_695 = &_temp_691
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_2759
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2759:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_690 = *_temp_695  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_2760:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2760
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
!   _temp_696 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_698 = &_temp_697
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_698 = _temp_698 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_700:
!   Data Move: *_temp_698 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_698 = _temp_698 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_699 = _temp_699 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_699) then goto _Label_700
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_700
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_701 = &_temp_697
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_2761
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2761:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_696 = *_temp_701  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_2762:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2762
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
	.word	_Label_702
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_703
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_704
	.word	12
	.word	4
	.word	_Label_705
	.word	-12
	.word	4
	.word	_Label_706
	.word	-16
	.word	4
	.word	_Label_707
	.word	-20
	.word	4
	.word	_Label_708
	.word	-84
	.word	64
	.word	_Label_709
	.word	-88
	.word	4
	.word	_Label_710
	.word	-92
	.word	4
	.word	_Label_711
	.word	-96
	.word	4
	.word	_Label_712
	.word	-100
	.word	4
	.word	_Label_713
	.word	-156
	.word	56
	.word	_Label_714
	.word	-160
	.word	4
	.word	_Label_715
	.word	-164
	.word	4
	.word	_Label_716
	.word	-168
	.word	4
	.word	_Label_717
	.word	-172
	.word	4
	.word	_Label_718
	.word	-176
	.word	4
	.word	_Label_719
	.word	-180
	.word	4
	.word	_Label_720
	.word	-184
	.word	4
	.word	_Label_721
	.word	-188
	.word	4
	.word	0
_Label_702:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_703:
	.ascii	"Pself\0"
	.align
_Label_704:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_683\0"
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
_Label_2763:
	push	r0
	sub	r1,1,r1
	bne	_Label_2763
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
!   _temp_722 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_722  (sizeInBytes=4)
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
!   _temp_724 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_723  sizeInBytes=4
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
	.word	_Label_725
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_726
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_727
	.word	12
	.word	4
	.word	_Label_728
	.word	16
	.word	4
	.word	_Label_729
	.word	-12
	.word	4
	.word	_Label_730
	.word	-16
	.word	4
	.word	_Label_731
	.word	-20
	.word	4
	.word	_Label_732
	.word	-24
	.word	4
	.word	_Label_733
	.word	-28
	.word	4
	.word	0
_Label_725:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_726:
	.ascii	"Pself\0"
	.align
_Label_727:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_728:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_732:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_733:
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
_Label_2764:
	push	r0
	sub	r1,1,r1
	bne	_Label_2764
	mov	509,r13		! source line 509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_736 == _P_Kernel_currentThread then goto _Label_735		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_735
!	jmp	_Label_734
_Label_734:
! THEN...
	mov	526,r13		! source line 526
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_737 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
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
_Label_735:
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
!   _temp_738 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_740		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_740
!	jmp	_Label_739
_Label_739:
! THEN...
	mov	537,r13		! source line 537
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_742		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_742
!	jmp	_Label_741
_Label_741:
! THEN...
	mov	538,r13		! source line 538
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_743 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
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
_Label_742:
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
!   _temp_745 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_744  sizeInBytes=4
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
_Label_740:
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
	.word	_Label_746
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_747
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_748
	.word	-12
	.word	4
	.word	_Label_749
	.word	-16
	.word	4
	.word	_Label_750
	.word	-20
	.word	4
	.word	_Label_751
	.word	-24
	.word	4
	.word	_Label_752
	.word	-28
	.word	4
	.word	_Label_753
	.word	-32
	.word	4
	.word	_Label_754
	.word	-36
	.word	4
	.word	_Label_755
	.word	-40
	.word	4
	.word	_Label_756
	.word	-44
	.word	4
	.word	0
_Label_746:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_747:
	.ascii	"Pself\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_754:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_755:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_756:
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
_Label_2765:
	push	r0
	sub	r1,1,r1
	bne	_Label_2765
	mov	549,r13		! source line 549
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_758		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_758
!	jmp	_Label_757
_Label_757:
! THEN...
	mov	562,r13		! source line 562
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_759 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
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
_Label_758:
! IF STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_762 == _P_Kernel_currentThread then goto _Label_761		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_761
!	jmp	_Label_760
_Label_760:
! THEN...
	mov	566,r13		! source line 566
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_763 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
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
_Label_761:
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
!   _temp_764 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_765
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_765
	jmp	_Label_766
_Label_765:
! THEN...
	mov	574,r13		! source line 574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_767 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_767  sizeInBytes=4
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
_Label_766:
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
	.word	_Label_768
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_769
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_770
	.word	-12
	.word	4
	.word	_Label_771
	.word	-16
	.word	4
	.word	_Label_772
	.word	-20
	.word	4
	.word	_Label_773
	.word	-24
	.word	4
	.word	_Label_774
	.word	-28
	.word	4
	.word	_Label_775
	.word	-32
	.word	4
	.word	0
_Label_768:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_769:
	.ascii	"Pself\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_767\0"
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
	.ascii	"_temp_759\0"
	.align
_Label_775:
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
_Label_2766:
	push	r0
	sub	r1,1,r1
	bne	_Label_2766
	mov	581,r13		! source line 581
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0IF",r10
!   _temp_779 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_779 [0 ] into _temp_780
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
!   Data Move: _temp_778 = *_temp_780  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_778 == 606348324 then goto _Label_777		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_777
!	jmp	_Label_776
_Label_776:
! THEN...
	mov	588,r13		! source line 588
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_781 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_781  sizeInBytes=4
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
	jmp	_Label_782
_Label_777:
! ELSE...
	mov	589,r13		! source line 589
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0IF",r10
!   _temp_786 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_786 [999 ] into _temp_787
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
!   Data Move: _temp_785 = *_temp_787  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_785 == 606348324 then goto _Label_784		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_784
!	jmp	_Label_783
_Label_783:
! THEN...
	mov	590,r13		! source line 590
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_788 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_788  sizeInBytes=4
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
_Label_784:
! END IF...
_Label_782:
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
	.word	_Label_789
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_791
	.word	-12
	.word	4
	.word	_Label_792
	.word	-16
	.word	4
	.word	_Label_793
	.word	-20
	.word	4
	.word	_Label_794
	.word	-24
	.word	4
	.word	_Label_795
	.word	-28
	.word	4
	.word	_Label_796
	.word	-32
	.word	4
	.word	_Label_797
	.word	-36
	.word	4
	.word	_Label_798
	.word	-40
	.word	4
	.word	0
_Label_789:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_790:
	.ascii	"Pself\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_778\0"
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
_Label_2767:
	push	r0
	sub	r1,1,r1
	bne	_Label_2767
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
!   _temp_799 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_799  sizeInBytes=4
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
!   _temp_800 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_801  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_802 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_802  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_803 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_803  sizeInBytes=4
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
!   _temp_808 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_809 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_808  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_804:
!   Perform the FOR-LOOP termination test
!   if i > _temp_809 then goto _Label_807		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_807
_Label_805:
	mov	609,r13		! source line 609
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_810 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_810  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_811 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_812 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_812  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_814 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_814 [i ] into _temp_815
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
!   Data Move: _temp_813 = *_temp_815  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_816 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_818 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_818 [i ] into _temp_819
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
!   Data Move: _temp_817 = *_temp_819  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_817  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_820 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_820  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_806:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_804
! END FOR
_Label_807:
! CALL STATEMENT...
!   _temp_821 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-116]
!   _temp_822 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_821  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_822  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_823 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-108]
!   _temp_825 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_825 [0 ] into _temp_826
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
!   _temp_824 = _temp_826		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_823  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_824  sizeInBytes=4
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
	be	_Label_829
	cmp	r1,2
	be	_Label_830
	cmp	r1,3
	be	_Label_831
	cmp	r1,4
	be	_Label_832
	cmp	r1,5
	be	_Label_833
	jmp	_Label_827
! CASE 1...
_Label_829:
! CALL STATEMENT...
!   _temp_834 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_834  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0BR",r10
	jmp	_Label_828
! CASE 2...
_Label_830:
! CALL STATEMENT...
!   _temp_835 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_835  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0BR",r10
	jmp	_Label_828
! CASE 3...
_Label_831:
! CALL STATEMENT...
!   _temp_836 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_836  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	629,r13		! source line 629
	mov	"\0\0BR",r10
	jmp	_Label_828
! CASE 4...
_Label_832:
! CALL STATEMENT...
!   _temp_837 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_837  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0BR",r10
	jmp	_Label_828
! CASE 5...
_Label_833:
! CALL STATEMENT...
!   _temp_838 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_838  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0BR",r10
	jmp	_Label_828
! DEFAULT CASE...
_Label_827:
! CALL STATEMENT...
!   _temp_839 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_839  sizeInBytes=4
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
_Label_828:
! CALL STATEMENT...
!   _temp_840 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_840  sizeInBytes=4
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
!   _temp_841 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_841  sizeInBytes=4
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
!   _temp_846 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_847 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_846  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_842:
!   Perform the FOR-LOOP termination test
!   if i > _temp_847 then goto _Label_845		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_845
_Label_843:
	mov	643,r13		! source line 643
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_848 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_849 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_850 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_852 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_852 [i ] into _temp_853
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
!   Data Move: _temp_851 = *_temp_853  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_854 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_854  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_856 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_856 [i ] into _temp_857
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
!   Data Move: _temp_855 = *_temp_857  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_855  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_858 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_858  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_844:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_842
! END FOR
_Label_845:
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
	.word	_Label_859
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_861
	.word	-12
	.word	4
	.word	_Label_862
	.word	-16
	.word	4
	.word	_Label_863
	.word	-20
	.word	4
	.word	_Label_864
	.word	-24
	.word	4
	.word	_Label_865
	.word	-28
	.word	4
	.word	_Label_866
	.word	-32
	.word	4
	.word	_Label_867
	.word	-36
	.word	4
	.word	_Label_868
	.word	-40
	.word	4
	.word	_Label_869
	.word	-44
	.word	4
	.word	_Label_870
	.word	-48
	.word	4
	.word	_Label_871
	.word	-52
	.word	4
	.word	_Label_872
	.word	-56
	.word	4
	.word	_Label_873
	.word	-60
	.word	4
	.word	_Label_874
	.word	-64
	.word	4
	.word	_Label_875
	.word	-68
	.word	4
	.word	_Label_876
	.word	-72
	.word	4
	.word	_Label_877
	.word	-76
	.word	4
	.word	_Label_878
	.word	-80
	.word	4
	.word	_Label_879
	.word	-84
	.word	4
	.word	_Label_880
	.word	-88
	.word	4
	.word	_Label_881
	.word	-92
	.word	4
	.word	_Label_882
	.word	-96
	.word	4
	.word	_Label_883
	.word	-100
	.word	4
	.word	_Label_884
	.word	-104
	.word	4
	.word	_Label_885
	.word	-108
	.word	4
	.word	_Label_886
	.word	-112
	.word	4
	.word	_Label_887
	.word	-116
	.word	4
	.word	_Label_888
	.word	-120
	.word	4
	.word	_Label_889
	.word	-124
	.word	4
	.word	_Label_890
	.word	-128
	.word	4
	.word	_Label_891
	.word	-132
	.word	4
	.word	_Label_892
	.word	-136
	.word	4
	.word	_Label_893
	.word	-140
	.word	4
	.word	_Label_894
	.word	-144
	.word	4
	.word	_Label_895
	.word	-148
	.word	4
	.word	_Label_896
	.word	-152
	.word	4
	.word	_Label_897
	.word	-156
	.word	4
	.word	_Label_898
	.word	-160
	.word	4
	.word	_Label_899
	.word	-164
	.word	4
	.word	_Label_900
	.word	-168
	.word	4
	.word	_Label_901
	.word	-172
	.word	4
	.word	_Label_902
	.word	-176
	.word	4
	.word	_Label_903
	.word	-180
	.word	4
	.word	_Label_904
	.word	-184
	.word	4
	.word	_Label_905
	.word	-188
	.word	4
	.word	_Label_906
	.word	-192
	.word	4
	.word	_Label_907
	.word	-196
	.word	4
	.word	0
_Label_859:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_860:
	.ascii	"Pself\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_906:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_907:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_908
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_908:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_909
	.word	_sourceFileName
	.word	193		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_909:
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
_Label_2768:
	push	r0
	sub	r1,1,r1
	bne	_Label_2768
	mov	707,r13		! source line 707
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_910 = _StringConst_76
	set	_StringConst_76,r1
	set	-50084,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_910  sizeInBytes=4
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
!   _temp_911 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-50080,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_913 = &_temp_912
	set	-50076,r1
	add	r14,r1,r1
	store	r1,[r14+-8432]
!   _temp_913 = _temp_913 + 4
	load	[r14+-8432],r1
	add	r1,4,r1
	store	r1,[r14+-8432]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_915 = zeros  (sizeInBytes=4164)
	add	r14,-8424,r4
	mov	1041,r3
_Label_2769:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2769
!   _temp_915 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-8424]
	mov	10,r1
	store	r1,[r14+-8428]
_Label_917:
!   Data Move: *_temp_913 = _temp_915  (sizeInBytes=4164)
	add	r14,-8424,r5
	load	[r14+-8432],r4
	mov	1041,r3
_Label_2770:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2770
!   _temp_913 = _temp_913 + 4164
	load	[r14+-8432],r1
	add	r1,4164,r1
	store	r1,[r14+-8432]
!   _temp_914 = _temp_914 + -1
	load	[r14+-8428],r1
	add	r1,-1,r1
	store	r1,[r14+-8428]
!   if intNotZero (_temp_914) then goto _Label_917
	load	[r14+-8428],r1
	cmp	r1,r0
	bne	_Label_917
!   Initialize the array size...
	mov	10,r1
	set	-50076,r2
	store	r1,[r14+r2]
!   _temp_918 = &_temp_912
	set	-50076,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   make sure array has size 10
	set	-50080,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2771
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2771:
!   make sure array has size 10
	load	[r14+-4256],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_911 = *_temp_918  (sizeInBytes=41644)
	load	[r14+-4256],r5
	set	-50080,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_2772:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2772
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
!   _temp_924 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-4248]
!   Calculate and save the FOR-LOOP ending value
!   _temp_925 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-4244]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_924  (sizeInBytes=4)
	load	[r14+-4248],r1
	set	-50088,r2
	store	r1,[r14+r2]
_Label_920:
!   Perform the FOR-LOOP termination test
!   if i > _temp_925 then goto _Label_923		
	set	-50088,r1
	load	[r14+r1],r1
	load	[r14+-4244],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_923
_Label_921:
	mov	722,r13		! source line 722
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0AS",r10
!   _temp_926 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Move address of _temp_926 [i ] into _temp_927
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
!   ZeroMemory: _temp_928 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_2773:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2773
!   _temp_928 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
!   Data Move: *_temp_927 = _temp_928  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4236],r4
	mov	1041,r3
_Label_2774:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2774
! SEND STATEMENT...
	mov	724,r13		! source line 724
	mov	"\0\0SE",r10
!   _temp_930 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   _temp_931 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_931 [i ] into _temp_932
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
!   Prepare Argument: offset=12  value=_temp_930  sizeInBytes=4
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
!   _temp_933 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_933 [i ] into _temp_934
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
!   _temp_935 = _temp_934 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_935 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0AS",r10
!   _temp_936 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_936 [i ] into _temp_937
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
!   Data Move: myThread = *_temp_937  (sizeInBytes=4164)
	load	[r14+-36],r5
	set	-54252,r4
	add	r14,r4,r4
	mov	1041,r3
_Label_2775:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2775
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_938 = &myThread
	set	-54252,r1
	add	r14,r1,r1
	store	r1,[r14+-32]
!   _temp_939 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_938  sizeInBytes=4
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
_Label_922:
!   i = i + 1
	set	-50088,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-50088,r2
	store	r1,[r14+r2]
	jmp	_Label_920
! END FOR
_Label_923:
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
!   _temp_942 = &threadManagerLock
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
!   _temp_943 = &aThreadBecameFree
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
	.word	_Label_944
	.word	4		! total size of parameters
	.word	54252		! frame size = 54252
	.word	_Label_945
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_946
	.word	-12
	.word	4
	.word	_Label_947
	.word	-16
	.word	4
	.word	_Label_948
	.word	-20
	.word	4
	.word	_Label_949
	.word	-24
	.word	4
	.word	_Label_950
	.word	-28
	.word	4
	.word	_Label_951
	.word	-32
	.word	4
	.word	_Label_952
	.word	-36
	.word	4
	.word	_Label_953
	.word	-40
	.word	4
	.word	_Label_954
	.word	-44
	.word	4
	.word	_Label_955
	.word	-48
	.word	4
	.word	_Label_956
	.word	-52
	.word	4
	.word	_Label_957
	.word	-56
	.word	4
	.word	_Label_958
	.word	-60
	.word	4
	.word	_Label_959
	.word	-64
	.word	4
	.word	_Label_960
	.word	-68
	.word	4
	.word	_Label_961
	.word	-4232
	.word	4164
	.word	_Label_962
	.word	-4236
	.word	4
	.word	_Label_963
	.word	-4240
	.word	4
	.word	_Label_964
	.word	-4244
	.word	4
	.word	_Label_965
	.word	-4248
	.word	4
	.word	_Label_966
	.word	-4252
	.word	4
	.word	_Label_967
	.word	-4256
	.word	4
	.word	_Label_968
	.word	-4260
	.word	4
	.word	_Label_969
	.word	-8424
	.word	4164
	.word	_Label_970
	.word	-8428
	.word	4
	.word	_Label_971
	.word	-8432
	.word	4
	.word	_Label_972
	.word	-50076
	.word	41644
	.word	_Label_973
	.word	-50080
	.word	4
	.word	_Label_974
	.word	-50084
	.word	4
	.word	_Label_975
	.word	-50088
	.word	4
	.word	_Label_976
	.word	-54252
	.word	4164
	.word	0
_Label_944:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_945:
	.ascii	"Pself\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_975:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_976:
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
_Label_2776:
	push	r0
	sub	r1,1,r1
	bne	_Label_2776
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
!   _temp_977 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_977  sizeInBytes=4
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
!   _temp_982 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_983 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_982  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_978:
!   Perform the FOR-LOOP termination test
!   if i > _temp_983 then goto _Label_981		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_981
_Label_979:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_984 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_984  sizeInBytes=4
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
!   _temp_985 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_985  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	750,r13		! source line 750
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_987 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_987 [i ] into _temp_988
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
!   _temp_986 = _temp_988		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_986  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CA",r10
	call	_function_183_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_980:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_978
! END FOR
_Label_981:
! CALL STATEMENT...
!   _temp_989 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_989  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0SE",r10
!   _temp_990 = _function_182_PrintObjectAddr
	set	_function_182_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_991 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_990  sizeInBytes=4
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
	.word	_Label_992
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_994
	.word	-12
	.word	4
	.word	_Label_995
	.word	-16
	.word	4
	.word	_Label_996
	.word	-20
	.word	4
	.word	_Label_997
	.word	-24
	.word	4
	.word	_Label_998
	.word	-28
	.word	4
	.word	_Label_999
	.word	-32
	.word	4
	.word	_Label_1000
	.word	-36
	.word	4
	.word	_Label_1001
	.word	-40
	.word	4
	.word	_Label_1002
	.word	-44
	.word	4
	.word	_Label_1003
	.word	-48
	.word	4
	.word	_Label_1004
	.word	-52
	.word	4
	.word	_Label_1005
	.word	-56
	.word	4
	.word	_Label_1006
	.word	-60
	.word	4
	.word	0
_Label_992:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_993:
	.ascii	"Pself\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1005:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1006:
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
_Label_2777:
	push	r0
	sub	r1,1,r1
	bne	_Label_2777
	mov	761,r13		! source line 761
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1007 = &threadManagerLock
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
!   _temp_1010 = &freeList
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
!   if result==true then goto _Label_1008 else goto _Label_1009
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1009
	jmp	_Label_1008
_Label_1008:
! THEN...
	mov	771,r13		! source line 771
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0SE",r10
!   _temp_1011 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1012 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1011  sizeInBytes=4
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
_Label_1009:
! ASSIGNMENT STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0AS",r10
	mov	773,r13		! source line 773
	mov	"\0\0SE",r10
!   _temp_1013 = &freeList
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
!   _temp_1014 = thread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1014 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_1015 = &threadManagerLock
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
	.word	_Label_1016
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1017
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1018
	.word	-12
	.word	4
	.word	_Label_1019
	.word	-16
	.word	4
	.word	_Label_1020
	.word	-20
	.word	4
	.word	_Label_1021
	.word	-24
	.word	4
	.word	_Label_1022
	.word	-28
	.word	4
	.word	_Label_1023
	.word	-32
	.word	4
	.word	_Label_1024
	.word	-36
	.word	4
	.word	_Label_1025
	.word	-40
	.word	4
	.word	0
_Label_1016:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1017:
	.ascii	"Pself\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1025:
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
_Label_2778:
	push	r0
	sub	r1,1,r1
	bne	_Label_2778
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1026 = &threadManagerLock
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
!   _temp_1027 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1027 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1028 = &freeList
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
!   _temp_1029 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1030 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1029  sizeInBytes=4
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
!   _temp_1031 = &threadManagerLock
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
	.word	_Label_1032
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1033
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1034
	.word	12
	.word	4
	.word	_Label_1035
	.word	-12
	.word	4
	.word	_Label_1036
	.word	-16
	.word	4
	.word	_Label_1037
	.word	-20
	.word	4
	.word	_Label_1038
	.word	-24
	.word	4
	.word	_Label_1039
	.word	-28
	.word	4
	.word	_Label_1040
	.word	-32
	.word	4
	.word	0
_Label_1032:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1033:
	.ascii	"Pself\0"
	.align
_Label_1034:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1041
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1041:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1042
	.word	_sourceFileName
	.word	214		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1042:
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
_Label_2779:
	push	r0
	sub	r1,1,r1
	bne	_Label_2779
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
_Label_2780:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2780
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0SE",r10
!   _temp_1044 = &addrSpace
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
	.word	_Label_1045
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1046
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1047
	.word	-12
	.word	4
	.word	_Label_1048
	.word	-16
	.word	4
	.word	0
_Label_1045:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1046:
	.ascii	"Pself\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1043\0"
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
_Label_2781:
	push	r0
	sub	r1,1,r1
	bne	_Label_2781
	mov	818,r13		! source line 818
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1049) then goto _runtimeErrorNullPointer
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
!   _temp_1050 = &addrSpace
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
!   _temp_1051 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1051  sizeInBytes=4
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
	call	_function_183_ThreadPrintShort
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
	.word	_Label_1052
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1053
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1054
	.word	-12
	.word	4
	.word	_Label_1055
	.word	-16
	.word	4
	.word	_Label_1056
	.word	-20
	.word	4
	.word	0
_Label_1052:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1053:
	.ascii	"Pself\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1049\0"
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
_Label_2782:
	push	r0
	sub	r1,1,r1
	bne	_Label_2782
	mov	841,r13		! source line 841
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1057 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1058  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1059 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1059  sizeInBytes=4
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
!   _temp_1060 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1062		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1062
!	jmp	_Label_1061
_Label_1061:
! THEN...
	mov	851,r13		! source line 851
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1063 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1064
_Label_1062:
! ELSE...
	mov	852,r13		! source line 852
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1066		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1066
!	jmp	_Label_1065
_Label_1065:
! THEN...
	mov	853,r13		! source line 853
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1067 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1068
_Label_1066:
! ELSE...
	mov	854,r13		! source line 854
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1070		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1070
!	jmp	_Label_1069
_Label_1069:
! THEN...
	mov	855,r13		! source line 855
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1071 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1071  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1072
_Label_1070:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1073 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
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
_Label_1072:
! END IF...
_Label_1068:
! END IF...
_Label_1064:
! CALL STATEMENT...
!   _temp_1074 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1074  sizeInBytes=4
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
!   _temp_1075 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1075  sizeInBytes=4
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
	.word	_Label_1076
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1078
	.word	-12
	.word	4
	.word	_Label_1079
	.word	-16
	.word	4
	.word	_Label_1080
	.word	-20
	.word	4
	.word	_Label_1081
	.word	-24
	.word	4
	.word	_Label_1082
	.word	-28
	.word	4
	.word	_Label_1083
	.word	-32
	.word	4
	.word	_Label_1084
	.word	-36
	.word	4
	.word	_Label_1085
	.word	-40
	.word	4
	.word	_Label_1086
	.word	-44
	.word	4
	.word	_Label_1087
	.word	-48
	.word	4
	.word	0
_Label_1076:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1077:
	.ascii	"Pself\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1088
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1088:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1089
	.word	_sourceFileName
	.word	234		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1089:
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
_Label_2783:
	push	r0
	sub	r1,1,r1
	bne	_Label_2783
	mov	874,r13		! source line 874
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0AS",r10
!   _temp_1090 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1592]
!   NEW ARRAY Constructor...
!   _temp_1092 = &_temp_1091
	add	r14,-1588,r1
	store	r1,[r14+-344]
!   _temp_1092 = _temp_1092 + 4
	load	[r14+-344],r1
	add	r1,4,r1
	store	r1,[r14+-344]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1094 = zeros  (sizeInBytes=124)
	add	r14,-336,r4
	mov	31,r3
_Label_2784:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2784
!   _temp_1094 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-336]
	mov	10,r1
	store	r1,[r14+-340]
_Label_1096:
!   Data Move: *_temp_1092 = _temp_1094  (sizeInBytes=124)
	add	r14,-336,r5
	load	[r14+-344],r4
	mov	31,r3
_Label_2785:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2785
!   _temp_1092 = _temp_1092 + 124
	load	[r14+-344],r1
	add	r1,124,r1
	store	r1,[r14+-344]
!   _temp_1093 = _temp_1093 + -1
	load	[r14+-340],r1
	add	r1,-1,r1
	store	r1,[r14+-340]
!   if intNotZero (_temp_1093) then goto _Label_1096
	load	[r14+-340],r1
	cmp	r1,r0
	bne	_Label_1096
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1588]
!   _temp_1097 = &_temp_1091
	add	r14,-1588,r1
	store	r1,[r14+-208]
!   make sure array has size 10
	load	[r14+-1592],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2786
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2786:
!   make sure array has size 10
	load	[r14+-208],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1090 = *_temp_1097  (sizeInBytes=1244)
	load	[r14+-208],r5
	load	[r14+-1592],r4
	mov	311,r3
_Label_2787:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2787
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
!   _temp_1103 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-200]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1104 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-196]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1103  (sizeInBytes=4)
	load	[r14+-200],r1
	store	r1,[r14+-1596]
_Label_1099:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1104 then goto _Label_1102		
	load	[r14+-1596],r1
	load	[r14+-196],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1102
_Label_1100:
	mov	885,r13		! source line 885
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   _temp_1105 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Move address of _temp_1105 [i ] into _temp_1106
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
!   ZeroMemory: _temp_1107 = zeros  (sizeInBytes=124)
	add	r14,-184,r4
	mov	31,r3
_Label_2788:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2788
!   _temp_1107 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-184]
!   Data Move: *_temp_1106 = _temp_1107  (sizeInBytes=124)
	add	r14,-184,r5
	load	[r14+-188],r4
	mov	31,r3
_Label_2789:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2789
! SEND STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0SE",r10
!   _temp_1109 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1109 [i ] into _temp_1110
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
!   _temp_1112 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1112 [i ] into _temp_1113
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
!   _temp_1111 = _temp_1113		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1114 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1111  sizeInBytes=4
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
_Label_1101:
!   i = i + 1
	load	[r14+-1596],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1596]
	jmp	_Label_1099
! END FOR
_Label_1102:
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
!   _temp_1116 = &processManagerLock
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
!   _temp_1118 = &aProcessBecameFree
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
!   _temp_1120 = &aProcessDied
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
	.word	_Label_1121
	.word	4		! total size of parameters
	.word	1596		! frame size = 1596
	.word	_Label_1122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1123
	.word	-12
	.word	4
	.word	_Label_1124
	.word	-16
	.word	4
	.word	_Label_1125
	.word	-20
	.word	4
	.word	_Label_1126
	.word	-24
	.word	4
	.word	_Label_1127
	.word	-28
	.word	4
	.word	_Label_1128
	.word	-32
	.word	4
	.word	_Label_1129
	.word	-36
	.word	4
	.word	_Label_1130
	.word	-40
	.word	4
	.word	_Label_1131
	.word	-44
	.word	4
	.word	_Label_1132
	.word	-48
	.word	4
	.word	_Label_1133
	.word	-52
	.word	4
	.word	_Label_1134
	.word	-56
	.word	4
	.word	_Label_1135
	.word	-60
	.word	4
	.word	_Label_1136
	.word	-184
	.word	124
	.word	_Label_1137
	.word	-188
	.word	4
	.word	_Label_1138
	.word	-192
	.word	4
	.word	_Label_1139
	.word	-196
	.word	4
	.word	_Label_1140
	.word	-200
	.word	4
	.word	_Label_1141
	.word	-204
	.word	4
	.word	_Label_1142
	.word	-208
	.word	4
	.word	_Label_1143
	.word	-212
	.word	4
	.word	_Label_1144
	.word	-336
	.word	124
	.word	_Label_1145
	.word	-340
	.word	4
	.word	_Label_1146
	.word	-344
	.word	4
	.word	_Label_1147
	.word	-1588
	.word	1244
	.word	_Label_1148
	.word	-1592
	.word	4
	.word	_Label_1149
	.word	-1596
	.word	4
	.word	0
_Label_1121:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1122:
	.ascii	"Pself\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1149:
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
_Label_2790:
	push	r0
	sub	r1,1,r1
	bne	_Label_2790
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
!   _temp_1150 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1150  sizeInBytes=4
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
!   _temp_1155 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1156 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1155  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1151:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1156 then goto _Label_1154		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1154
_Label_1152:
	mov	911,r13		! source line 911
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1157 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1157  sizeInBytes=4
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
!   _temp_1158 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1158  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0SE",r10
!   _temp_1159 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1159 [i ] into _temp_1160
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
_Label_1153:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1151
! END FOR
_Label_1154:
! CALL STATEMENT...
!   _temp_1161 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1161  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_1162 = _function_182_PrintObjectAddr
	set	_function_182_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1163 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1162  sizeInBytes=4
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
	.word	_Label_1164
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1166
	.word	-12
	.word	4
	.word	_Label_1167
	.word	-16
	.word	4
	.word	_Label_1168
	.word	-20
	.word	4
	.word	_Label_1169
	.word	-24
	.word	4
	.word	_Label_1170
	.word	-28
	.word	4
	.word	_Label_1171
	.word	-32
	.word	4
	.word	_Label_1172
	.word	-36
	.word	4
	.word	_Label_1173
	.word	-40
	.word	4
	.word	_Label_1174
	.word	-44
	.word	4
	.word	_Label_1175
	.word	-48
	.word	4
	.word	_Label_1176
	.word	-52
	.word	4
	.word	_Label_1177
	.word	-56
	.word	4
	.word	0
_Label_1164:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1165:
	.ascii	"Pself\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1176:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1177:
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
_Label_2791:
	push	r0
	sub	r1,1,r1
	bne	_Label_2791
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
!   _temp_1178 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
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
!   _temp_1183 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1184 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1183  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1179:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1184 then goto _Label_1182		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1182
_Label_1180:
	mov	934,r13		! source line 934
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1185 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1185  sizeInBytes=4
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
!   _temp_1186 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1186 [i ] into _temp_1187
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
_Label_1181:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1179
! END FOR
_Label_1182:
! CALL STATEMENT...
!   _temp_1188 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1188  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1189 = _function_182_PrintObjectAddr
	set	_function_182_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1190 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1189  sizeInBytes=4
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
	.word	_Label_1191
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1192
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1193
	.word	-12
	.word	4
	.word	_Label_1194
	.word	-16
	.word	4
	.word	_Label_1195
	.word	-20
	.word	4
	.word	_Label_1196
	.word	-24
	.word	4
	.word	_Label_1197
	.word	-28
	.word	4
	.word	_Label_1198
	.word	-32
	.word	4
	.word	_Label_1199
	.word	-36
	.word	4
	.word	_Label_1200
	.word	-40
	.word	4
	.word	_Label_1201
	.word	-44
	.word	4
	.word	_Label_1202
	.word	-48
	.word	4
	.word	_Label_1203
	.word	-52
	.word	4
	.word	0
_Label_1191:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1192:
	.ascii	"Pself\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1202:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1203:
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
_Label_2792:
	push	r0
	sub	r1,1,r1
	bne	_Label_2792
	mov	947,r13		! source line 947
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1204 = &processManagerLock
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
_Label_1205:
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1208 = &freeList
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
!   if result==true then goto _Label_1206 else goto _Label_1207
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1207
	jmp	_Label_1206
_Label_1206:
	mov	957,r13		! source line 957
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1209 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1210 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1209  sizeInBytes=4
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
	jmp	_Label_1205
_Label_1207:
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
	mov	960,r13		! source line 960
	mov	"\0\0SE",r10
!   _temp_1211 = &freeList
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
!   _temp_1212 = process + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1212 = 1  (sizeInBytes=4)
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
!   _temp_1213 = process + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1213 = nextPid  (sizeInBytes=4)
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
!   _temp_1214 = &processManagerLock
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
	.word	_Label_1215
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1216
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1217
	.word	-12
	.word	4
	.word	_Label_1218
	.word	-16
	.word	4
	.word	_Label_1219
	.word	-20
	.word	4
	.word	_Label_1220
	.word	-24
	.word	4
	.word	_Label_1221
	.word	-28
	.word	4
	.word	_Label_1222
	.word	-32
	.word	4
	.word	_Label_1223
	.word	-36
	.word	4
	.word	_Label_1224
	.word	-40
	.word	4
	.word	_Label_1225
	.word	-44
	.word	4
	.word	0
_Label_1215:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1216:
	.ascii	"Pself\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1225:
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
_Label_2793:
	push	r0
	sub	r1,1,r1
	bne	_Label_2793
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1226 = &processManagerLock
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
!   _temp_1227 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1227 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1228 = &freeList
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
!   _temp_1229 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1230 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1229  sizeInBytes=4
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
!   _temp_1231 = &processManagerLock
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
	.word	_Label_1232
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1233
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1234
	.word	12
	.word	4
	.word	_Label_1235
	.word	-12
	.word	4
	.word	_Label_1236
	.word	-16
	.word	4
	.word	_Label_1237
	.word	-20
	.word	4
	.word	_Label_1238
	.word	-24
	.word	4
	.word	_Label_1239
	.word	-28
	.word	4
	.word	_Label_1240
	.word	-32
	.word	4
	.word	0
_Label_1232:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1233:
	.ascii	"Pself\0"
	.align
_Label_1234:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1241
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1241:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1242
	.word	_sourceFileName
	.word	257		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1242:
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
_Label_2794:
	push	r0
	sub	r1,1,r1
	bne	_Label_2794
	mov	1018,r13		! source line 1018
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1243 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1243  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1024,r13		! source line 1024
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1025,r13		! source line 1025
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
	mov	1026,r13		! source line 1026
	mov	"\0\0SE",r10
!   _temp_1245 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	1027,r13		! source line 1027
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1028,r13		! source line 1028
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
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_1247 = &frameManagerLock
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
	mov	1030,r13		! source line 1030
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
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_1249 = &newFramesAvailable
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
	mov	1037,r13		! source line 1037
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1254 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1255 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1254  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1250:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1255 then goto _Label_1253		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1253
_Label_1251:
	mov	1037,r13		! source line 1037
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1258 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1258) then goto _Label_1257
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1257
!	jmp	_Label_1256
_Label_1256:
! THEN...
	mov	1041,r13		! source line 1041
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1259 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1259  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1041,r13		! source line 1041
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1257:
!   Increment the FOR-LOOP index variable and jump back
_Label_1252:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1250
! END FOR
_Label_1253:
! RETURN STATEMENT...
	mov	1037,r13		! source line 1037
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
	.word	_Label_1260
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1261
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1262
	.word	-12
	.word	4
	.word	_Label_1263
	.word	-16
	.word	4
	.word	_Label_1264
	.word	-20
	.word	4
	.word	_Label_1265
	.word	-24
	.word	4
	.word	_Label_1266
	.word	-28
	.word	4
	.word	_Label_1267
	.word	-32
	.word	4
	.word	_Label_1268
	.word	-36
	.word	4
	.word	_Label_1269
	.word	-40
	.word	4
	.word	_Label_1270
	.word	-44
	.word	4
	.word	_Label_1271
	.word	-48
	.word	4
	.word	_Label_1272
	.word	-52
	.word	4
	.word	_Label_1273
	.word	-56
	.word	4
	.word	0
_Label_1260:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1261:
	.ascii	"Pself\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1273:
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
_Label_2795:
	push	r0
	sub	r1,1,r1
	bne	_Label_2795
	mov	1048,r13		! source line 1048
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1274 = &frameManagerLock
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
!   _temp_1275 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1276 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1054,r13		! source line 1054
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1277 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_1278 = &framesInUse
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
	mov	1057,r13		! source line 1057
	mov	"\0\0SE",r10
!   _temp_1279 = &frameManagerLock
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
	mov	1057,r13		! source line 1057
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
	.word	_Label_1280
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1281
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1282
	.word	-12
	.word	4
	.word	_Label_1283
	.word	-16
	.word	4
	.word	_Label_1284
	.word	-20
	.word	4
	.word	_Label_1285
	.word	-24
	.word	4
	.word	_Label_1286
	.word	-28
	.word	4
	.word	_Label_1287
	.word	-32
	.word	4
	.word	0
_Label_1280:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1281:
	.ascii	"Pself\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1274\0"
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
_Label_2796:
	push	r0
	sub	r1,1,r1
	bne	_Label_2796
	mov	1062,r13		! source line 1062
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0SE",r10
!   _temp_1288 = &frameManagerLock
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
	mov	1073,r13		! source line 1073
	mov	"\0\0IF",r10
!   if numberFreeFrames >= 1 then goto _Label_1290		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1290
!	jmp	_Label_1289
_Label_1289:
! THEN...
	mov	1074,r13		! source line 1074
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0SE",r10
!   _temp_1291 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1292 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1291  sizeInBytes=4
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
_Label_1290:
! ASSIGNMENT STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0AS",r10
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   _temp_1293 = &framesInUse
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
	mov	1079,r13		! source line 1079
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
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1294 = &frameManagerLock
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
	mov	1085,r13		! source line 1085
	mov	"\0\0AS",r10
!   _temp_1295 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1295		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1087,r13		! source line 1087
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
	.word	_Label_1296
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1297
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1298
	.word	-12
	.word	4
	.word	_Label_1299
	.word	-16
	.word	4
	.word	_Label_1300
	.word	-20
	.word	4
	.word	_Label_1301
	.word	-24
	.word	4
	.word	_Label_1302
	.word	-28
	.word	4
	.word	_Label_1303
	.word	-32
	.word	4
	.word	_Label_1304
	.word	-36
	.word	4
	.word	_Label_1305
	.word	-40
	.word	4
	.word	0
_Label_1296:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1297:
	.ascii	"Pself\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1304:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1305:
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
_Label_2797:
	push	r0
	sub	r1,1,r1
	bne	_Label_2797
	mov	1092,r13		! source line 1092
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_1306 = &frameManagerLock
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
	mov	1098,r13		! source line 1098
	mov	"\0\0WH",r10
_Label_1307:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1309		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1309
!	jmp	_Label_1308
_Label_1308:
	mov	1098,r13		! source line 1098
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_1310 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1311 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1310  sizeInBytes=4
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
	jmp	_Label_1307
_Label_1309:
! FOR STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1316 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1317 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1316  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1312:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1317 then goto _Label_1315		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1315
_Label_1313:
	mov	1102,r13		! source line 1102
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0AS",r10
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_1318 = &framesInUse
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
	mov	1105,r13		! source line 1105
	mov	"\0\0AS",r10
!   _temp_1319 = 8192 * freeFrameNum		(int)
	mov	8192,r1
	load	[r14+-52],r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1319		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1106,r13		! source line 1106
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
	mov	1107,r13		! source line 1107
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
_Label_1314:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1312
! END FOR
_Label_1315:
! ASSIGNMENT STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1320 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1320 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0SE",r10
!   _temp_1321 = &frameManagerLock
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
	mov	1113,r13		! source line 1113
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
	.word	_Label_1322
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1323
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1324
	.word	12
	.word	4
	.word	_Label_1325
	.word	16
	.word	4
	.word	_Label_1326
	.word	-12
	.word	4
	.word	_Label_1327
	.word	-16
	.word	4
	.word	_Label_1328
	.word	-20
	.word	4
	.word	_Label_1329
	.word	-24
	.word	4
	.word	_Label_1330
	.word	-28
	.word	4
	.word	_Label_1331
	.word	-32
	.word	4
	.word	_Label_1332
	.word	-36
	.word	4
	.word	_Label_1333
	.word	-40
	.word	4
	.word	_Label_1334
	.word	-44
	.word	4
	.word	_Label_1335
	.word	-48
	.word	4
	.word	_Label_1336
	.word	-52
	.word	4
	.word	_Label_1337
	.word	-56
	.word	4
	.word	0
_Label_1322:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1323:
	.ascii	"Pself\0"
	.align
_Label_1324:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1325:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1335:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1336:
	.byte	'I'
	.ascii	"freeFrameNum\0"
	.align
_Label_1337:
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
_Label_2798:
	push	r0
	sub	r1,1,r1
	bne	_Label_2798
	mov	1118,r13		! source line 1118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0SE",r10
!   _temp_1338 = &frameManagerLock
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
	mov	1124,r13		! source line 1124
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1339 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_1339  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
! FOR STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1344 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1345 = numFramesReturned - 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1344  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1340:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1345 then goto _Label_1343		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1343
_Label_1341:
	mov	1126,r13		! source line 1126
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0AS",r10
	mov	1127,r13		! source line 1127
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
	mov	1128,r13		! source line 1128
	mov	"\0\0AS",r10
!   _temp_1346 = frameAddr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1346 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   _temp_1347 = &framesInUse
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
_Label_1342:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1340
! END FOR
_Label_1343:
! ASSIGNMENT STATEMENT...
	mov	1131,r13		! source line 1131
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
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_1348 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1349 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1348  sizeInBytes=4
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
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_1350 = &frameManagerLock
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
	mov	1135,r13		! source line 1135
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
	.word	_Label_1351
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1352
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1353
	.word	12
	.word	4
	.word	_Label_1354
	.word	-12
	.word	4
	.word	_Label_1355
	.word	-16
	.word	4
	.word	_Label_1356
	.word	-20
	.word	4
	.word	_Label_1357
	.word	-24
	.word	4
	.word	_Label_1358
	.word	-28
	.word	4
	.word	_Label_1359
	.word	-32
	.word	4
	.word	_Label_1360
	.word	-36
	.word	4
	.word	_Label_1361
	.word	-40
	.word	4
	.word	_Label_1362
	.word	-44
	.word	4
	.word	_Label_1363
	.word	-48
	.word	4
	.word	_Label_1364
	.word	-52
	.word	4
	.word	_Label_1365
	.word	-56
	.word	4
	.word	_Label_1366
	.word	-60
	.word	4
	.word	0
_Label_1351:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1352:
	.ascii	"Pself\0"
	.align
_Label_1353:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1363:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1364:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1365:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1366:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1367
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
_Label_1367:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1368
	.word	_sourceFileName
	.word	276		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1368:
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
_Label_2799:
	push	r0
	sub	r1,1,r1
	bne	_Label_2799
	mov	1146,r13		! source line 1146
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0AS",r10
!   _temp_1369 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1371 = &_temp_1370
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1371 = _temp_1371 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1373:
!   Data Move: *_temp_1371 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1371 = _temp_1371 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1372 = _temp_1372 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1372) then goto _Label_1373
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1373
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1374 = &_temp_1370
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_2800
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2800:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1369 = *_temp_1374  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_2801:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2801
! RETURN STATEMENT...
	mov	1151,r13		! source line 1151
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
	.word	_Label_1375
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1376
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1377
	.word	-12
	.word	4
	.word	_Label_1378
	.word	-16
	.word	4
	.word	_Label_1379
	.word	-20
	.word	4
	.word	_Label_1380
	.word	-104
	.word	84
	.word	_Label_1381
	.word	-108
	.word	4
	.word	0
_Label_1375:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1376:
	.ascii	"Pself\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1369\0"
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
_Label_2802:
	push	r0
	sub	r1,1,r1
	bne	_Label_2802
	mov	1156,r13		! source line 1156
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1382 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1382  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1383 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1383  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1388 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1389 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1388  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1384:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1389 then goto _Label_1387		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1387
_Label_1385:
	mov	1163,r13		! source line 1163
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1390 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1392 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1392 [i ] into _temp_1393
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
!   _temp_1391 = _temp_1393		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1391  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1394 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1394  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1396 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1396 [i ] into _temp_1397
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
!   Data Move: _temp_1395 = *_temp_1397  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1395  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1167,r13		! source line 1167
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1398 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1398  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1399 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1399  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1169,r13		! source line 1169
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1400 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1400  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1402) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1401  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1401  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1171,r13		! source line 1171
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1403 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1403  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0IF",r10
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1407) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1406  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1406) then goto _Label_1405
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1405
!	jmp	_Label_1404
_Label_1404:
! THEN...
	mov	1174,r13		! source line 1174
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1409) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1408  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1408  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1410
_Label_1405:
! ELSE...
	mov	1176,r13		! source line 1176
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1411 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1411  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1410:
! CALL STATEMENT...
!   _temp_1412 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1412  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1178,r13		! source line 1178
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0IF",r10
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1415) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1413 else goto _Label_1414
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1414
	jmp	_Label_1413
_Label_1413:
! THEN...
	mov	1180,r13		! source line 1180
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1416 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1416  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1417
_Label_1414:
! ELSE...
	mov	1182,r13		! source line 1182
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1418 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1418  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1417:
! CALL STATEMENT...
!   _temp_1419 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1419  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1184,r13		! source line 1184
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0IF",r10
	mov	1185,r13		! source line 1185
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1422) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1420 else goto _Label_1421
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1421
	jmp	_Label_1420
_Label_1420:
! THEN...
	mov	1186,r13		! source line 1186
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1423 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1423  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1424
_Label_1421:
! ELSE...
	mov	1188,r13		! source line 1188
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1425 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1425  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1424:
! CALL STATEMENT...
!   _temp_1426 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1426  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1190,r13		! source line 1190
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0IF",r10
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1429) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1427 else goto _Label_1428
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1428
	jmp	_Label_1427
_Label_1427:
! THEN...
	mov	1192,r13		! source line 1192
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1430 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1430  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1431
_Label_1428:
! ELSE...
	mov	1194,r13		! source line 1194
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1432 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1432  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1194,r13		! source line 1194
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1431:
! CALL STATEMENT...
!   _temp_1433 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1433  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0IF",r10
	mov	1197,r13		! source line 1197
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1436) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1434 else goto _Label_1435
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1435
	jmp	_Label_1434
_Label_1434:
! THEN...
	mov	1198,r13		! source line 1198
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1437 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1437  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1198,r13		! source line 1198
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1438
_Label_1435:
! ELSE...
	mov	1200,r13		! source line 1200
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1439 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1439  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1200,r13		! source line 1200
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1438:
! CALL STATEMENT...
!   Call the function
	mov	1202,r13		! source line 1202
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1386:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1384
! END FOR
_Label_1387:
! RETURN STATEMENT...
	mov	1163,r13		! source line 1163
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
	.word	_Label_1440
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1441
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1442
	.word	-12
	.word	4
	.word	_Label_1443
	.word	-16
	.word	4
	.word	_Label_1444
	.word	-20
	.word	4
	.word	_Label_1445
	.word	-24
	.word	4
	.word	_Label_1446
	.word	-28
	.word	4
	.word	_Label_1447
	.word	-32
	.word	4
	.word	_Label_1448
	.word	-36
	.word	4
	.word	_Label_1449
	.word	-40
	.word	4
	.word	_Label_1450
	.word	-44
	.word	4
	.word	_Label_1451
	.word	-48
	.word	4
	.word	_Label_1452
	.word	-52
	.word	4
	.word	_Label_1453
	.word	-56
	.word	4
	.word	_Label_1454
	.word	-60
	.word	4
	.word	_Label_1455
	.word	-64
	.word	4
	.word	_Label_1456
	.word	-68
	.word	4
	.word	_Label_1457
	.word	-72
	.word	4
	.word	_Label_1458
	.word	-76
	.word	4
	.word	_Label_1459
	.word	-80
	.word	4
	.word	_Label_1460
	.word	-84
	.word	4
	.word	_Label_1461
	.word	-88
	.word	4
	.word	_Label_1462
	.word	-92
	.word	4
	.word	_Label_1463
	.word	-96
	.word	4
	.word	_Label_1464
	.word	-100
	.word	4
	.word	_Label_1465
	.word	-104
	.word	4
	.word	_Label_1466
	.word	-108
	.word	4
	.word	_Label_1467
	.word	-112
	.word	4
	.word	_Label_1468
	.word	-116
	.word	4
	.word	_Label_1469
	.word	-120
	.word	4
	.word	_Label_1470
	.word	-124
	.word	4
	.word	_Label_1471
	.word	-128
	.word	4
	.word	_Label_1472
	.word	-132
	.word	4
	.word	_Label_1473
	.word	-136
	.word	4
	.word	_Label_1474
	.word	-140
	.word	4
	.word	_Label_1475
	.word	-144
	.word	4
	.word	_Label_1476
	.word	-148
	.word	4
	.word	_Label_1477
	.word	-152
	.word	4
	.word	_Label_1478
	.word	-156
	.word	4
	.word	_Label_1479
	.word	-160
	.word	4
	.word	_Label_1480
	.word	-164
	.word	4
	.word	_Label_1481
	.word	-168
	.word	4
	.word	0
_Label_1440:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1441:
	.ascii	"Pself\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1481:
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
_Label_2803:
	push	r0
	sub	r1,1,r1
	bne	_Label_2803
	mov	1208,r13		! source line 1208
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1213,r13		! source line 1213
	mov	"\0\0RE",r10
!   _temp_1484 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1484 [entry ] into _temp_1485
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
!   Data Move: _temp_1483 = *_temp_1485  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1482 = _temp_1483 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1482  (sizeInBytes=4)
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
	.word	_Label_1486
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1487
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1488
	.word	12
	.word	4
	.word	_Label_1489
	.word	-12
	.word	4
	.word	_Label_1490
	.word	-16
	.word	4
	.word	_Label_1491
	.word	-20
	.word	4
	.word	_Label_1492
	.word	-24
	.word	4
	.word	0
_Label_1486:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1487:
	.ascii	"Pself\0"
	.align
_Label_1488:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1482\0"
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
_Label_2804:
	push	r0
	sub	r1,1,r1
	bne	_Label_2804
	mov	1218,r13		! source line 1218
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0RE",r10
!   _temp_1495 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1495 [entry ] into _temp_1496
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
!   Data Move: _temp_1494 = *_temp_1496  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1493 = _temp_1494 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1493  (sizeInBytes=4)
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
	.word	_Label_1497
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1498
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1499
	.word	12
	.word	4
	.word	_Label_1500
	.word	-12
	.word	4
	.word	_Label_1501
	.word	-16
	.word	4
	.word	_Label_1502
	.word	-20
	.word	4
	.word	_Label_1503
	.word	-24
	.word	4
	.word	0
_Label_1497:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1498:
	.ascii	"Pself\0"
	.align
_Label_1499:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1493\0"
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
_Label_2805:
	push	r0
	sub	r1,1,r1
	bne	_Label_2805
	mov	1227,r13		! source line 1227
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0AS",r10
!   _temp_1504 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1504 [entry ] into _temp_1505
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
!   _temp_1509 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1509 [entry ] into _temp_1510
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
!   Data Move: _temp_1508 = *_temp_1510  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1507 = _temp_1508 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1506 = _temp_1507 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1505 = _temp_1506  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1232,r13		! source line 1232
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
	.word	_Label_1511
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1513
	.word	12
	.word	4
	.word	_Label_1514
	.word	16
	.word	4
	.word	_Label_1515
	.word	-12
	.word	4
	.word	_Label_1516
	.word	-16
	.word	4
	.word	_Label_1517
	.word	-20
	.word	4
	.word	_Label_1518
	.word	-24
	.word	4
	.word	_Label_1519
	.word	-28
	.word	4
	.word	_Label_1520
	.word	-32
	.word	4
	.word	_Label_1521
	.word	-36
	.word	4
	.word	0
_Label_1511:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1512:
	.ascii	"Pself\0"
	.align
_Label_1513:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1514:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1504\0"
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
_Label_2806:
	push	r0
	sub	r1,1,r1
	bne	_Label_2806
	mov	1237,r13		! source line 1237
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0RE",r10
!   _temp_1525 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1525 [entry ] into _temp_1526
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
!   Data Move: _temp_1524 = *_temp_1526  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1523 = _temp_1524 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1523) then goto _Label_1527
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1527
!   _temp_1522 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1528
_Label_1527:
!   _temp_1522 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1528:
!   ReturnResult: _temp_1522  (sizeInBytes=1)
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
	.word	_Label_1529
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1530
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1531
	.word	12
	.word	4
	.word	_Label_1532
	.word	-16
	.word	4
	.word	_Label_1533
	.word	-20
	.word	4
	.word	_Label_1534
	.word	-24
	.word	4
	.word	_Label_1535
	.word	-28
	.word	4
	.word	_Label_1536
	.word	-9
	.word	1
	.word	0
_Label_1529:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1530:
	.ascii	"Pself\0"
	.align
_Label_1531:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1536:
	.byte	'C'
	.ascii	"_temp_1522\0"
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
_Label_2807:
	push	r0
	sub	r1,1,r1
	bne	_Label_2807
	mov	1246,r13		! source line 1246
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0RE",r10
!   _temp_1540 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1540 [entry ] into _temp_1541
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
!   Data Move: _temp_1539 = *_temp_1541  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1538 = _temp_1539 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1538) then goto _Label_1542
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1542
!   _temp_1537 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1543
_Label_1542:
!   _temp_1537 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1543:
!   ReturnResult: _temp_1537  (sizeInBytes=1)
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
	.word	_Label_1544
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1545
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1546
	.word	12
	.word	4
	.word	_Label_1547
	.word	-16
	.word	4
	.word	_Label_1548
	.word	-20
	.word	4
	.word	_Label_1549
	.word	-24
	.word	4
	.word	_Label_1550
	.word	-28
	.word	4
	.word	_Label_1551
	.word	-9
	.word	1
	.word	0
_Label_1544:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1545:
	.ascii	"Pself\0"
	.align
_Label_1546:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1551:
	.byte	'C'
	.ascii	"_temp_1537\0"
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
_Label_2808:
	push	r0
	sub	r1,1,r1
	bne	_Label_2808
	mov	1255,r13		! source line 1255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1259,r13		! source line 1259
	mov	"\0\0RE",r10
!   _temp_1555 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1555 [entry ] into _temp_1556
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
!   Data Move: _temp_1554 = *_temp_1556  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1553 = _temp_1554 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1553) then goto _Label_1557
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1557
!   _temp_1552 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1558
_Label_1557:
!   _temp_1552 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1558:
!   ReturnResult: _temp_1552  (sizeInBytes=1)
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
	.word	_Label_1559
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1560
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1561
	.word	12
	.word	4
	.word	_Label_1562
	.word	-16
	.word	4
	.word	_Label_1563
	.word	-20
	.word	4
	.word	_Label_1564
	.word	-24
	.word	4
	.word	_Label_1565
	.word	-28
	.word	4
	.word	_Label_1566
	.word	-9
	.word	1
	.word	0
_Label_1559:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1560:
	.ascii	"Pself\0"
	.align
_Label_1561:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1566:
	.byte	'C'
	.ascii	"_temp_1552\0"
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
_Label_2809:
	push	r0
	sub	r1,1,r1
	bne	_Label_2809
	mov	1264,r13		! source line 1264
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0RE",r10
!   _temp_1570 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1570 [entry ] into _temp_1571
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
!   Data Move: _temp_1569 = *_temp_1571  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1568 = _temp_1569 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1568) then goto _Label_1572
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1572
!   _temp_1567 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1573
_Label_1572:
!   _temp_1567 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1573:
!   ReturnResult: _temp_1567  (sizeInBytes=1)
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
	.word	_Label_1574
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1575
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1576
	.word	12
	.word	4
	.word	_Label_1577
	.word	-16
	.word	4
	.word	_Label_1578
	.word	-20
	.word	4
	.word	_Label_1579
	.word	-24
	.word	4
	.word	_Label_1580
	.word	-28
	.word	4
	.word	_Label_1581
	.word	-9
	.word	1
	.word	0
_Label_1574:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1575:
	.ascii	"Pself\0"
	.align
_Label_1576:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1581:
	.byte	'C'
	.ascii	"_temp_1567\0"
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
_Label_2810:
	push	r0
	sub	r1,1,r1
	bne	_Label_2810
	mov	1273,r13		! source line 1273
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1277,r13		! source line 1277
	mov	"\0\0AS",r10
!   _temp_1582 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1582 [entry ] into _temp_1583
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
!   _temp_1586 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1586 [entry ] into _temp_1587
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
!   Data Move: _temp_1585 = *_temp_1587  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1584 = _temp_1585 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1583 = _temp_1584  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1277,r13		! source line 1277
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
	.word	_Label_1588
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1589
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1590
	.word	12
	.word	4
	.word	_Label_1591
	.word	-12
	.word	4
	.word	_Label_1592
	.word	-16
	.word	4
	.word	_Label_1593
	.word	-20
	.word	4
	.word	_Label_1594
	.word	-24
	.word	4
	.word	_Label_1595
	.word	-28
	.word	4
	.word	_Label_1596
	.word	-32
	.word	4
	.word	0
_Label_1588:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1589:
	.ascii	"Pself\0"
	.align
_Label_1590:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1582\0"
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
_Label_2811:
	push	r0
	sub	r1,1,r1
	bne	_Label_2811
	mov	1282,r13		! source line 1282
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0AS",r10
!   _temp_1597 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1597 [entry ] into _temp_1598
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
!   _temp_1601 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1601 [entry ] into _temp_1602
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
!   Data Move: _temp_1600 = *_temp_1602  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1599 = _temp_1600 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1598 = _temp_1599  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1286,r13		! source line 1286
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
	.word	_Label_1603
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1605
	.word	12
	.word	4
	.word	_Label_1606
	.word	-12
	.word	4
	.word	_Label_1607
	.word	-16
	.word	4
	.word	_Label_1608
	.word	-20
	.word	4
	.word	_Label_1609
	.word	-24
	.word	4
	.word	_Label_1610
	.word	-28
	.word	4
	.word	_Label_1611
	.word	-32
	.word	4
	.word	0
_Label_1603:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1604:
	.ascii	"Pself\0"
	.align
_Label_1605:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1597\0"
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
_Label_2812:
	push	r0
	sub	r1,1,r1
	bne	_Label_2812
	mov	1291,r13		! source line 1291
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0AS",r10
!   _temp_1612 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1612 [entry ] into _temp_1613
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
!   _temp_1616 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1616 [entry ] into _temp_1617
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
!   Data Move: _temp_1615 = *_temp_1617  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1614 = _temp_1615 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1613 = _temp_1614  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1295,r13		! source line 1295
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
	.word	_Label_1618
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1620
	.word	12
	.word	4
	.word	_Label_1621
	.word	-12
	.word	4
	.word	_Label_1622
	.word	-16
	.word	4
	.word	_Label_1623
	.word	-20
	.word	4
	.word	_Label_1624
	.word	-24
	.word	4
	.word	_Label_1625
	.word	-28
	.word	4
	.word	_Label_1626
	.word	-32
	.word	4
	.word	0
_Label_1618:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1619:
	.ascii	"Pself\0"
	.align
_Label_1620:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1612\0"
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
_Label_2813:
	push	r0
	sub	r1,1,r1
	bne	_Label_2813
	mov	1300,r13		! source line 1300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0AS",r10
!   _temp_1627 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1627 [entry ] into _temp_1628
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
!   _temp_1631 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1631 [entry ] into _temp_1632
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
!   Data Move: _temp_1630 = *_temp_1632  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1629 = _temp_1630 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1628 = _temp_1629  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1304,r13		! source line 1304
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
	.word	_Label_1633
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1634
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1635
	.word	12
	.word	4
	.word	_Label_1636
	.word	-12
	.word	4
	.word	_Label_1637
	.word	-16
	.word	4
	.word	_Label_1638
	.word	-20
	.word	4
	.word	_Label_1639
	.word	-24
	.word	4
	.word	_Label_1640
	.word	-28
	.word	4
	.word	_Label_1641
	.word	-32
	.word	4
	.word	0
_Label_1633:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1634:
	.ascii	"Pself\0"
	.align
_Label_1635:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1627\0"
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
_Label_2814:
	push	r0
	sub	r1,1,r1
	bne	_Label_2814
	mov	1309,r13		! source line 1309
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0AS",r10
!   _temp_1642 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1642 [entry ] into _temp_1643
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
!   _temp_1646 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1646 [entry ] into _temp_1647
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
!   Data Move: _temp_1645 = *_temp_1647  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1644 = _temp_1645 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1643 = _temp_1644  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1313,r13		! source line 1313
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
	.word	_Label_1648
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1650
	.word	12
	.word	4
	.word	_Label_1651
	.word	-12
	.word	4
	.word	_Label_1652
	.word	-16
	.word	4
	.word	_Label_1653
	.word	-20
	.word	4
	.word	_Label_1654
	.word	-24
	.word	4
	.word	_Label_1655
	.word	-28
	.word	4
	.word	_Label_1656
	.word	-32
	.word	4
	.word	0
_Label_1648:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1649:
	.ascii	"Pself\0"
	.align
_Label_1650:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1642\0"
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
_Label_2815:
	push	r0
	sub	r1,1,r1
	bne	_Label_2815
	mov	1318,r13		! source line 1318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0AS",r10
!   _temp_1657 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1657 [entry ] into _temp_1658
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
!   _temp_1661 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1661 [entry ] into _temp_1662
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
!   Data Move: _temp_1660 = *_temp_1662  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1659 = _temp_1660 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1658 = _temp_1659  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1322,r13		! source line 1322
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
	.word	_Label_1663
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1664
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1665
	.word	12
	.word	4
	.word	_Label_1666
	.word	-12
	.word	4
	.word	_Label_1667
	.word	-16
	.word	4
	.word	_Label_1668
	.word	-20
	.word	4
	.word	_Label_1669
	.word	-24
	.word	4
	.word	_Label_1670
	.word	-28
	.word	4
	.word	_Label_1671
	.word	-32
	.word	4
	.word	0
_Label_1663:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1664:
	.ascii	"Pself\0"
	.align
_Label_1665:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1657\0"
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
_Label_2816:
	push	r0
	sub	r1,1,r1
	bne	_Label_2816
	mov	1327,r13		! source line 1327
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0AS",r10
!   _temp_1672 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1672 [entry ] into _temp_1673
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
!   _temp_1676 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1676 [entry ] into _temp_1677
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
!   Data Move: _temp_1675 = *_temp_1677  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1674 = _temp_1675 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1673 = _temp_1674  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1331,r13		! source line 1331
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
	.word	_Label_1678
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1679
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1680
	.word	12
	.word	4
	.word	_Label_1681
	.word	-12
	.word	4
	.word	_Label_1682
	.word	-16
	.word	4
	.word	_Label_1683
	.word	-20
	.word	4
	.word	_Label_1684
	.word	-24
	.word	4
	.word	_Label_1685
	.word	-28
	.word	4
	.word	_Label_1686
	.word	-32
	.word	4
	.word	0
_Label_1678:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1679:
	.ascii	"Pself\0"
	.align
_Label_1680:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1672\0"
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
_Label_2817:
	push	r0
	sub	r1,1,r1
	bne	_Label_2817
	mov	1336,r13		! source line 1336
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0AS",r10
!   _temp_1687 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1687 [entry ] into _temp_1688
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
!   _temp_1691 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1691 [entry ] into _temp_1692
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
!   Data Move: _temp_1690 = *_temp_1692  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1689 = _temp_1690 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1688 = _temp_1689  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1340,r13		! source line 1340
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
	.word	_Label_1693
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1694
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1695
	.word	12
	.word	4
	.word	_Label_1696
	.word	-12
	.word	4
	.word	_Label_1697
	.word	-16
	.word	4
	.word	_Label_1698
	.word	-20
	.word	4
	.word	_Label_1699
	.word	-24
	.word	4
	.word	_Label_1700
	.word	-28
	.word	4
	.word	_Label_1701
	.word	-32
	.word	4
	.word	0
_Label_1693:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1694:
	.ascii	"Pself\0"
	.align
_Label_1695:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1687\0"
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
_Label_2818:
	push	r0
	sub	r1,1,r1
	bne	_Label_2818
	mov	1345,r13		! source line 1345
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1703 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1703 [0 ] into _temp_1704
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
!   _temp_1702 = _temp_1704		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1705 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1702  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1705  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1351,r13		! source line 1351
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1351,r13		! source line 1351
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
	.word	_Label_1706
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1708
	.word	-12
	.word	4
	.word	_Label_1709
	.word	-16
	.word	4
	.word	_Label_1710
	.word	-20
	.word	4
	.word	_Label_1711
	.word	-24
	.word	4
	.word	0
_Label_1706:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1707:
	.ascii	"Pself\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1702\0"
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
_Label_2819:
	push	r0
	sub	r1,1,r1
	bne	_Label_2819
	mov	1356,r13		! source line 1356
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1712
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1712
	jmp	_Label_1713
_Label_1712:
! THEN...
	mov	1372,r13		! source line 1372
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1714
_Label_1713:
! ELSE...
	mov	1373,r13		! source line 1373
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1716		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1716
!	jmp	_Label_1715
_Label_1715:
! THEN...
	mov	1374,r13		! source line 1374
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1716:
! END IF...
_Label_1714:
! ASSIGNMENT STATEMENT...
	mov	1376,r13		! source line 1376
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
	mov	1377,r13		! source line 1377
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
	mov	1380,r13		! source line 1380
	mov	"\0\0WH",r10
_Label_1717:
!	jmp	_Label_1718
_Label_1718:
	mov	1380,r13		! source line 1380
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1721		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1721
!	jmp	_Label_1720
_Label_1720:
! THEN...
	mov	1382,r13		! source line 1382
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1722 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1722  sizeInBytes=4
	load	[r14+-32],r1
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
_Label_1721:
! IF STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0IF",r10
	mov	1385,r13		! source line 1385
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1726) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1725  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1725 then goto _Label_1724 else goto _Label_1723
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1723
	jmp	_Label_1724
_Label_1723:
! THEN...
	mov	1386,r13		! source line 1386
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1727 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1386,r13		! source line 1386
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1724:
! ASSIGNMENT STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0AS",r10
	mov	1389,r13		! source line 1389
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1729) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1728  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1728 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0WH",r10
_Label_1730:
!   if offset >= 8192 then goto _Label_1732		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1732
!	jmp	_Label_1731
_Label_1731:
	mov	1391,r13		! source line 1391
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1733 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1733  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1735		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1735
!	jmp	_Label_1734
_Label_1734:
! THEN...
	mov	1400,r13		! source line 1400
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1735:
! END WHILE...
	jmp	_Label_1730
_Label_1732:
! ASSIGNMENT STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1717
_Label_1719:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1736
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1737
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1738
	.word	12
	.word	4
	.word	_Label_1739
	.word	16
	.word	4
	.word	_Label_1740
	.word	20
	.word	4
	.word	_Label_1741
	.word	-9
	.word	1
	.word	_Label_1742
	.word	-16
	.word	4
	.word	_Label_1743
	.word	-20
	.word	4
	.word	_Label_1744
	.word	-24
	.word	4
	.word	_Label_1745
	.word	-28
	.word	4
	.word	_Label_1746
	.word	-10
	.word	1
	.word	_Label_1747
	.word	-32
	.word	4
	.word	_Label_1748
	.word	-36
	.word	4
	.word	_Label_1749
	.word	-40
	.word	4
	.word	_Label_1750
	.word	-44
	.word	4
	.word	_Label_1751
	.word	-48
	.word	4
	.word	0
_Label_1736:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1737:
	.ascii	"Pself\0"
	.align
_Label_1738:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1739:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1740:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1741:
	.byte	'C'
	.ascii	"_temp_1733\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1746:
	.byte	'C'
	.ascii	"_temp_1725\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1748:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1749:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1750:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1751:
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
_Label_2820:
	push	r0
	sub	r1,1,r1
	bne	_Label_2820
	mov	1410,r13		! source line 1410
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1752
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1752
	jmp	_Label_1753
_Label_1752:
! THEN...
	mov	1422,r13		! source line 1422
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1754
_Label_1753:
! ELSE...
	mov	1423,r13		! source line 1423
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1756		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1756
!	jmp	_Label_1755
_Label_1755:
! THEN...
	mov	1424,r13		! source line 1424
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1756:
! END IF...
_Label_1754:
! ASSIGNMENT STATEMENT...
	mov	1426,r13		! source line 1426
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
	mov	1427,r13		! source line 1427
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
	mov	1428,r13		! source line 1428
	mov	"\0\0WH",r10
_Label_1757:
!	jmp	_Label_1758
_Label_1758:
	mov	1428,r13		! source line 1428
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1763		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1763
	jmp	_Label_1760
_Label_1763:
	mov	1430,r13		! source line 1430
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1765) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1764  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1764 then goto _Label_1762 else goto _Label_1760
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1760
	jmp	_Label_1762
_Label_1762:
	mov	1431,r13		! source line 1431
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1767) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1766  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1766 then goto _Label_1761 else goto _Label_1760
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1760
	jmp	_Label_1761
_Label_1760:
! THEN...
	mov	1432,r13		! source line 1432
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1761:
! ASSIGNMENT STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0AS",r10
	mov	1434,r13		! source line 1434
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1769) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1768  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1768 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0WH",r10
_Label_1770:
!   if offset >= 8192 then goto _Label_1772		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1772
!	jmp	_Label_1771
_Label_1771:
	mov	1435,r13		! source line 1435
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1773 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1773  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1775		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1775
!	jmp	_Label_1774
_Label_1774:
! THEN...
	mov	1442,r13		! source line 1442
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1775:
! END WHILE...
	jmp	_Label_1770
_Label_1772:
! ASSIGNMENT STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1757
_Label_1759:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1776
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1777
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1778
	.word	12
	.word	4
	.word	_Label_1779
	.word	16
	.word	4
	.word	_Label_1780
	.word	20
	.word	4
	.word	_Label_1781
	.word	-9
	.word	1
	.word	_Label_1782
	.word	-16
	.word	4
	.word	_Label_1783
	.word	-20
	.word	4
	.word	_Label_1784
	.word	-24
	.word	4
	.word	_Label_1785
	.word	-10
	.word	1
	.word	_Label_1786
	.word	-28
	.word	4
	.word	_Label_1787
	.word	-11
	.word	1
	.word	_Label_1788
	.word	-32
	.word	4
	.word	_Label_1789
	.word	-36
	.word	4
	.word	_Label_1790
	.word	-40
	.word	4
	.word	_Label_1791
	.word	-44
	.word	4
	.word	0
_Label_1776:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1777:
	.ascii	"Pself\0"
	.align
_Label_1778:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1779:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1780:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1781:
	.byte	'C'
	.ascii	"_temp_1773\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1785:
	.byte	'C'
	.ascii	"_temp_1766\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1787:
	.byte	'C'
	.ascii	"_temp_1764\0"
	.align
_Label_1788:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1789:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1790:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1791:
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
_Label_2821:
	push	r0
	sub	r1,1,r1
	bne	_Label_2821
	mov	1452,r13		! source line 1452
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
	mov	1476,r13		! source line 1476
	mov	"\0\0SE",r10
!   _temp_1795 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1796) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1795  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1794  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1794 >= 4 then goto _Label_1793		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1793
!	jmp	_Label_1792
_Label_1792:
! THEN...
	mov	1479,r13		! source line 1479
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1793:
! IF STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1798		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1798
!	jmp	_Label_1797
_Label_1797:
! THEN...
	mov	1484,r13		! source line 1484
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1798:
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
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
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
	mov	1489,r13		! source line 1489
	mov	"\0\0SE",r10
!   _temp_1801 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1800 = _temp_1801 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1802 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1803) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1800  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1802  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1799  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1799  (sizeInBytes=4)
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
	.word	_Label_1804
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1805
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1806
	.word	12
	.word	4
	.word	_Label_1807
	.word	16
	.word	4
	.word	_Label_1808
	.word	20
	.word	4
	.word	_Label_1809
	.word	-12
	.word	4
	.word	_Label_1810
	.word	-16
	.word	4
	.word	_Label_1811
	.word	-20
	.word	4
	.word	_Label_1812
	.word	-24
	.word	4
	.word	_Label_1813
	.word	-28
	.word	4
	.word	_Label_1814
	.word	-32
	.word	4
	.word	_Label_1815
	.word	-36
	.word	4
	.word	_Label_1816
	.word	-40
	.word	4
	.word	_Label_1817
	.word	-44
	.word	4
	.word	0
_Label_1804:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1805:
	.ascii	"Pself\0"
	.align
_Label_1806:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1807:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1808:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1817:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_1818
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_1818:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1819
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_1819:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_2822:
	push	r0
	sub	r1,1,r1
	bne	_Label_2822
	mov	1824,r13		! source line 1824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1820 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1820  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0SE",r10
!   _temp_1822 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
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
! ASSIGNMENT STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0SE",r10
!   _temp_1824 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	1835,r13		! source line 1835
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_1825
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1826
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1827
	.word	-12
	.word	4
	.word	_Label_1828
	.word	-16
	.word	4
	.word	_Label_1829
	.word	-20
	.word	4
	.word	_Label_1830
	.word	-24
	.word	4
	.word	_Label_1831
	.word	-28
	.word	4
	.word	0
_Label_1825:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1826:
	.ascii	"Pself\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_2823:
	push	r0
	sub	r1,1,r1
	bne	_Label_2823
	mov	1840,r13		! source line 1840
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0SE",r10
!   _temp_1832 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0WH",r10
_Label_1833:
!	jmp	_Label_1834
_Label_1834:
	mov	1854,r13		! source line 1854
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0SE",r10
!   _temp_1836 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1837) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_1836  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0SE",r10
!   _temp_1838 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	1861,r13		! source line 1861
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1847 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_1841
	cmp	r1,2
	be	_Label_1842
	cmp	r1,3
	be	_Label_1843
	cmp	r1,4
	be	_Label_1844
	cmp	r1,5
	be	_Label_1845
	cmp	r1,6
	be	_Label_1846
	jmp	_Label_1839
! CASE 1...
_Label_1841:
! SEND STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0SE",r10
!   _temp_1848 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_1842:
! CALL STATEMENT...
!   _temp_1849 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1849  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1866,r13		! source line 1866
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_1843:
! CALL STATEMENT...
!   _temp_1850 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1850  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1868,r13		! source line 1868
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_1844:
! CALL STATEMENT...
!   _temp_1851 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1851  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1870,r13		! source line 1870
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_1845:
! BREAK STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0BR",r10
	jmp	_Label_1840
! CASE 6...
_Label_1846:
! CALL STATEMENT...
!   _temp_1852 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1852  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1876,r13		! source line 1876
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_1839:
! CALL STATEMENT...
!   _temp_1853 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1853  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1878,r13		! source line 1878
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1840:
! END WHILE...
	jmp	_Label_1833
_Label_1835:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_1854
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1855
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1856
	.word	12
	.word	4
	.word	_Label_1857
	.word	16
	.word	4
	.word	_Label_1858
	.word	20
	.word	4
	.word	_Label_1859
	.word	-12
	.word	4
	.word	_Label_1860
	.word	-16
	.word	4
	.word	_Label_1861
	.word	-20
	.word	4
	.word	_Label_1862
	.word	-24
	.word	4
	.word	_Label_1863
	.word	-28
	.word	4
	.word	_Label_1864
	.word	-32
	.word	4
	.word	_Label_1865
	.word	-36
	.word	4
	.word	_Label_1866
	.word	-40
	.word	4
	.word	_Label_1867
	.word	-44
	.word	4
	.word	_Label_1868
	.word	-48
	.word	4
	.word	_Label_1869
	.word	-52
	.word	4
	.word	0
_Label_1854:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_1855:
	.ascii	"Pself\0"
	.align
_Label_1856:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1857:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1858:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	1887,r13		! source line 1887
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_1870
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1871
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1872
	.word	12
	.word	4
	.word	_Label_1873
	.word	16
	.word	4
	.word	_Label_1874
	.word	20
	.word	4
	.word	_Label_1875
	.word	24
	.word	4
	.word	0
_Label_1870:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_1871:
	.ascii	"Pself\0"
	.align
_Label_1872:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1873:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1874:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1875:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_2824:
	push	r0
	sub	r1,1,r1
	bne	_Label_2824
	mov	1913,r13		! source line 1913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0SE",r10
!   _temp_1876 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0WH",r10
_Label_1877:
!	jmp	_Label_1878
_Label_1878:
	mov	1926,r13		! source line 1926
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0SE",r10
!   _temp_1880 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1881) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_1880  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0SE",r10
!   _temp_1882 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	1932,r13		! source line 1932
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1891 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_1885
	cmp	r1,2
	be	_Label_1886
	cmp	r1,3
	be	_Label_1887
	cmp	r1,4
	be	_Label_1888
	cmp	r1,5
	be	_Label_1889
	cmp	r1,6
	be	_Label_1890
	jmp	_Label_1883
! CASE 1...
_Label_1885:
! SEND STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0SE",r10
!   _temp_1892 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_1886:
! CALL STATEMENT...
!   _temp_1893 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1893  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1937,r13		! source line 1937
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_1887:
! CALL STATEMENT...
!   _temp_1894 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1894  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1939,r13		! source line 1939
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_1888:
! CALL STATEMENT...
!   _temp_1895 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1895  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1941,r13		! source line 1941
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_1889:
! BREAK STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0BR",r10
	jmp	_Label_1884
! CASE 6...
_Label_1890:
! CALL STATEMENT...
!   _temp_1896 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1896  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1947,r13		! source line 1947
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_1883:
! CALL STATEMENT...
!   _temp_1897 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1897  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1949,r13		! source line 1949
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1884:
! END WHILE...
	jmp	_Label_1877
_Label_1879:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_1898
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1900
	.word	12
	.word	4
	.word	_Label_1901
	.word	16
	.word	4
	.word	_Label_1902
	.word	20
	.word	4
	.word	_Label_1903
	.word	-12
	.word	4
	.word	_Label_1904
	.word	-16
	.word	4
	.word	_Label_1905
	.word	-20
	.word	4
	.word	_Label_1906
	.word	-24
	.word	4
	.word	_Label_1907
	.word	-28
	.word	4
	.word	_Label_1908
	.word	-32
	.word	4
	.word	_Label_1909
	.word	-36
	.word	4
	.word	_Label_1910
	.word	-40
	.word	4
	.word	_Label_1911
	.word	-44
	.word	4
	.word	_Label_1912
	.word	-48
	.word	4
	.word	_Label_1913
	.word	-52
	.word	4
	.word	0
_Label_1898:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_1899:
	.ascii	"Pself\0"
	.align
_Label_1900:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1901:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1902:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	1958,r13		! source line 1958
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_1914
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1915
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1916
	.word	12
	.word	4
	.word	_Label_1917
	.word	16
	.word	4
	.word	_Label_1918
	.word	20
	.word	4
	.word	_Label_1919
	.word	24
	.word	4
	.word	0
_Label_1914:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_1915:
	.ascii	"Pself\0"
	.align
_Label_1916:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1917:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1918:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1919:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_1920
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_1920:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1921
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_1921:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_2825:
	push	r0
	sub	r1,1,r1
	bne	_Label_2825
	mov	1989,r13		! source line 1989
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1922 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_1922  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0SE",r10
!   _temp_1924 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0SE",r10
!   _temp_1927 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0AS",r10
!   _temp_1928 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_1930 = &_temp_1929
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_1930 = _temp_1930 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1932 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_2826:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2826
!   _temp_1932 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_1934:
!   Data Move: *_temp_1930 = _temp_1932  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_2827:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2827
!   _temp_1930 = _temp_1930 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_1931 = _temp_1931 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_1931) then goto _Label_1934
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_1934
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_1935 = &_temp_1929
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2828
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2828:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1928 = *_temp_1935  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_2829:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2829
! FOR STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1940 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1941 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1940  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_1936:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1941 then goto _Label_1939		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1939
_Label_1937:
	mov	2006,r13		! source line 2006
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0AS",r10
!   _temp_1942 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_1942 [i ] into _temp_1943
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_1944 = _temp_1943 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_1944 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0SE",r10
!   _temp_1945 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_1945 [i ] into _temp_1946
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0SE",r10
!   _temp_1948 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_1948 [i ] into _temp_1949
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_1947 = _temp_1949		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_1950 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_1947  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1938:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_1936
! END FOR
_Label_1939:
! ASSIGNMENT STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0SE",r10
!   _temp_1953 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0AS",r10
!   _temp_1954 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_1956 = &_temp_1955
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_1956 = _temp_1956 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1958 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_2830:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2830
!   _temp_1958 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_1960:
!   Data Move: *_temp_1956 = _temp_1958  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_2831:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2831
!   _temp_1956 = _temp_1956 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_1957 = _temp_1957 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_1957) then goto _Label_1960
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_1960
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_1961 = &_temp_1955
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2832
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2832:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1954 = *_temp_1961  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_2833:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2833
! FOR STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1966 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1967 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1966  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_1962:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1967 then goto _Label_1965		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1965
_Label_1963:
	mov	2018,r13		! source line 2018
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0AS",r10
!   _temp_1968 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_1968 [i ] into _temp_1969
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_1970 = _temp_1969 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1970 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0SE",r10
!   _temp_1972 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_1972 [i ] into _temp_1973
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_1971 = _temp_1973		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_1974 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1971  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1964:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_1962
! END FOR
_Label_1965:
! ASSIGNMENT STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_2834:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2834
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0AS",r10
!   _temp_1976 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_1977 = _temp_1976 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1977 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
	mov	2030,r13		! source line 2030
	mov	"\0\0SE",r10
!   _temp_1978 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0SE",r10
!   _temp_1979 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_1980
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_1981
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1982
	.word	-12
	.word	4
	.word	_Label_1983
	.word	-16
	.word	4
	.word	_Label_1984
	.word	-20
	.word	4
	.word	_Label_1985
	.word	-24
	.word	4
	.word	_Label_1986
	.word	-28
	.word	4
	.word	_Label_1987
	.word	-32
	.word	4
	.word	_Label_1988
	.word	-36
	.word	4
	.word	_Label_1989
	.word	-40
	.word	4
	.word	_Label_1990
	.word	-44
	.word	4
	.word	_Label_1991
	.word	-48
	.word	4
	.word	_Label_1992
	.word	-52
	.word	4
	.word	_Label_1993
	.word	-56
	.word	4
	.word	_Label_1994
	.word	-60
	.word	4
	.word	_Label_1995
	.word	-64
	.word	4
	.word	_Label_1996
	.word	-68
	.word	4
	.word	_Label_1997
	.word	-72
	.word	4
	.word	_Label_1998
	.word	-100
	.word	28
	.word	_Label_1999
	.word	-104
	.word	4
	.word	_Label_2000
	.word	-108
	.word	4
	.word	_Label_2001
	.word	-392
	.word	284
	.word	_Label_2002
	.word	-396
	.word	4
	.word	_Label_2003
	.word	-400
	.word	4
	.word	_Label_2004
	.word	-404
	.word	4
	.word	_Label_2005
	.word	-408
	.word	4
	.word	_Label_2006
	.word	-412
	.word	4
	.word	_Label_2007
	.word	-416
	.word	4
	.word	_Label_2008
	.word	-420
	.word	4
	.word	_Label_2009
	.word	-424
	.word	4
	.word	_Label_2010
	.word	-428
	.word	4
	.word	_Label_2011
	.word	-432
	.word	4
	.word	_Label_2012
	.word	-436
	.word	4
	.word	_Label_2013
	.word	-440
	.word	4
	.word	_Label_2014
	.word	-444
	.word	4
	.word	_Label_2015
	.word	-448
	.word	4
	.word	_Label_2016
	.word	-452
	.word	4
	.word	_Label_2017
	.word	-456
	.word	4
	.word	_Label_2018
	.word	-460
	.word	4
	.word	_Label_2019
	.word	-500
	.word	40
	.word	_Label_2020
	.word	-504
	.word	4
	.word	_Label_2021
	.word	-508
	.word	4
	.word	_Label_2022
	.word	-912
	.word	404
	.word	_Label_2023
	.word	-916
	.word	4
	.word	_Label_2024
	.word	-920
	.word	4
	.word	_Label_2025
	.word	-924
	.word	4
	.word	_Label_2026
	.word	-928
	.word	4
	.word	_Label_2027
	.word	-932
	.word	4
	.word	_Label_2028
	.word	-936
	.word	4
	.word	_Label_2029
	.word	-940
	.word	4
	.word	_Label_2030
	.word	-944
	.word	4
	.word	0
_Label_1980:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1981:
	.ascii	"Pself\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_2030:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_2835:
	push	r0
	sub	r1,1,r1
	bne	_Label_2835
	mov	2038,r13		! source line 2038
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0SE",r10
!   _temp_2031 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2032 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2032  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2041,r13		! source line 2041
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2037 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2038 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2037  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2033:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2038 then goto _Label_2036		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2036
_Label_2034:
	mov	2042,r13		! source line 2042
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2039 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2039  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2043,r13		! source line 2043
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2044,r13		! source line 2044
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2040 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2040  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2045,r13		! source line 2045
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0SE",r10
!   _temp_2041 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2041 [i ] into _temp_2042
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2035:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2033
! END FOR
_Label_2036:
! CALL STATEMENT...
!   _temp_2043 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2043  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2048,r13		! source line 2048
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0SE",r10
!   _temp_2044 = _function_179_printFCB
	set	_function_179_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2045 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2044  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2050,r13		! source line 2050
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2046 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2046  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2051,r13		! source line 2051
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2051 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2052 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2051  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2047:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2052 then goto _Label_2050		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2050
_Label_2048:
	mov	2052,r13		! source line 2052
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2053 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2053  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2053,r13		! source line 2053
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2054,r13		! source line 2054
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2054 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2054  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2055,r13		! source line 2055
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2056 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2056 [i ] into _temp_2057
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2055 = _temp_2057		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2056,r13		! source line 2056
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2058 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2057,r13		! source line 2057
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0SE",r10
!   _temp_2059 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2059 [i ] into _temp_2060
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2049:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2047
! END FOR
_Label_2050:
! CALL STATEMENT...
!   _temp_2061 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2061  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2060,r13		! source line 2060
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0SE",r10
!   _temp_2062 = _function_178_printOpen
	set	_function_178_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2063 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2062  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0SE",r10
!   _temp_2064 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2062,r13		! source line 2062
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2065
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2066
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2067
	.word	-12
	.word	4
	.word	_Label_2068
	.word	-16
	.word	4
	.word	_Label_2069
	.word	-20
	.word	4
	.word	_Label_2070
	.word	-24
	.word	4
	.word	_Label_2071
	.word	-28
	.word	4
	.word	_Label_2072
	.word	-32
	.word	4
	.word	_Label_2073
	.word	-36
	.word	4
	.word	_Label_2074
	.word	-40
	.word	4
	.word	_Label_2075
	.word	-44
	.word	4
	.word	_Label_2076
	.word	-48
	.word	4
	.word	_Label_2077
	.word	-52
	.word	4
	.word	_Label_2078
	.word	-56
	.word	4
	.word	_Label_2079
	.word	-60
	.word	4
	.word	_Label_2080
	.word	-64
	.word	4
	.word	_Label_2081
	.word	-68
	.word	4
	.word	_Label_2082
	.word	-72
	.word	4
	.word	_Label_2083
	.word	-76
	.word	4
	.word	_Label_2084
	.word	-80
	.word	4
	.word	_Label_2085
	.word	-84
	.word	4
	.word	_Label_2086
	.word	-88
	.word	4
	.word	_Label_2087
	.word	-92
	.word	4
	.word	_Label_2088
	.word	-96
	.word	4
	.word	_Label_2089
	.word	-100
	.word	4
	.word	_Label_2090
	.word	-104
	.word	4
	.word	_Label_2091
	.word	-108
	.word	4
	.word	_Label_2092
	.word	-112
	.word	4
	.word	_Label_2093
	.word	-116
	.word	4
	.word	0
_Label_2065:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2066:
	.ascii	"Pself\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2093:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_2836:
	push	r0
	sub	r1,1,r1
	bne	_Label_2836
	mov	2067,r13		! source line 2067
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
	mov	2083,r13		! source line 2083
	mov	"\0\0SE",r10
!   _temp_2094 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2095
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2095
	jmp	_Label_2096
_Label_2095:
! THEN...
	mov	2085,r13		! source line 2085
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2096:
! SEND STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0SE",r10
!   _temp_2097 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2090,r13		! source line 2090
	mov	"\0\0WH",r10
_Label_2098:
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   _temp_2101 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2099 else goto _Label_2100
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2100
	jmp	_Label_2099
_Label_2099:
	mov	2090,r13		! source line 2090
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0SE",r10
!   _temp_2102 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2103 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2102  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2098
_Label_2100:
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
	mov	2093,r13		! source line 2093
	mov	"\0\0SE",r10
!   _temp_2104 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2105 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2105 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2106 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2106 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2107 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2107 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0SE",r10
!   _temp_2108 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2103,r13		! source line 2103
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2109
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2111
	.word	12
	.word	4
	.word	_Label_2112
	.word	-12
	.word	4
	.word	_Label_2113
	.word	-16
	.word	4
	.word	_Label_2114
	.word	-20
	.word	4
	.word	_Label_2115
	.word	-24
	.word	4
	.word	_Label_2116
	.word	-28
	.word	4
	.word	_Label_2117
	.word	-32
	.word	4
	.word	_Label_2118
	.word	-36
	.word	4
	.word	_Label_2119
	.word	-40
	.word	4
	.word	_Label_2120
	.word	-44
	.word	4
	.word	_Label_2121
	.word	-48
	.word	4
	.word	_Label_2122
	.word	-52
	.word	4
	.word	_Label_2123
	.word	-56
	.word	4
	.word	0
_Label_2109:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2110:
	.ascii	"Pself\0"
	.align
_Label_2111:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2122:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2123:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_2837:
	push	r0
	sub	r1,1,r1
	bne	_Label_2837
	mov	2108,r13		! source line 2108
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2125		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2125
!	jmp	_Label_2124
_Label_2124:
! THEN...
	mov	2139,r13		! source line 2139
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2126 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2126  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2139,r13		! source line 2139
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2125:
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0WH",r10
_Label_2127:
!   if numFiles <= 0 then goto _Label_2129		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2129
!	jmp	_Label_2128
_Label_2128:
	mov	2149,r13		! source line 2149
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2130 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2130  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2150,r13		! source line 2150
	mov	"\0\0CA",r10
	call	_function_180_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2131 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2131  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2152,r13		! source line 2152
	mov	"\0\0CA",r10
	call	_function_180_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2132 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2132  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2154,r13		! source line 2154
	mov	"\0\0CA",r10
	call	_function_180_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2136 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2136 then goto _Label_2134		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2134
!	jmp	_Label_2135
_Label_2135:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2138
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
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
	store	r2,[r14+-108]
!   _temp_2137 = _temp_2138		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2137  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2157,r13		! source line 2157
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2133 else goto _Label_2134
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2134
	jmp	_Label_2133
_Label_2133:
! THEN...
	mov	2158,r13		! source line 2158
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0BR",r10
	jmp	_Label_2129
! END IF...
_Label_2134:
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2127
_Label_2129:
! IF STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2140		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2140
!	jmp	_Label_2139
_Label_2139:
! THEN...
	mov	2166,r13		! source line 2166
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2140:
! SEND STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0SE",r10
!   _temp_2141 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2146 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2147 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2146  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2142:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2147 then goto _Label_2145		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2145
_Label_2143:
	mov	2171,r13		! source line 2171
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
!   _temp_2148 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2148 [i ] into _temp_2149
!     make sure index expr is >= 0
	load	[r14+-136],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2149		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2153 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2152 = *_temp_2153  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2152 != start then goto _Label_2151		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2151
!	jmp	_Label_2150
_Label_2150:
! THEN...
	mov	2174,r13		! source line 2174
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2154 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2157 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2156 = *_temp_2157  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2155 = _temp_2156 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2154 = _temp_2155  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0SE",r10
!   _temp_2158 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2151:
!   Increment the FOR-LOOP index variable and jump back
_Label_2144:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2142
! END FOR
_Label_2145:
! WHILE STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0WH",r10
_Label_2159:
	mov	2181,r13		! source line 2181
	mov	"\0\0SE",r10
!   _temp_2162 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2160 else goto _Label_2161
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2161
	jmp	_Label_2160
_Label_2160:
	mov	2181,r13		! source line 2181
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0SE",r10
!   _temp_2163 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2164 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2163  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2159
_Label_2161:
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
	mov	2184,r13		! source line 2184
	mov	"\0\0SE",r10
!   _temp_2165 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0SE",r10
!   _temp_2166 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2167 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2167 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2168 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2168 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2169 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2169 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2174 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2173 = *_temp_2174  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2173 < 0 then goto _Label_2172		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2172
	jmp	_Label_2170
_Label_2172:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2175 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2175 ) then goto _Label_2171		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2171
!	jmp	_Label_2170
_Label_2170:
! THEN...
	mov	2194,r13		! source line 2194
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2176 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2176  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2194,r13		! source line 2194
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2171:
! RETURN STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2177
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2178
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2179
	.word	12
	.word	4
	.word	_Label_2180
	.word	-12
	.word	4
	.word	_Label_2181
	.word	-16
	.word	4
	.word	_Label_2182
	.word	-20
	.word	4
	.word	_Label_2183
	.word	-24
	.word	4
	.word	_Label_2184
	.word	-28
	.word	4
	.word	_Label_2185
	.word	-32
	.word	4
	.word	_Label_2186
	.word	-36
	.word	4
	.word	_Label_2187
	.word	-40
	.word	4
	.word	_Label_2188
	.word	-44
	.word	4
	.word	_Label_2189
	.word	-48
	.word	4
	.word	_Label_2190
	.word	-52
	.word	4
	.word	_Label_2191
	.word	-56
	.word	4
	.word	_Label_2192
	.word	-60
	.word	4
	.word	_Label_2193
	.word	-64
	.word	4
	.word	_Label_2194
	.word	-68
	.word	4
	.word	_Label_2195
	.word	-72
	.word	4
	.word	_Label_2196
	.word	-76
	.word	4
	.word	_Label_2197
	.word	-80
	.word	4
	.word	_Label_2198
	.word	-84
	.word	4
	.word	_Label_2199
	.word	-88
	.word	4
	.word	_Label_2200
	.word	-92
	.word	4
	.word	_Label_2201
	.word	-96
	.word	4
	.word	_Label_2202
	.word	-100
	.word	4
	.word	_Label_2203
	.word	-104
	.word	4
	.word	_Label_2204
	.word	-108
	.word	4
	.word	_Label_2205
	.word	-112
	.word	4
	.word	_Label_2206
	.word	-116
	.word	4
	.word	_Label_2207
	.word	-120
	.word	4
	.word	_Label_2208
	.word	-124
	.word	4
	.word	_Label_2209
	.word	-128
	.word	4
	.word	_Label_2210
	.word	-132
	.word	4
	.word	_Label_2211
	.word	-136
	.word	4
	.word	_Label_2212
	.word	-140
	.word	4
	.word	_Label_2213
	.word	-144
	.word	4
	.word	_Label_2214
	.word	-148
	.word	4
	.word	_Label_2215
	.word	-152
	.word	4
	.word	_Label_2216
	.word	-156
	.word	4
	.word	_Label_2217
	.word	-160
	.word	4
	.word	0
_Label_2177:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2178:
	.ascii	"Pself\0"
	.align
_Label_2179:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2211:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2212:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2213:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2214:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2215:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2216:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2217:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_2838:
	push	r0
	sub	r1,1,r1
	bne	_Label_2838
	mov	2209,r13		! source line 2209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0IF",r10
!   _temp_2220 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2220 then goto _Label_2219		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2219
!	jmp	_Label_2218
_Label_2218:
! THEN...
	mov	2212,r13		! source line 2212
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2219:
! SEND STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0SE",r10
!   _temp_2221 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0SE",r10
!   _temp_2222 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2223 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2223  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2224 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2227 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2226 = *_temp_2227  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2225 = _temp_2226 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2224 = _temp_2225  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2231 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2230 = *_temp_2231  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2230 > 0 then goto _Label_2229		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2229
!	jmp	_Label_2228
_Label_2228:
! THEN...
	mov	2219,r13		! source line 2219
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0SE",r10
!   _temp_2232 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0SE",r10
!   _temp_2233 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2234 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2233  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2235 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2238 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2237 = *_temp_2238  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2236 = _temp_2237 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2235 = _temp_2236  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2242 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2241 = *_temp_2242  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2241 > 0 then goto _Label_2240		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2240
!	jmp	_Label_2239
_Label_2239:
! THEN...
	mov	2223,r13		! source line 2223
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0SE",r10
!   _temp_2243 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	2224,r13		! source line 2224
	mov	"\0\0SE",r10
!   _temp_2244 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2245 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2244  sizeInBytes=4
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
! END IF...
_Label_2240:
! END IF...
_Label_2229:
! SEND STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0SE",r10
!   _temp_2246 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2227,r13		! source line 2227
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2247
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2248
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2249
	.word	12
	.word	4
	.word	_Label_2250
	.word	-12
	.word	4
	.word	_Label_2251
	.word	-16
	.word	4
	.word	_Label_2252
	.word	-20
	.word	4
	.word	_Label_2253
	.word	-24
	.word	4
	.word	_Label_2254
	.word	-28
	.word	4
	.word	_Label_2255
	.word	-32
	.word	4
	.word	_Label_2256
	.word	-36
	.word	4
	.word	_Label_2257
	.word	-40
	.word	4
	.word	_Label_2258
	.word	-44
	.word	4
	.word	_Label_2259
	.word	-48
	.word	4
	.word	_Label_2260
	.word	-52
	.word	4
	.word	_Label_2261
	.word	-56
	.word	4
	.word	_Label_2262
	.word	-60
	.word	4
	.word	_Label_2263
	.word	-64
	.word	4
	.word	_Label_2264
	.word	-68
	.word	4
	.word	_Label_2265
	.word	-72
	.word	4
	.word	_Label_2266
	.word	-76
	.word	4
	.word	_Label_2267
	.word	-80
	.word	4
	.word	_Label_2268
	.word	-84
	.word	4
	.word	_Label_2269
	.word	-88
	.word	4
	.word	_Label_2270
	.word	-92
	.word	4
	.word	_Label_2271
	.word	-96
	.word	4
	.word	_Label_2272
	.word	-100
	.word	4
	.word	_Label_2273
	.word	-104
	.word	4
	.word	0
_Label_2247:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2248:
	.ascii	"Pself\0"
	.align
_Label_2249:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2273:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_2839:
	push	r0
	sub	r1,1,r1
	bne	_Label_2839
	mov	2232,r13		! source line 2232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2277 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2276 = *_temp_2277  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2276) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2278 = _temp_2276 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2278 ) then goto _Label_2275		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2275
!	jmp	_Label_2274
_Label_2274:
! THEN...
	mov	2238,r13		! source line 2238
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2283 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2282 = *_temp_2283  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2282) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2284 = _temp_2282 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2281 = *_temp_2284  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2281 >= 0 then goto _Label_2280		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2280
!	jmp	_Label_2279
_Label_2279:
! THEN...
	mov	2239,r13		! source line 2239
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2285 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2285  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2239,r13		! source line 2239
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2280:
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2287 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2286 = *_temp_2287  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2286) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2288 = _temp_2286 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2288 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2292 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2291 = *_temp_2292  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2291) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2293 = _temp_2291 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2290 = *_temp_2293  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2296 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2295 = *_temp_2296  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2295) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2297 = _temp_2295 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2294 = *_temp_2297  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2289 = _temp_2290 + _temp_2294		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2300 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2299 = *_temp_2300  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2299) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2301 = _temp_2299 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2298 = *_temp_2301  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2302 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2289  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2298  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2275:
! RETURN STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2303
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2305
	.word	12
	.word	4
	.word	_Label_2306
	.word	-12
	.word	4
	.word	_Label_2307
	.word	-16
	.word	4
	.word	_Label_2308
	.word	-20
	.word	4
	.word	_Label_2309
	.word	-24
	.word	4
	.word	_Label_2310
	.word	-28
	.word	4
	.word	_Label_2311
	.word	-32
	.word	4
	.word	_Label_2312
	.word	-36
	.word	4
	.word	_Label_2313
	.word	-40
	.word	4
	.word	_Label_2314
	.word	-44
	.word	4
	.word	_Label_2315
	.word	-48
	.word	4
	.word	_Label_2316
	.word	-52
	.word	4
	.word	_Label_2317
	.word	-56
	.word	4
	.word	_Label_2318
	.word	-60
	.word	4
	.word	_Label_2319
	.word	-64
	.word	4
	.word	_Label_2320
	.word	-68
	.word	4
	.word	_Label_2321
	.word	-72
	.word	4
	.word	_Label_2322
	.word	-76
	.word	4
	.word	_Label_2323
	.word	-80
	.word	4
	.word	_Label_2324
	.word	-84
	.word	4
	.word	_Label_2325
	.word	-88
	.word	4
	.word	_Label_2326
	.word	-92
	.word	4
	.word	_Label_2327
	.word	-96
	.word	4
	.word	_Label_2328
	.word	-100
	.word	4
	.word	_Label_2329
	.word	-104
	.word	4
	.word	_Label_2330
	.word	-108
	.word	4
	.word	0
_Label_2303:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2304:
	.ascii	"Pself\0"
	.align
_Label_2305:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_2840:
	push	r0
	sub	r1,1,r1
	bne	_Label_2840
	mov	2251,r13		! source line 2251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0SE",r10
!   _temp_2331 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2337		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2337
!   _temp_2336 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2338
_Label_2337:
!   _temp_2336 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2338:
!   if _temp_2336 then goto _Label_2335 else goto _Label_2332
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2332
	jmp	_Label_2335
_Label_2335:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2341 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2340 = *_temp_2341  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2340 == 0 then goto _Label_2342		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2342
!   _temp_2339 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2343
_Label_2342:
!   _temp_2339 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2343:
!   if _temp_2339 then goto _Label_2334 else goto _Label_2332
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2332
	jmp	_Label_2334
_Label_2334:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2346 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2345 = *_temp_2346  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2345) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2347 = _temp_2345 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2344 = *_temp_2347  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2344 >= 0 then goto _Label_2333		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2333
!	jmp	_Label_2332
_Label_2332:
! THEN...
	mov	2268,r13		! source line 2268
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2348 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2348  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2268,r13		! source line 2268
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2333:
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2349 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2349  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0WH",r10
_Label_2350:
!   if numBytes <= 0 then goto _Label_2352		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2352
!	jmp	_Label_2351
_Label_2351:
	mov	2271,r13		! source line 2271
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2356 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2355 = *_temp_2356  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2355 == sector then goto _Label_2354		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2354
!	jmp	_Label_2353
_Label_2353:
! THEN...
	mov	2286,r13		! source line 2286
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2357) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2360 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2359 = *_temp_2360  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2358 = sector + _temp_2359		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2362 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2361 = *_temp_2362  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2363 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2358  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2361  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2364 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2364 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2365 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2365 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2354:
! ASSIGNMENT STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2367 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2366 = *_temp_2367  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2366 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0AS",r10
!   _temp_2368 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2368  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2295,r13		! source line 2295
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2299,r13		! source line 2299
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2350
_Label_2352:
! SEND STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0SE",r10
!   _temp_2369 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2370
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2371
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2372
	.word	12
	.word	4
	.word	_Label_2373
	.word	16
	.word	4
	.word	_Label_2374
	.word	20
	.word	4
	.word	_Label_2375
	.word	24
	.word	4
	.word	_Label_2376
	.word	-16
	.word	4
	.word	_Label_2377
	.word	-20
	.word	4
	.word	_Label_2378
	.word	-24
	.word	4
	.word	_Label_2379
	.word	-28
	.word	4
	.word	_Label_2380
	.word	-32
	.word	4
	.word	_Label_2381
	.word	-36
	.word	4
	.word	_Label_2382
	.word	-40
	.word	4
	.word	_Label_2383
	.word	-44
	.word	4
	.word	_Label_2384
	.word	-48
	.word	4
	.word	_Label_2385
	.word	-52
	.word	4
	.word	_Label_2386
	.word	-56
	.word	4
	.word	_Label_2387
	.word	-60
	.word	4
	.word	_Label_2388
	.word	-64
	.word	4
	.word	_Label_2389
	.word	-68
	.word	4
	.word	_Label_2390
	.word	-72
	.word	4
	.word	_Label_2391
	.word	-76
	.word	4
	.word	_Label_2392
	.word	-80
	.word	4
	.word	_Label_2393
	.word	-84
	.word	4
	.word	_Label_2394
	.word	-88
	.word	4
	.word	_Label_2395
	.word	-92
	.word	4
	.word	_Label_2396
	.word	-96
	.word	4
	.word	_Label_2397
	.word	-100
	.word	4
	.word	_Label_2398
	.word	-104
	.word	4
	.word	_Label_2399
	.word	-9
	.word	1
	.word	_Label_2400
	.word	-10
	.word	1
	.word	_Label_2401
	.word	-108
	.word	4
	.word	_Label_2402
	.word	-112
	.word	4
	.word	_Label_2403
	.word	-116
	.word	4
	.word	_Label_2404
	.word	-120
	.word	4
	.word	_Label_2405
	.word	-124
	.word	4
	.word	_Label_2406
	.word	-128
	.word	4
	.word	0
_Label_2370:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2371:
	.ascii	"Pself\0"
	.align
_Label_2372:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2373:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2374:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2375:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2399:
	.byte	'C'
	.ascii	"_temp_2339\0"
	.align
_Label_2400:
	.byte	'C'
	.ascii	"_temp_2336\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2402:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2403:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2404:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2405:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2406:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_2841:
	push	r0
	sub	r1,1,r1
	bne	_Label_2841
	mov	2315,r13		! source line 2315
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0SE",r10
!   _temp_2407 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2413		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2413
!   _temp_2412 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2414
_Label_2413:
!   _temp_2412 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2414:
!   if _temp_2412 then goto _Label_2411 else goto _Label_2408
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2408
	jmp	_Label_2411
_Label_2411:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2417 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2416 = *_temp_2417  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2416 == 0 then goto _Label_2418		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2418
!   _temp_2415 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2419
_Label_2418:
!   _temp_2415 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2419:
!   if _temp_2415 then goto _Label_2410 else goto _Label_2408
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2408
	jmp	_Label_2410
_Label_2410:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2422 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2421 = *_temp_2422  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2421) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2423 = _temp_2421 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2420 = *_temp_2423  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2420 >= 0 then goto _Label_2409		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2409
!	jmp	_Label_2408
_Label_2408:
! THEN...
	mov	2333,r13		! source line 2333
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2424 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2424  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2333,r13		! source line 2333
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2409:
! ASSIGNMENT STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2425 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2425  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0WH",r10
_Label_2426:
!   if numBytes <= 0 then goto _Label_2428		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2428
!	jmp	_Label_2427
_Label_2427:
	mov	2336,r13		! source line 2336
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2432 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2431 = *_temp_2432  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2431 == sector then goto _Label_2430		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2430
!	jmp	_Label_2429
_Label_2429:
! THEN...
	mov	2352,r13		! source line 2352
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2433) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2430:
! ASSIGNMENT STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2435 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2434 = *_temp_2435  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2434 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0AS",r10
!   _temp_2436 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2436  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2355,r13		! source line 2355
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2356,r13		! source line 2356
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2440 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2439 = *_temp_2440  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2439 != sector then goto _Label_2438		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2438
!	jmp	_Label_2437
_Label_2437:
	jmp	_Label_2441
_Label_2438:
! ELSE...
	mov	2358,r13		! source line 2358
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2444
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2444
	jmp	_Label_2443
_Label_2444:
!   if bytesToMove != 8192 then goto _Label_2443		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2443
!	jmp	_Label_2442
_Label_2442:
	jmp	_Label_2445
_Label_2443:
! ELSE...
	mov	2362,r13		! source line 2362
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2448 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2447 = *_temp_2448  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2446 = sector + _temp_2447		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2450 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2449 = *_temp_2450  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2451 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2446  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2449  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2445:
! END IF...
_Label_2441:
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2452 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2452 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2453 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2453 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2371,r13		! source line 2371
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2426
_Label_2428:
! SEND STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0SE",r10
!   _temp_2454 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2455
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2456
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2457
	.word	12
	.word	4
	.word	_Label_2458
	.word	16
	.word	4
	.word	_Label_2459
	.word	20
	.word	4
	.word	_Label_2460
	.word	24
	.word	4
	.word	_Label_2461
	.word	-16
	.word	4
	.word	_Label_2462
	.word	-20
	.word	4
	.word	_Label_2463
	.word	-24
	.word	4
	.word	_Label_2464
	.word	-28
	.word	4
	.word	_Label_2465
	.word	-32
	.word	4
	.word	_Label_2466
	.word	-36
	.word	4
	.word	_Label_2467
	.word	-40
	.word	4
	.word	_Label_2468
	.word	-44
	.word	4
	.word	_Label_2469
	.word	-48
	.word	4
	.word	_Label_2470
	.word	-52
	.word	4
	.word	_Label_2471
	.word	-56
	.word	4
	.word	_Label_2472
	.word	-60
	.word	4
	.word	_Label_2473
	.word	-64
	.word	4
	.word	_Label_2474
	.word	-68
	.word	4
	.word	_Label_2475
	.word	-72
	.word	4
	.word	_Label_2476
	.word	-76
	.word	4
	.word	_Label_2477
	.word	-80
	.word	4
	.word	_Label_2478
	.word	-84
	.word	4
	.word	_Label_2479
	.word	-88
	.word	4
	.word	_Label_2480
	.word	-92
	.word	4
	.word	_Label_2481
	.word	-96
	.word	4
	.word	_Label_2482
	.word	-100
	.word	4
	.word	_Label_2483
	.word	-104
	.word	4
	.word	_Label_2484
	.word	-108
	.word	4
	.word	_Label_2485
	.word	-112
	.word	4
	.word	_Label_2486
	.word	-9
	.word	1
	.word	_Label_2487
	.word	-10
	.word	1
	.word	_Label_2488
	.word	-116
	.word	4
	.word	_Label_2489
	.word	-120
	.word	4
	.word	_Label_2490
	.word	-124
	.word	4
	.word	_Label_2491
	.word	-128
	.word	4
	.word	_Label_2492
	.word	-132
	.word	4
	.word	_Label_2493
	.word	-136
	.word	4
	.word	0
_Label_2455:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2456:
	.ascii	"Pself\0"
	.align
_Label_2457:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2458:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2459:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2460:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2486:
	.byte	'C'
	.ascii	"_temp_2415\0"
	.align
_Label_2487:
	.byte	'C'
	.ascii	"_temp_2412\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2489:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2490:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2491:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2492:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2493:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2494
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2494:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2495
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2495:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_2842:
	push	r0
	sub	r1,1,r1
	bne	_Label_2842
	mov	2419,r13		! source line 2419
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_2496 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2497
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2498
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2499
	.word	-12
	.word	4
	.word	0
_Label_2497:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2498:
	.ascii	"Pself\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_2843:
	push	r0
	sub	r1,1,r1
	bne	_Label_2843
	mov	2429,r13		! source line 2429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2500 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2500  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2430,r13		! source line 2430
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2431,r13		! source line 2431
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2501 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2501  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2432,r13		! source line 2432
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2433,r13		! source line 2433
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2502 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2502  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2434,r13		! source line 2434
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2435,r13		! source line 2435
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2503 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2503  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2436,r13		! source line 2436
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2437,r13		! source line 2437
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2504 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2504  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2438,r13		! source line 2438
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2439,r13		! source line 2439
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2505 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2440,r13		! source line 2440
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2441,r13		! source line 2441
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2442,r13		! source line 2442
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2506
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2507
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2508
	.word	-12
	.word	4
	.word	_Label_2509
	.word	-16
	.word	4
	.word	_Label_2510
	.word	-20
	.word	4
	.word	_Label_2511
	.word	-24
	.word	4
	.word	_Label_2512
	.word	-28
	.word	4
	.word	_Label_2513
	.word	-32
	.word	4
	.word	0
_Label_2506:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2507:
	.ascii	"Pself\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2514
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2514:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2515
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2515:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_2844:
	push	r0
	sub	r1,1,r1
	bne	_Label_2844
	mov	2453,r13		! source line 2453
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2516 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2516  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2454,r13		! source line 2454
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2455,r13		! source line 2455
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2517 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2517  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2456,r13		! source line 2456
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2519		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2519
!	jmp	_Label_2518
_Label_2518:
! THEN...
	mov	2458,r13		! source line 2458
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2520
_Label_2519:
! ELSE...
	mov	2460,r13		! source line 2460
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2521 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2521  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2460,r13		! source line 2460
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2520:
! RETURN STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2522
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2523
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2524
	.word	-12
	.word	4
	.word	_Label_2525
	.word	-16
	.word	4
	.word	_Label_2526
	.word	-20
	.word	4
	.word	0
_Label_2522:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2523:
	.ascii	"Pself\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_2845:
	push	r0
	sub	r1,1,r1
	bne	_Label_2845
	mov	2466,r13		! source line 2466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0SE",r10
!   _temp_2527 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2528 = _temp_2527 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2477,r13		! source line 2477
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
!   _temp_2529 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2530 = _temp_2529 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0RE",r10
	mov	2480,r13		! source line 2480
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2533 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2532  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2531  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2531  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2534
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2535
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2536
	.word	12
	.word	4
	.word	_Label_2537
	.word	16
	.word	4
	.word	_Label_2538
	.word	-16
	.word	4
	.word	_Label_2539
	.word	-20
	.word	4
	.word	_Label_2540
	.word	-9
	.word	1
	.word	_Label_2541
	.word	-24
	.word	4
	.word	_Label_2542
	.word	-28
	.word	4
	.word	_Label_2543
	.word	-32
	.word	4
	.word	_Label_2544
	.word	-36
	.word	4
	.word	_Label_2545
	.word	-40
	.word	4
	.word	0
_Label_2534:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2535:
	.ascii	"Pself\0"
	.align
_Label_2536:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2537:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2540:
	.byte	'C'
	.ascii	"_temp_2531\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2545:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_2846:
	push	r0
	sub	r1,1,r1
	bne	_Label_2846
	mov	2485,r13		! source line 2485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0IF",r10
	mov	2490,r13		! source line 2490
	mov	"\0\0SE",r10
!   _temp_2549 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2550) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2549  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2548  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2548 then goto _Label_2547 else goto _Label_2546
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2546
	jmp	_Label_2547
_Label_2546:
! THEN...
	mov	2491,r13		! source line 2491
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2551 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2551  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2491,r13		! source line 2491
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2547:
! RETURN STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2552
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2554
	.word	-16
	.word	4
	.word	_Label_2555
	.word	-20
	.word	4
	.word	_Label_2556
	.word	-24
	.word	4
	.word	_Label_2557
	.word	-9
	.word	1
	.word	_Label_2558
	.word	-28
	.word	4
	.word	0
_Label_2552:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2553:
	.ascii	"Pself\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2557:
	.byte	'C'
	.ascii	"_temp_2548\0"
	.align
_Label_2558:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_2847:
	push	r0
	sub	r1,1,r1
	bne	_Label_2847
	mov	2498,r13		! source line 2498
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2562 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2561 = *_temp_2562  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2561) then goto _Label_2560
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2560
!	jmp	_Label_2559
_Label_2559:
! THEN...
	mov	2525,r13		! source line 2525
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2563 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2563  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2525,r13		! source line 2525
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2560:
! IF STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0IF",r10
	mov	2529,r13		! source line 2529
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2567) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2566  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2566 == 1112300152 then goto _Label_2565		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2565
!	jmp	_Label_2564
_Label_2564:
! THEN...
	mov	2530,r13		! source line 2530
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2568 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2568  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2530,r13		! source line 2530
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2565:
! ASSIGNMENT STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
	mov	2535,r13		! source line 2535
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2569) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0AS",r10
	mov	2536,r13		! source line 2536
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2570) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
	mov	2537,r13		! source line 2537
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2571) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
	mov	2538,r13		! source line 2538
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2572) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2573) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0AS",r10
	mov	2540,r13		! source line 2540
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2574) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0IF",r10
!   _temp_2577 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2577) then goto _Label_2576
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2576
!	jmp	_Label_2575
_Label_2575:
! THEN...
	mov	2544,r13		! source line 2544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2578 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2578  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2544,r13		! source line 2544
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2576:
! ASSIGNMENT STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2580
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2580
!	jmp	_Label_2579
_Label_2579:
! THEN...
	mov	2552,r13		! source line 2552
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2581 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2581  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2580:
! IF STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0IF",r10
!   _temp_2584 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2584) then goto _Label_2583
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2583
!	jmp	_Label_2582
_Label_2582:
! THEN...
	mov	2558,r13		! source line 2558
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2585 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2585  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2558,r13		! source line 2558
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2583:
! IF STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0IF",r10
!   _temp_2588 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2588 then goto _Label_2587		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2587
!	jmp	_Label_2586
_Label_2586:
! THEN...
	mov	2562,r13		! source line 2562
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2589 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2589  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2562,r13		! source line 2562
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2587:
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0IF",r10
!   _temp_2592 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2592) then goto _Label_2591
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2591
!	jmp	_Label_2590
_Label_2590:
! THEN...
	mov	2569,r13		! source line 2569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2593 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2593  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2569,r13		! source line 2569
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2591:
! IF STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0IF",r10
!   _temp_2596 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2596 then goto _Label_2595		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2595
!	jmp	_Label_2594
_Label_2594:
! THEN...
	mov	2573,r13		! source line 2573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2597 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2597  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2573,r13		! source line 2573
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2595:
! ASSIGNMENT STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0AS",r10
!   _temp_2600 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2599 = _temp_2600 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2598 = _temp_2599 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2598 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2602		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2602
!	jmp	_Label_2601
_Label_2601:
! THEN...
	mov	2595,r13		! source line 2595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2603 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2603  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2595,r13		! source line 2595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2604 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2604  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2596,r13		! source line 2596
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2605 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2605  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2597,r13		! source line 2597
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2602:
! SEND STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
!   _temp_2606 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0IF",r10
	mov	2606,r13		! source line 2606
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2610) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2609  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2609 == 707406378 then goto _Label_2608		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2608
!	jmp	_Label_2607
_Label_2607:
! THEN...
	mov	2607,r13		! source line 2607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2611 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2611  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2607,r13		! source line 2607
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0SE",r10
!   _temp_2612 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2608:
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2617 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2618 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2617  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2613:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2618 then goto _Label_2616		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2616
_Label_2614:
	mov	2614,r13		! source line 2614
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0AS",r10
	mov	2615,r13		! source line 2615
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0IF",r10
	mov	2618,r13		! source line 2618
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2622) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2621  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2621 then goto _Label_2620 else goto _Label_2619
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2619
	jmp	_Label_2620
_Label_2619:
! THEN...
	mov	2619,r13		! source line 2619
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2623 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2623  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2619,r13		! source line 2619
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0SE",r10
!   _temp_2624 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2620:
! SEND STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2615:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2613
! END FOR
_Label_2616:
! IF STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0IF",r10
	mov	2628,r13		! source line 2628
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2628) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2627  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2627 == 707406378 then goto _Label_2626		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2626
!	jmp	_Label_2625
_Label_2625:
! THEN...
	mov	2629,r13		! source line 2629
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2629 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2629  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2629,r13		! source line 2629
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0SE",r10
!   _temp_2630 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2626:
! FOR STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2635 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2636 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2635  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2631:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2636 then goto _Label_2634		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2634
_Label_2632:
	mov	2635,r13		! source line 2635
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
	mov	2636,r13		! source line 2636
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0IF",r10
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2640) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2639  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2639 then goto _Label_2638 else goto _Label_2637
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2637
	jmp	_Label_2638
_Label_2637:
! THEN...
	mov	2640,r13		! source line 2640
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2641 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2641  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2640,r13		! source line 2640
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0SE",r10
!   _temp_2642 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2638:
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2633:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2631
! END FOR
_Label_2634:
! IF STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0IF",r10
	mov	2648,r13		! source line 2648
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2646) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2645  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2645 == 707406378 then goto _Label_2644		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2644
!	jmp	_Label_2643
_Label_2643:
! THEN...
	mov	2649,r13		! source line 2649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2647 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2647  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0SE",r10
!   _temp_2648 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2644:
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
	mov	2655,r13		! source line 2655
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2659,r13		! source line 2659
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2649
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2650
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2651
	.word	12
	.word	4
	.word	_Label_2652
	.word	-16
	.word	4
	.word	_Label_2653
	.word	-20
	.word	4
	.word	_Label_2654
	.word	-24
	.word	4
	.word	_Label_2655
	.word	-28
	.word	4
	.word	_Label_2656
	.word	-32
	.word	4
	.word	_Label_2657
	.word	-36
	.word	4
	.word	_Label_2658
	.word	-40
	.word	4
	.word	_Label_2659
	.word	-9
	.word	1
	.word	_Label_2660
	.word	-44
	.word	4
	.word	_Label_2661
	.word	-48
	.word	4
	.word	_Label_2662
	.word	-52
	.word	4
	.word	_Label_2663
	.word	-56
	.word	4
	.word	_Label_2664
	.word	-60
	.word	4
	.word	_Label_2665
	.word	-64
	.word	4
	.word	_Label_2666
	.word	-68
	.word	4
	.word	_Label_2667
	.word	-72
	.word	4
	.word	_Label_2668
	.word	-76
	.word	4
	.word	_Label_2669
	.word	-10
	.word	1
	.word	_Label_2670
	.word	-80
	.word	4
	.word	_Label_2671
	.word	-84
	.word	4
	.word	_Label_2672
	.word	-88
	.word	4
	.word	_Label_2673
	.word	-92
	.word	4
	.word	_Label_2674
	.word	-96
	.word	4
	.word	_Label_2675
	.word	-100
	.word	4
	.word	_Label_2676
	.word	-104
	.word	4
	.word	_Label_2677
	.word	-108
	.word	4
	.word	_Label_2678
	.word	-112
	.word	4
	.word	_Label_2679
	.word	-116
	.word	4
	.word	_Label_2680
	.word	-120
	.word	4
	.word	_Label_2681
	.word	-124
	.word	4
	.word	_Label_2682
	.word	-128
	.word	4
	.word	_Label_2683
	.word	-132
	.word	4
	.word	_Label_2684
	.word	-136
	.word	4
	.word	_Label_2685
	.word	-140
	.word	4
	.word	_Label_2686
	.word	-144
	.word	4
	.word	_Label_2687
	.word	-148
	.word	4
	.word	_Label_2688
	.word	-152
	.word	4
	.word	_Label_2689
	.word	-156
	.word	4
	.word	_Label_2690
	.word	-160
	.word	4
	.word	_Label_2691
	.word	-164
	.word	4
	.word	_Label_2692
	.word	-168
	.word	4
	.word	_Label_2693
	.word	-172
	.word	4
	.word	_Label_2694
	.word	-176
	.word	4
	.word	_Label_2695
	.word	-180
	.word	4
	.word	_Label_2696
	.word	-184
	.word	4
	.word	_Label_2697
	.word	-188
	.word	4
	.word	_Label_2698
	.word	-192
	.word	4
	.word	_Label_2699
	.word	-196
	.word	4
	.word	_Label_2700
	.word	-200
	.word	4
	.word	_Label_2701
	.word	-204
	.word	4
	.word	_Label_2702
	.word	-208
	.word	4
	.word	_Label_2703
	.word	-212
	.word	4
	.word	_Label_2704
	.word	-216
	.word	4
	.word	_Label_2705
	.word	-220
	.word	4
	.word	_Label_2706
	.word	-224
	.word	4
	.word	_Label_2707
	.word	-228
	.word	4
	.word	_Label_2708
	.word	-232
	.word	4
	.word	_Label_2709
	.word	-236
	.word	4
	.word	_Label_2710
	.word	-240
	.word	4
	.word	_Label_2711
	.word	-244
	.word	4
	.word	_Label_2712
	.word	-248
	.word	4
	.word	_Label_2713
	.word	-252
	.word	4
	.word	_Label_2714
	.word	-256
	.word	4
	.word	_Label_2715
	.word	-260
	.word	4
	.word	_Label_2716
	.word	-264
	.word	4
	.word	_Label_2717
	.word	-268
	.word	4
	.word	0
_Label_2649:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2650:
	.ascii	"Pself\0"
	.align
_Label_2651:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2659:
	.byte	'C'
	.ascii	"_temp_2639\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2669:
	.byte	'C'
	.ascii	"_temp_2621\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2706:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2707:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2708:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2709:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2710:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2711:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2712:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2713:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2714:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2715:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2716:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2717:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
