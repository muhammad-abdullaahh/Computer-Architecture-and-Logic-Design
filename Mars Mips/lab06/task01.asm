.data
And: .asciiz " And "
Or : .asciiz " Or "
Xor : .asciiz " Xor "
Nor : .asciiz " Nor "
Xnor: .asciiz " Xnor(not OR) "
Nand : .asciiz " Nand (not AND) "
newLine: .asciiz "\n"
valueA: .word 0x00000000
valueB: .word 0x00000001

.text
.globl main
main:
 lw $t0,valueA    #valueA=0
 lw $t1,valueB    #valueB=0
 
 li $v0,4
 la $a0,And
 syscall
 
 and $t2,$t0,$t0
 and $t3,$t0,$t1
 and $t4,$t1,$t0
 and $t5,$t1,$t1
 
 li $v0,1
 move $a0,$t2
 syscall
 li $v0,1
 move $a0,$t3
 syscall
 li $v0,1
 move $a0,$t4
 syscall
 li $v0,1
 move $a0,$t5
 syscall 
 
 li $v0,4
 la,$a0,newLine
 syscall
 
 li $v0,4
 la $a0,Nand
 syscall
 
 not $t2,$t2
 not $t3,$t3
 not $t4,$t4
 not $t5,$t5
 
 li $v0,1
 move $a0,$t2
 syscall
 li $v0,1
 move $a0,$t3
 syscall
 li $v0,1
 move $a0,$t4
 syscall
 li $v0,1
 move $a0,$t5
 syscall
 
 li $v0,4
 la $a0,newLine
 syscall 
 
 li $v0,4
 la,$a0,Or
 syscall
 
 or $t2,$t0,$t0
 or $t3,$t0,$t1
 or $t4,$t1,$t0
 or $t5,$t1,$t1
 
 li $v0,1
 move $a0,$t2
 syscall
 li $v0,1
 move $a0,$t3
 syscall
 li $v0,1
 move $a0,$t4
 syscall
 li $v0,1
 move $a0,$t5
 syscall
 
 li $v0,4
 la $a0,newLine
 syscall
  
 li $v0,4
 la $a0,Xor
 syscall
 
 xor $t2,$t0,$t0
 xor $t3,$t0,$t1
 xor $t4,$t1,$t0
 xor $t5,$t1,$t1
 
 li $v0,1
 move $a0,$t2
 syscall
 li $v0,1
 move $a0,$t3
 syscall
 li $v0,1
 move $a0,$t4
 syscall
 li $v0,1
 move $a0,$t5
 syscall
 
 li $v0,4
 la $a0,newLine
 syscall
 
 li $v0,4
 la $a0,Xnor
 syscall
 
 xor $t6,$t0,$t0
 xor $t7,$t0,$t1
 xor $t8,$t1,$t0
 xor $t9,$t1,$t1
 
 li $v0,1
 move $a0,$t6
 syscall
 li $v0,1
 move $a0,$t7
 syscall
 li $v0,1
 move $a0,$t8
 syscall
 li $v0,1
 move $a0,$t9
 syscall
 
 li $v0,4
 la $a0,newLine
 syscall 
 
 li $v0,4
 la $a0,Nor
 syscall
 
 nor $t2,$t0,$t0
 nor $t3,$t0,$t1
 nor $t4,$t1,$t0
 nor $t5,$t1,$t1
 
 li $v0,1
 move $a0,$t2
 syscall
 li $v0,1
 move $a0,$t3
 syscall
 li $v0,1
 move $a0,$t4
 syscall
 li $v0,1
 move $a0,$t5
 syscall
 
 li $v0,4
 la $a0,newLine
 syscall


 
 
 
 
 
 

