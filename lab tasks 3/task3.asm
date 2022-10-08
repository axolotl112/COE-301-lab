.data
inp1: .asciiz "enter a number: "
inp2: .asciiz "\nenter bit position:"


.text
#number
li $v0 , 4
la $a0 , inp1
syscall
li $v0 , 5
syscall
move $s0 , $v0
#bit position

li $v0 , 4
la $a0 , inp2
syscall
li $v0 , 5
syscall
move $s1 , $v0

li $t0 , 0

while: bge $t0 , $s1 , end

srl $s0 , $s0 , 1

addi $t0 ,$t0 ,1

j while

end:

li $v0 , 1

and $a0 , $s0,1


syscall 


  