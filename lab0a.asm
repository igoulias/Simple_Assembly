# This is a test lab to become familiar to the MARS simulator

.text
.globl main	# label "main" must be global

main:
	li $a0, 0		#Reset register $t0 (Counter)
	addi $t1, $0, 10	#Put value 10 in register $t1
				#(Number Of Loops)
	li $v0, 1
loop:
	addi $a0, $a1, 1	# $a0= $a1 + 1
	syscall 
	bne $a0, $t1, loop
	
	#exit program
	li $v0, 10
	syscall 