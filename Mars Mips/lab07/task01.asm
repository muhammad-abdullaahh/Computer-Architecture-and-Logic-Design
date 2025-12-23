.data
inputMsg: .asciiz "Enter the value to be checked: "
newLine: .asciiz "\n"
primeMsg: .asciiz "This is a prime number\n"
compositeMsg: .asciiz "This is a composite number\n"

.text
.globl main
main:
    li $v0, 4
    la $a0, inputMsg
    syscall

    li $v0, 5
    syscall
    move $t0, $v0       

    ble $t0, 1, notPrime  

    li $t1, 2           

loop:
    mul $t3, $t1, $t1     
    bgt $t3, $t0, prime   

    div $t0, $t1
    mfhi $t4             
    beqz $t4, notPrime    

    addi $t1, $t1, 1     
    j loop

notPrime:
    li $v0, 4
    la $a0, compositeMsg
    syscall
    j exit              

prime:
    li $v0, 4
    la $a0, primeMsg
    syscall
    j exit

exit:
    li $v0, 10
    syscall
