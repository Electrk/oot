glabel func_80B3590C
/* 01C5C 80B3590C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01C60 80B35910 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01C64 80B35914 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01C68 80B35918 C48201A0 */  lwc1    $f2, 0x01A0($a0)           ## 000001A0
/* 01C6C 80B3591C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01C70 80B35920 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 01C74 80B35924 4600110D */  trunc.w.s $f4, $f2
/* 01C78 80B35928 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C7C 80B3592C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01C80 80B35930 24A54638 */  addiu   $a1, $a1, 0x4638           ## $a1 = 06004638
/* 01C84 80B35934 440F2000 */  mfc1    $t7, $f4
/* 01C88 80B35938 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 01C8C 80B3593C 3C06BF00 */  lui     $a2, 0xBF00                ## $a2 = BF000000
/* 01C90 80B35940 29E10010 */  slti    $at, $t7, 0x0010
/* 01C94 80B35944 14200004 */  bne     $at, $zero, .L80B35958
/* 01C98 80B35948 46006006 */  mov.s   $f0, $f12
/* 01C9C 80B3594C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 01CA0 80B35950 44810000 */  mtc1    $at, $f0                   ## $f0 = 15.00
/* 01CA4 80B35954 00000000 */  nop
.L80B35958:
/* 01CA8 80B35958 460C1181 */  sub.s   $f6, $f2, $f12
/* 01CAC 80B3595C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01CB0 80B35960 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01CB4 80B35964 AFB80014 */  sw      $t8, 0x0014($sp)
/* 01CB8 80B35968 44073000 */  mfc1    $a3, $f6
/* 01CBC 80B3596C E7A00010 */  swc1    $f0, 0x0010($sp)
/* 01CC0 80B35970 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01CC4 80B35974 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01CC8 80B35978 2419000C */  addiu   $t9, $zero, 0x000C         ## $t9 = 0000000C
/* 01CCC 80B3597C 3C0580B3 */  lui     $a1, %hi(func_80B359A8)    ## $a1 = 80B30000
/* 01CD0 80B35980 AE1902D4 */  sw      $t9, 0x02D4($s0)           ## 000002D4
/* 01CD4 80B35984 A60002F8 */  sh      $zero, 0x02F8($s0)         ## 000002F8
/* 01CD8 80B35988 24A559A8 */  addiu   $a1, $a1, %lo(func_80B359A8) ## $a1 = 80B359A8
/* 01CDC 80B3598C 0C2CCF2C */  jal     func_80B33CB0
/* 01CE0 80B35990 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CE4 80B35994 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01CE8 80B35998 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01CEC 80B3599C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01CF0 80B359A0 03E00008 */  jr      $ra
/* 01CF4 80B359A4 00000000 */  nop
