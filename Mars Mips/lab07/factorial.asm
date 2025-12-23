.data
inputMsg: .asciiz "Enter the number to take factorial : "
factorial: .asciiz "The factorial is: "

.text
.globl main
main:
    li $v0, 4
    la $a0, inputMsg
    syscall
    li $v0, 5         
    syscall
    move $t0, $v0
    li $t1, 1      

while:
    beqz  $t0, exit 
    j multi
multi:
    mul $t1, $t1, $t0   
    subi $t0, $t0, 1    
    j while

exit:
    li $v0, 4          
    la $a0, factorial
    syscall

    li $v0, 1           
    move $a0, $t1
    syscall
