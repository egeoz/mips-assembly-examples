.data
	str: .asciiz "Hello World\n"
	num: .word 30
.text

	main:
		la $s0,str
		jal printStr
	li $v0,10
	syscall
	
	printStr:
		li $v0,4
		move $a0,$s0
		syscall
		
		lw $s0,num
		
		addi $sp,$sp,-4  # allocate 4 bytes in the stack
		sw $ra,0($sp)    # store the value of $ra in the first part of stack
		
		jal printNum     # jump to printNum
		
		lw $ra,0($sp)	 # load back the original $ra
		addi $sp,$sp,4	 # restore the original stack
		
		jr $ra
		
	printNum:
		li $v0,1
		move $a0,$s0
		syscall
		
		jr $ra
