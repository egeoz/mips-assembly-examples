.data
	myMessage: .asciiz "Hello World\n"

.text
	li $v0,4 #load-i print syscall
	la $a0,myMessage
	syscall