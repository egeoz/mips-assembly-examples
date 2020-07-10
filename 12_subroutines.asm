.data
	msg: .asciiz "string"
.text
	main:
		jal print 

	
	
	li $v0,10
	syscall
		
	print:
		li $v0,4
		la $a0,msg
		syscall
		jr $ra	
	
