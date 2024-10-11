! Name of package being compiled: Triangle
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
	.import	printDouble
	.import	_P_System_nl
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	getChar
	.import	_P_System_KPLMemoryInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_System_InputInt
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
	.align
! String constants
_StringConst_4:
	.word	2			! length
	.ascii	"No"
	.align
_StringConst_3:
	.word	2			! length
	.ascii	"No"
	.align
_StringConst_2:
	.word	2			! length
	.ascii	"No"
	.align
_StringConst_1:
	.word	3			! length
	.ascii	"Yes"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x45daf590,r3		! .  hashVal = 1171977616
	call	_CheckVersion_P_Triangle_	! .
	cmp	r1,0			! .
	be	_Label_5		! .
	ret				! .
_Label_5:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Triangle.c\0"
_packageName:
	.ascii	"Triangle\0"
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
_CheckVersion_P_Triangle_:
	.export	_CheckVersion_P_Triangle_
	set	0x45daf590,r4		! myHashVal = 1171977616
	cmp	r3,r4
	be	_Label_6
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
_Label_6:
	mov	0,r1
! Make sure _P_System_ has hash value 0x2824df02 (decimal 673505026)
	set	_packageName,r2
	set	0x2824df02,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_7
_Label_7:
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
	mov	11,r1
_Label_35:
	push	r0
	sub	r1,1,r1
	bne	_Label_35
	mov	2,r13		! source line 2
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! a
!   Call the function
	mov	3,r13		! source line 3
	mov	"\0\0CA",r10
	call	_P_System_InputInt
!   Retrieve Result: targetName=a  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! b
!   Call the function
	mov	4,r13		! source line 4
	mov	"\0\0CA",r10
	call	_P_System_InputInt
!   Retrieve Result: targetName=b  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! c
!   Call the function
	mov	5,r13		! source line 5
	mov	"\0\0CA",r10
	call	_P_System_InputInt
!   Retrieve Result: targetName=c  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	7,r13		! source line 7
	mov	"\0\0IF",r10
!   _temp_10 = a + b		(int)
	load	[r14+-40],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if _temp_10 <= c then goto _Label_9		(int)
	load	[r14+-36],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_9
!	jmp	_Label_8
_Label_8:
! THEN...
	mov	8,r13		! source line 8
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	8,r13		! source line 8
	mov	"\0\0IF",r10
!   _temp_13 = a + c		(int)
	load	[r14+-40],r1
	load	[r14+-48],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if _temp_13 <= b then goto _Label_12		(int)
	load	[r14+-32],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_12
!	jmp	_Label_11
_Label_11:
! THEN...
	mov	9,r13		! source line 9
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	9,r13		! source line 9
	mov	"\0\0IF",r10
!   _temp_16 = b + c		(int)
	load	[r14+-44],r1
	load	[r14+-48],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if _temp_16 <= a then goto _Label_15		(int)
	load	[r14+-28],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_15
!	jmp	_Label_14
_Label_14:
! THEN...
	mov	10,r13		! source line 10
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_17 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_17  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	10,r13		! source line 10
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_18
_Label_15:
! ELSE...
	mov	12,r13		! source line 12
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_19 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_19  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	12,r13		! source line 12
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_18:
	jmp	_Label_20
_Label_12:
! ELSE...
	mov	15,r13		! source line 15
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_21 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_21  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_20:
	jmp	_Label_22
_Label_9:
! ELSE...
	mov	18,r13		! source line 18
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_23 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_23  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	18,r13		! source line 18
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_22:
! RETURN STATEMENT...
	mov	7,r13		! source line 7
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_24
	.word	0		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_25
	.word	-12
	.word	4
	.word	_Label_26
	.word	-16
	.word	4
	.word	_Label_27
	.word	-20
	.word	4
	.word	_Label_28
	.word	-24
	.word	4
	.word	_Label_29
	.word	-28
	.word	4
	.word	_Label_30
	.word	-32
	.word	4
	.word	_Label_31
	.word	-36
	.word	4
	.word	_Label_32
	.word	-40
	.word	4
	.word	_Label_33
	.word	-44
	.word	4
	.word	_Label_34
	.word	-48
	.word	4
	.word	0
_Label_24:
	.ascii	"main\0"
	.align
_Label_25:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_26:
	.byte	'?'
	.ascii	"_temp_21\0"
	.align
_Label_27:
	.byte	'?'
	.ascii	"_temp_19\0"
	.align
_Label_28:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
_Label_29:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_30:
	.byte	'?'
	.ascii	"_temp_13\0"
	.align
_Label_31:
	.byte	'?'
	.ascii	"_temp_10\0"
	.align
_Label_32:
	.byte	'I'
	.ascii	"a\0"
	.align
_Label_33:
	.byte	'I'
	.ascii	"b\0"
	.align
_Label_34:
	.byte	'I'
	.ascii	"c\0"
	.align
