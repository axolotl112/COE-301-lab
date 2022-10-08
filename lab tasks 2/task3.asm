.data

inp1: .asciiz "enter number: "

inp2: .asciiz "enter another number: "

equal: .asciiz "equal"
notequal: .asciiz "not equal"

.text
#################
li $v0 ,4 
la $a0 , inp1
syscall
##################
li $v0 ,5
syscall
move $t0,$v0
####################
#################
li $v0 ,4 
la $a0 , inp2
syscall
##################
li $v0 ,5
syscall
move $t1,$v0
####################
#if t0 =t1 go to eq
beq $t0,$t1 , eq
li $v0 , 4
la $a0 ,notequal
syscall
j exit
####################
eq:
li $v0 , 4
la $a0 ,equal
syscall
#####################

#####################
exit:

li $v0 ,10
#####################
  
    