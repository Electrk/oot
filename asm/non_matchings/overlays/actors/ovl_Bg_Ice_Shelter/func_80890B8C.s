.late_rodata
glabel D_808918D4
 .word 0x3D8F5C29
glabel D_808918D8
    .float 0.8

.text
glabel func_80890B8C
/* 0044C 80890B8C 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 00450 80890B90 AFBF007C */  sw      $ra, 0x007C($sp)           
/* 00454 80890B94 AFBE0078 */  sw      $s8, 0x0078($sp)           
/* 00458 80890B98 AFB70074 */  sw      $s7, 0x0074($sp)           
/* 0045C 80890B9C AFB60070 */  sw      $s6, 0x0070($sp)           
/* 00460 80890BA0 AFB5006C */  sw      $s5, 0x006C($sp)           
/* 00464 80890BA4 AFB40068 */  sw      $s4, 0x0068($sp)           
/* 00468 80890BA8 AFB30064 */  sw      $s3, 0x0064($sp)           
/* 0046C 80890BAC AFB20060 */  sw      $s2, 0x0060($sp)           
/* 00470 80890BB0 AFB1005C */  sw      $s1, 0x005C($sp)           
/* 00474 80890BB4 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 00478 80890BB8 F7BE0050 */  sdc1    $f30, 0x0050($sp)          
/* 0047C 80890BBC F7BC0048 */  sdc1    $f28, 0x0048($sp)          
/* 00480 80890BC0 F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 00484 80890BC4 F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 00488 80890BC8 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 0048C 80890BCC F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00490 80890BD0 AFA600E0 */  sw      $a2, 0x00E0($sp)           
/* 00494 80890BD4 84B4009E */  lh      $s4, 0x009E($a1)           ## 0000009E
/* 00498 80890BD8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0049C 80890BDC 3C1E8089 */  lui     $s8, %hi(D_80891794)       ## $s8 = 80890000
/* 004A0 80890BE0 32940007 */  andi    $s4, $s4, 0x0007           ## $s4 = 00000000
/* 004A4 80890BE4 0014A400 */  sll     $s4, $s4, 16               
/* 004A8 80890BE8 4487D000 */  mtc1    $a3, $f26                  ## $f26 = 0.00
/* 004AC 80890BEC 4481F000 */  mtc1    $at, $f30                  ## $f30 = 3.00
/* 004B0 80890BF0 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 004B4 80890BF4 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 004B8 80890BF8 0014A403 */  sra     $s4, $s4, 16               
/* 004BC 80890BFC 27DE1794 */  addiu   $s8, $s8, %lo(D_80891794)  ## $s8 = 80891794
/* 004C0 80890C00 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 004C4 80890C04 24170002 */  addiu   $s7, $zero, 0x0002         ## $s7 = 00000002
.L80890C08:
/* 004C8 80890C08 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 004CC 80890C0C 00000000 */  nop
/* 004D0 80890C10 C7A400E0 */  lwc1    $f4, 0x00E0($sp)           
/* 004D4 80890C14 3C014228 */  lui     $at, 0x4228                ## $at = 42280000
/* 004D8 80890C18 4600203C */  c.lt.s  $f4, $f0                   
/* 004DC 80890C1C 00000000 */  nop
/* 004E0 80890C20 45030063 */  bc1tl   .L80890DB0                 
/* 004E4 80890C24 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 004E8 80890C28 44813000 */  mtc1    $at, $f6                   ## $f6 = 42.00
/* 004EC 80890C2C 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 004F0 80890C30 44814000 */  mtc1    $at, $f8                   ## $f8 = 16.00
/* 004F4 80890C34 461A3582 */  mul.s   $f22, $f6, $f26            
/* 004F8 80890C38 3C0143E1 */  lui     $at, 0x43E1                ## $at = 43E10000
/* 004FC 80890C3C 44815000 */  mtc1    $at, $f10                  ## $f10 = 450.00
/* 00500 80890C40 461A4702 */  mul.s   $f28, $f8, $f26            
/* 00504 80890C44 00147040 */  sll     $t6, $s4,  1               
/* 00508 80890C48 03CE7821 */  addu    $t7, $s8, $t6              
/* 0050C 80890C4C 461A5402 */  mul.s   $f16, $f10, $f26           
/* 00510 80890C50 85F80000 */  lh      $t8, 0x0000($t7)           ## 00000000
/* 00514 80890C54 0012CBC0 */  sll     $t9, $s2, 15               
/* 00518 80890C58 26D00024 */  addiu   $s0, $s6, 0x0024           ## $s0 = 00000024
/* 0051C 80890C5C 03198821 */  addu    $s1, $t8, $t9              
/* 00520 80890C60 00118C00 */  sll     $s1, $s1, 16               
/* 00524 80890C64 00118C03 */  sra     $s1, $s1, 16               
/* 00528 80890C68 4600848D */  trunc.w.s $f18, $f16                 
/* 0052C 80890C6C 00112400 */  sll     $a0, $s1, 16               
/* 00530 80890C70 00042403 */  sra     $a0, $a0, 16               
/* 00534 80890C74 44139000 */  mfc1    $s3, $f18                  
/* 00538 80890C78 00000000 */  nop
/* 0053C 80890C7C 00139C00 */  sll     $s3, $s3, 16               
/* 00540 80890C80 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00544 80890C84 00139C03 */  sra     $s3, $s3, 16               
/* 00548 80890C88 00112400 */  sll     $a0, $s1, 16               
/* 0054C 80890C8C 46000506 */  mov.s   $f20, $f0                  
/* 00550 80890C90 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00554 80890C94 00042403 */  sra     $a0, $a0, 16               
/* 00558 80890C98 4614B102 */  mul.s   $f4, $f22, $f20            
/* 0055C 80890C9C C6060000 */  lwc1    $f6, 0x0000($s0)           ## 00000024
/* 00560 80890CA0 46000606 */  mov.s   $f24, $f0                  
/* 00564 80890CA4 4600B482 */  mul.s   $f18, $f22, $f0            
/* 00568 80890CA8 46062200 */  add.s   $f8, $f4, $f6              
/* 0056C 80890CAC E7A800AC */  swc1    $f8, 0x00AC($sp)           
/* 00570 80890CB0 C60A0004 */  lwc1    $f10, 0x0004($s0)          ## 00000028
/* 00574 80890CB4 460AE400 */  add.s   $f16, $f28, $f10           
/* 00578 80890CB8 E7B000B0 */  swc1    $f16, 0x00B0($sp)          
/* 0057C 80890CBC C6040008 */  lwc1    $f4, 0x0008($s0)           ## 0000002C
/* 00580 80890CC0 46049180 */  add.s   $f6, $f18, $f4             
/* 00584 80890CC4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00588 80890CC8 E7A600B4 */  swc1    $f6, 0x00B4($sp)           
/* 0058C 80890CCC 461E0202 */  mul.s   $f8, $f0, $f30             
/* 00590 80890CD0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00594 80890CD4 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 00598 80890CD8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0059C 80890CDC 00000000 */  nop
/* 005A0 80890CE0 E7A400A4 */  swc1    $f4, 0x00A4($sp)           
/* 005A4 80890CE4 460A4401 */  sub.s   $f16, $f8, $f10            
/* 005A8 80890CE8 46148482 */  mul.s   $f18, $f16, $f20           
/* 005AC 80890CEC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 005B0 80890CF0 E7B200A0 */  swc1    $f18, 0x00A0($sp)          
/* 005B4 80890CF4 461E0182 */  mul.s   $f6, $f0, $f30             
/* 005B8 80890CF8 3C018089 */  lui     $at, %hi(D_808918D4)       ## $at = 80890000
/* 005BC 80890CFC C42218D4 */  lwc1    $f2, %lo(D_808918D4)($at)  
/* 005C0 80890D00 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 005C4 80890D04 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 005C8 80890D08 3C018089 */  lui     $at, %hi(D_808918D8)       ## $at = 80890000
/* 005CC 80890D0C C42418D8 */  lwc1    $f4, %lo(D_808918D8)($at)  
/* 005D0 80890D10 46083281 */  sub.s   $f10, $f6, $f8             
/* 005D4 80890D14 E7A40098 */  swc1    $f4, 0x0098($sp)           
/* 005D8 80890D18 46185402 */  mul.s   $f16, $f10, $f24           
/* 005DC 80890D1C 00000000 */  nop
/* 005E0 80890D20 46141482 */  mul.s   $f18, $f2, $f20            
/* 005E4 80890D24 00000000 */  nop
/* 005E8 80890D28 46181182 */  mul.s   $f6, $f2, $f24             
/* 005EC 80890D2C E7B000A8 */  swc1    $f16, 0x00A8($sp)          
/* 005F0 80890D30 E7B20094 */  swc1    $f18, 0x0094($sp)          
/* 005F4 80890D34 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 005F8 80890D38 E7A6009C */  swc1    $f6, 0x009C($sp)           
/* 005FC 80890D3C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00600 80890D40 44811000 */  mtc1    $at, $f2                   ## $f2 = 40.00
/* 00604 80890D44 3C098089 */  lui     $t1, %hi(D_80891704)       ## $t1 = 80890000
/* 00608 80890D48 3C0A8089 */  lui     $t2, %hi(D_80891708)       ## $t2 = 80890000
/* 0060C 80890D4C 46020202 */  mul.s   $f8, $f0, $f2              
/* 00610 80890D50 254A1708 */  addiu   $t2, $t2, %lo(D_80891708)  ## $t2 = 80891708
/* 00614 80890D54 25291704 */  addiu   $t1, $t1, %lo(D_80891704)  ## $t1 = 80891704
/* 00618 80890D58 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 0061C 80890D5C AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00620 80890D60 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00624 80890D64 27A500AC */  addiu   $a1, $sp, 0x00AC           ## $a1 = FFFFFFD4
/* 00628 80890D68 46024280 */  add.s   $f10, $f8, $f2             
/* 0062C 80890D6C 27A600A0 */  addiu   $a2, $sp, 0x00A0           ## $a2 = FFFFFFC8
/* 00630 80890D70 27A70094 */  addiu   $a3, $sp, 0x0094           ## $a3 = FFFFFFBC
/* 00634 80890D74 AFB30018 */  sw      $s3, 0x0018($sp)           
/* 00638 80890D78 4600540D */  trunc.w.s $f16, $f10                 
/* 0063C 80890D7C 440C8000 */  mfc1    $t4, $f16                  
/* 00640 80890D80 00000000 */  nop
/* 00644 80890D84 000C6C00 */  sll     $t5, $t4, 16               
/* 00648 80890D88 000D7403 */  sra     $t6, $t5, 16               
/* 0064C 80890D8C 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 00650 80890D90 00000000 */  nop
/* 00654 80890D94 46809120 */  cvt.s.w $f4, $f18                  
/* 00658 80890D98 461A2182 */  mul.s   $f6, $f4, $f26             
/* 0065C 80890D9C 4600320D */  trunc.w.s $f8, $f6                   
/* 00660 80890DA0 44184000 */  mfc1    $t8, $f8                   
/* 00664 80890DA4 0C00A0A7 */  jal     func_8002829C              
/* 00668 80890DA8 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 0066C 80890DAC 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000002
.L80890DB0:
/* 00670 80890DB0 1657FF95 */  bne     $s2, $s7, .L80890C08       
/* 00674 80890DB4 00000000 */  nop
/* 00678 80890DB8 8FBF007C */  lw      $ra, 0x007C($sp)           
/* 0067C 80890DBC D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00680 80890DC0 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 00684 80890DC4 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 00688 80890DC8 D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 0068C 80890DCC D7BC0048 */  ldc1    $f28, 0x0048($sp)          
/* 00690 80890DD0 D7BE0050 */  ldc1    $f30, 0x0050($sp)          
/* 00694 80890DD4 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 00698 80890DD8 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 0069C 80890DDC 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 006A0 80890DE0 8FB30064 */  lw      $s3, 0x0064($sp)           
/* 006A4 80890DE4 8FB40068 */  lw      $s4, 0x0068($sp)           
/* 006A8 80890DE8 8FB5006C */  lw      $s5, 0x006C($sp)           
/* 006AC 80890DEC 8FB60070 */  lw      $s6, 0x0070($sp)           
/* 006B0 80890DF0 8FB70074 */  lw      $s7, 0x0074($sp)           
/* 006B4 80890DF4 8FBE0078 */  lw      $s8, 0x0078($sp)           
/* 006B8 80890DF8 03E00008 */  jr      $ra                        
/* 006BC 80890DFC 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000
