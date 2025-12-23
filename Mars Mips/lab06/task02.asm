.data
actualBits: .word 0x022001F3
maskingBits: .word 0xFFFFFF7A
.text
.globl main
main:
 lw $t0,actualBits
 lw $t1,maskingBits
 
 and $t3,$t0,$t1
 
 li $v0,1
 move $a0,$t3
 syscall
 
 li $v0,10
 syscall

 
 
 
 
 

