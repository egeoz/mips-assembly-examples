.data
	i: .word 0
	newLine: .asciiz "\n"
.text
	main:
		lw $t0,i
		la $t1,newLine
		j while
	
	while:
		jal print
		
		bgt $t0,9,exit		# exit loop if $t0>10
		addi $t0,$t0,1		# $t0=$t0+1
			
		j while			# jump back to while
		
	print:
		li $v0,1		# print $t0
		move $a0,$t0
		syscall
		
		li $v0,4		# print new line
		move $a0,$t1
		syscall	
		
		jr $ra
	exit:
		li $v0,10
		syscall	

