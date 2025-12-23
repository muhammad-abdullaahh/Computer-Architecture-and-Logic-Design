.data
sumMsg: .asciiz "The sum is "

.text
.globl main
main:
 li $t0,1
 li $t1,0
 
 while:
 ble $t0,10,sum
 j exit
 
 sum:
 add $t1,$t1,$t0
 addi $t0,$t0,1
 j while
 
 exit:
 li $v0,4
 la $a0,sumMsg
 syscall
 
 move $a0,$t1
 
 
 
 li $v0,1
 syscall
 
 
 

