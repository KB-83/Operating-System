! Basic Character I/O: Echo characters
!
! Harry Porter, 11/18/02
!
! This program copies characters from the serial input to the serial
! output.  It does not bufffer them at all.  When a 'q' is entered, it
! suspends execution via the 'debug' instruction.
!
! Here is the algorithm:
!    while (1) {
!      wait for an input character;
!      send the character to the output;
!      if (the char was 'q') {
!        debug;
!      }
!    }
!
! This program does not use interrupts; it uses busy-waiting for getting
! characters from the input and waiting for the output to be ready.
!
! This program is useful as a test of the BLITZ serial I/O interface.
! When running in "cooked" mode, you should see every line echoed twice, once
! by the host OS and once by this program.
!
! When running in "raw" mode, you should see each character echoed after it is
! typed.  Note that characters like \n and \r are echoed exactly.  Try typing
! control-J (for \n) and control-M (for \r).  All other non-printing characters
! (like tab and esc) are echoed as '?'.  Try hitting Control-C to suspend
! execution.
!
        .text
_entry:



!
! Here is the interrupt vector, which will be loaded at address 0x00000000.
! Each entry is 4 bytes.  They are located at fixed, pre-defined addresses.
! This program will ignore all interrupts.  The asynchronous, hardware
! interrupts (i.e., TIMER, DISK, and SERIAL) will be ignored by returning
! immediately.  None of the other interrupts should occur; if they do, this
! program will get stuck in an infinite loop. 
!
PowerOnReset:
        jmp     main
TimerInterrupt:
        reti
DiskInterrupt:
        reti
SerialInterrupt:
        reti
HardwareFault:
        jmp     HardwareFault
IllegalInstruction:
        jmp     IllegalInstruction
ArithmeticException:
        jmp     ArithmeticException
AddressException:
        jmp     AddressException
PageInvalidException:
        jmp     PageInvalidException
PageReadonlyException:
        jmp     PageReadonlyException
PrivilegedInstruction:
        jmp     PrivilegedInstruction
AlignmentException:
        jmp     AlignmentException
ExceptionDuringInterrupt:
        jmp     ExceptionDuringInterrupt
SyscallTrap:
        jmp     SyscallTrap


!
! main - Repeat the following in an infinite loop:  Wait (in a busy loop)
!        until an input character is available.  Read it in.  Then wait
!        (in a busy loop) until the output is ready and write the character
!        to the output.
!
! r2 = character
! r3 = ptr to SERIAL_STAT word in the memory-mapped area.
! r4 = ptr to SERIAL_DATA word in the memory-mapped area.
! r5 = serial status word
!
main:
		set	STACK_START,r15	! Initialize the stack reg
		set	SERIAL_STAT,r3	! Initialize ptr to SERIAL_STAT word
		set	SERIAL_DATA,r4	! Initialize ptr to SERIAL_DATA word
        
loop:					! LOOP:
wait1:					!   WAIT1:
		load	[r3],r5		!     r5 := serial status word
		btst	0x00000001,r5   !     if status[charAvail] == 0 then
		be	wait1		!     .    goto WAIT1
		load    [r4],r2		!   Get the character
                cmp	r2,'\n'		!   if char == \n
		be	wait2		!   .
        mul r10,10,r10     ! r10 = r10 * 10
        sub r2,'0',r2
        add r10,r2,r10     ! Accumulate the number

        add r7,1,r7
        add r11,1,r11
        
        jmp wait1
wait2:					!   WAIT2:
                cmp r10,0        ! If the number is 0
                ble out  
                div r10 , 2 , r6
                mul r6,2,r6
                sub r10,r6,r6                
                
                sll r11,1,r11
                add r11,r6,r11
                div r10,2, r10
                jmp wait2

out:		
        srl r11,1,r8
        sll r8,1,r8
        sub r11,r8,r8
        add r8,'0',r8
        load	[r3],r5		!     r5 := serial status word
		btst	0x00000002,r5   !     if status[outputReady] == 0 then
		be	wait2	
		store	r8,[r4]	

        srl r11,1,r11
        cmp r7,r11
        bne out
        debug		!   endIf

STACK_START	=	0x00ffff00
SERIAL_STAT	=	0x00ffff00
SERIAL_DATA	=	0x00ffff04
