.data
	num1: .float 6.44
	num2: .float 3.14
	newLine: .asciiz "\n"
.text
	main:
		lwc1 $f1,num1
		lwc1 $f2,num2
		
		add.s $f11,$f1,$f2	# add 
		sub.s $f10,$f1,$f2	# subtract
		mul.s $f9,$f1,$f2	# multiply
		
		mov.s $f5,$f11
		jal print
		mov.s $f5,$f10
		jal print
		mov.s $f5,$f9
		jal print
		
	li $v0,10
	syscall
	
	print:
		li $v0,2		# print the float value
		mov.s $f12,$f5
		syscall
		
		li $v0,4		# print new line
		la $a0,newLine
		syscall
		
		jr $ra