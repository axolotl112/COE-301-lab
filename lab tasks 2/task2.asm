.data
inp1: .asciiz "enter A: "
inp2: .asciiz "enter B: "
inp3: .asciiz "enter C: "   

.text
####################
li $v0 , 4
la $a0 , inp1
syscall
#####READ A##############

li $v0 ,5
syscall
move $t0,$v0 
######################
li $v0 , 4
la $a0 , inp2
syscall
#######READ B###############
li $v0 ,5
syscall
move $t1,$v0 
###########################
li $v0 , 4
la $a0 , inp3
syscall
######READ C####################
li $v0 ,5
syscall
move $t2,$v0
##########################
li $t3 ,101
add $s0 ,$t0,$t1
add  $s1 ,$t2 ,$t3
sub $s3 ,$s0,$s1
move $a0 ,$s3
syscall
######################### 
