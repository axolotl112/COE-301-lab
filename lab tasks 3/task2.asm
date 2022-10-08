.data
inp1: .asciiz " enter a char: "

out: .asciiz "\nthe result:  "
.text

li $v0 ,4

la $a0 ,inp1

syscall

li $v0 , 12
syscall

move $t0 , $v0


blt $t0 , 'Z' , consmall

j concap


consmall:

addi $t0, $t0 , 32

j exit
concap:

subi $t0, $t0 , 32


exit:

li $v0 ,4

la $a0 ,out
syscall 

li $v0 , 11

move $a0 ,$t0
syscall 
  
      





