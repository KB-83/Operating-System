! Name of package being compiled: Diamond
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
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x513e0b29,r3		! .  hashVal = 1363020585
	call	_CheckVersion_P_Diamond_	! .
	cmp	r1,0			! .
	be	_Label_1		! .
	ret				! .
_Label_1:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Diamond.c\0"
_packageName:
	.ascii	"Diamond\0"
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
_CheckVersion_P_Diamond_:
	.export	_CheckVersion_P_Diamond_
	set	0x513e0b29,r4		! myHashVal = 1363020585
	cmp	r3,r4
	be	_Label_2
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
_Label_2:
	mov	0,r1
! Make sure _P_System_ has hash value 0x2824df02 (decimal 673505026)
	set	_packageName,r2
	set	0x2824df02,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_3
_Label_3:
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
	mov	19,r1
_Label_57:
	push	r0
	sub	r1,1,r1
	bne	_Label_57
	mov	2,r13		! source line 2
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! n
!   Call the function
	mov	3,r13		! source line 3
	mov	"\0\0CA",r10
	call	_P_System_InputInt
!   Retrieve Result: targetName=n  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! startSpaces
!   _temp_4 = n - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   startSpaces = _temp_4 div 2		(int)
	load	[r14+-56],r1
	mov	2,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	9,r13		! source line 9
	mov	"\0\0AS",r10
!   start = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	10,r13		! source line 10
	mov	"\0\0AS",r10
!   end = startSpaces		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
! FOR STATEMENT...
	mov	12,r13		! source line 12
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_9 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_12 = n + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   _temp_11 = _temp_12 div 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   _temp_10 = _temp_11 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_9  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-76]
_Label_5:
!   Perform the FOR-LOOP termination test
!   if i > _temp_10 then goto _Label_8		
	load	[r14+-76],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_8
_Label_6:
	mov	12,r13		! source line 12
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	13,r13		! source line 13
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_17 = start		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_18 = end		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_17  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-80]
_Label_13:
!   Perform the FOR-LOOP termination test
!   if j > _temp_18 then goto _Label_16		
	load	[r14+-80],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_16
_Label_14:
	mov	13,r13		! source line 13
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	14,r13		! source line 14
	mov	"\0\0IF",r10
!   if j >= startSpaces then goto _Label_20		(int)
	load	[r14+-80],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_20
!	jmp	_Label_19
_Label_19:
! THEN...
	mov	15,r13		! source line 15
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	printChar
	jmp	_Label_21
_Label_20:
! ELSE...
	mov	17,r13		! source line 17
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=42  sizeInBytes=1
	mov	42,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	17,r13		! source line 17
	mov	"\0\0CE",r10
	call	printChar
! END IF...
_Label_21:
!   Increment the FOR-LOOP index variable and jump back
_Label_15:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_13
! END FOR
_Label_16:
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   start = start + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   end = end + 2		(int)
	load	[r14+-72],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! CALL STATEMENT...
!   Call the function
	mov	22,r13		! source line 22
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_7:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_5
! END FOR
_Label_8:
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   start = start - 2		(int)
	load	[r14+-68],r1
	mov	2,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   end = end - 4		(int)
	load	[r14+-72],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! FOR STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_26 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_28 = n - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   _temp_27 = _temp_28 div 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_26  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-76]
_Label_22:
!   Perform the FOR-LOOP termination test
!   if i > _temp_27 then goto _Label_25		
	load	[r14+-76],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_25
_Label_23:
	mov	28,r13		! source line 28
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_33 = start		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-16]
!   Calculate and save the FOR-LOOP ending value
!   _temp_34 = end		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-12]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_33  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+-80]
_Label_29:
!   Perform the FOR-LOOP termination test
!   if j > _temp_34 then goto _Label_32		
	load	[r14+-80],r1
	load	[r14+-12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_32
_Label_30:
	mov	29,r13		! source line 29
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0IF",r10
!   if j >= startSpaces then goto _Label_36		(int)
	load	[r14+-80],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_36
!	jmp	_Label_35
_Label_35:
! THEN...
	mov	31,r13		! source line 31
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	31,r13		! source line 31
	mov	"\0\0CE",r10
	call	printChar
	jmp	_Label_37
_Label_36:
! ELSE...
	mov	33,r13		! source line 33
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=42  sizeInBytes=1
	mov	42,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	33,r13		! source line 33
	mov	"\0\0CE",r10
	call	printChar
! END IF...
_Label_37:
!   Increment the FOR-LOOP index variable and jump back
_Label_31:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_29
! END FOR
_Label_32:
! ASSIGNMENT STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
!   start = start - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0AS",r10
!   end = end - 2		(int)
	load	[r14+-72],r1
	mov	2,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! CALL STATEMENT...
!   Call the function
	mov	38,r13		! source line 38
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_24:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_22
! END FOR
_Label_25:
! RETURN STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_38
	.word	0		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_39
	.word	-12
	.word	4
	.word	_Label_40
	.word	-16
	.word	4
	.word	_Label_41
	.word	-20
	.word	4
	.word	_Label_42
	.word	-24
	.word	4
	.word	_Label_43
	.word	-28
	.word	4
	.word	_Label_44
	.word	-32
	.word	4
	.word	_Label_45
	.word	-36
	.word	4
	.word	_Label_46
	.word	-40
	.word	4
	.word	_Label_47
	.word	-44
	.word	4
	.word	_Label_48
	.word	-48
	.word	4
	.word	_Label_49
	.word	-52
	.word	4
	.word	_Label_50
	.word	-56
	.word	4
	.word	_Label_51
	.word	-60
	.word	4
	.word	_Label_52
	.word	-64
	.word	4
	.word	_Label_53
	.word	-68
	.word	4
	.word	_Label_54
	.word	-72
	.word	4
	.word	_Label_55
	.word	-76
	.word	4
	.word	_Label_56
	.word	-80
	.word	4
	.word	0
_Label_38:
	.ascii	"main\0"
	.align
_Label_39:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_40:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_41:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_42:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_43:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_44:
	.byte	'?'
	.ascii	"_temp_18\0"
	.align
_Label_45:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_12\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_11\0"
	.align
_Label_48:
	.byte	'?'
	.ascii	"_temp_10\0"
	.align
_Label_49:
	.byte	'?'
	.ascii	"_temp_9\0"
	.align
_Label_50:
	.byte	'?'
	.ascii	"_temp_4\0"
	.align
_Label_51:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_52:
	.byte	'I'
	.ascii	"startSpaces\0"
	.align
_Label_53:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_54:
	.byte	'I'
	.ascii	"end\0"
	.align
_Label_55:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_56:
	.byte	'I'
	.ascii	"j\0"
	.align
