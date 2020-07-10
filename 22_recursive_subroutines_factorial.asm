.data
	strPrompt: .asciiz "Enter a number to find a factorial of: "
	strResult: .asciiz "\nThe factorial is "
	
	num: .word 0
	result: .word 0
.text
	main:
		la $a0,strPrompt
		jal printP
		jal input
		
		jal factorial
		
		jal printResult
	
		j exit
	
	printP:
		li $v0,4
		syscall
		
		jr $ra
		
	printResult:
		li $v0,4
		la $a0,strResult
		syscall
		
		li $v0,1
		move $a0,$s0
		syscall
		
		jr $ra
		
	input:
		li $v0,5
		syscall
		
		sw $v0,num
		
		jr $ra
		
	factorial:
		lw $a1,num
		sw $v1,result
		
		
	
	
	exit:
		li $v0,10
		syscall