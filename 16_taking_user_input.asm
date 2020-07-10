.data
	str1: .asciiz "Enter your age: "
	str2: .asciiz "\nYour age is "
	str3: .asciiz "\nEnter the value of pi: "
	str4: .asciiz "\nEnter your name:"
	str5: .asciiz "\nYour name is "
	
	name: .space 20
	newLine: .asciiz "\n"
		
.text
	main:
		li $v0,4
		la $a0,str4
		syscall
		
		li $v0,8	# string input mode
		la $a0,name	
		li $a1,20
		syscall
		move $t0,$v0
		
		li $v0,4
		la $a0,str5
		syscall
		
		li $v0,4
		la $a0,name
		syscall
		
		li $v0,4
		la $a0,str1
		syscall
		
		li $v0,5	# take int input
		syscall
		move $t0,$v0
		
		li $v0,4
		la $a0,str2
		syscall
		
		li $v0,1
		move $a0,$t0
		syscall
		
		li $v0,4
		la $a0,str3
		syscall
		
		li $v0,6
		syscall
		
		li $v0,4
		la $a0,newLine
		syscall
		
		li $v0,2
		mov.s $f12,$f0	# $f12 is default for floats and doubles
		syscall
		
	li $v0,10
	syscall
