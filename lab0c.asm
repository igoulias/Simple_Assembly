# This is a test lab to become familiar to the MARS simulator

.data
Str_msg1: .asciiz "\nIf you dont want to set the numbers insert 0: "
Str_msg2: .asciiz "\nInsert number: "
Str_msg3: .asciiz "\nMax = "
Str_msg4: .asciiz "\nMin = "
.align 2
array: 
	.word 400, 41, 550, 27, -501, 1, 90,  #pinakas 7 akereon

.text
.globl main	# label "main" must be global

main:
	li $s0, 7	# to megethos tou pinaka
	li $t0, 0	# counter gia tin prospelasi tou pinaka
	la $a0, Str_msg1
	li $v0, 4
	syscall 
	
	li $v0, 5
	syscall
	la $s1, array	# i arxi tou pinaka
	bnez $v0, loop2	# to mikos L tou pinaka
	li $t0, 0	# counter gia tin prospelasi tou pinaka
loop1:
	li $v0, 4
	la $a0, Str_msg2
	syscall
	li $v0, 5
	syscall
	
	sll $t1, $t0, 2
	sw $v0, array($t1)
	addi $t0, $t0, 1
	blt $t0, $s0, loop1
	
	li $t0, 0	# counter gia tin prospelasi tou pinaka
	li $s2, 0x8FFFFFFF
loop2:
	
	
	#exit program
	li $v0,10
	syscall