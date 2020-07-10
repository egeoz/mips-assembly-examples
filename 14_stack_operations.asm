.data
	newLine: .asciiz "\n"
	num1: .word 10
.text
	main:
		lw $s0,num1
		li $v0,1
		move $a0,$s0
		syscall
		
		li $v0,4
		la $a0,newLine
		syscall
		
		jal increaseRegVal
	
	li $v0,10
	syscall
	
	increaseRegVal:
		addi $sp, $sp,-4	# allocate 4 bytes in the stack
		sw $s0, 0($sp)
		
		sll $s0,$s0,3       # $s0=$s0+2^3
		addi $s0,$s0,45
		
		li $v0,1
		move $a0,$s0
		syscall
		
		lw $s0,0($sp)	# load s0 bac from stack
		addi $sp,$sp,4	# restore the 4 bytes to stack
		
		jr $ra
