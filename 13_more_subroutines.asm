.data
	msg1: .asciiz "Welcome\n"
	msg2: .asciiz "\nHello world!\n"
	msg3: .asciiz "\nGoodbye\n"
.text
	main:
		la $a3,msg1
		jal print
		
		addi $a1,$zero,10
		
		la $a3,msg2
		jal print
		
		addi $a2,$zero,25
		
		jal addNumbers
		jal printResult
		
		la $a3,msg3
		jal print
		
	li $v0,10
	syscall
	
	addNumbers:	# add $a1 + $a2 to $v1 and jump back where we left
		add $v1,$a1,$a2 
		jr $ra
		
	printResult:	# move $v1 to $a0 and print it then jump back
		li $v0,1
		move $a0,$v1
		syscall
		jr $ra
	
	print:		# General print function
		li $v0,4
		move $a0,$a3
		syscall
		jr $ra
