.data 

inp1: .asciiz "enter A: "
inp2: .asciiz "enter B: "

.text 
#### A #############
li $v0 , 4
la $a0 , inp1
syscall 
################
li $v0 ,5
syscall
###############
move $t0 ,$v0

### B ##############
li $v0 , 4
la $a0 , inp2
syscall 
################
li $v0 ,5
syscall

move $t1 ,$v0
###############
sll $t2 , $t1 , 1

add $s0 , $t0 ,$t2

sub $s1 , $s0 ,5  

move $a0 , $s1

syscall
#################

