## kill proctection markers (PMs) from their protection origin

## PMs should be loaded
# scores inputs:
#   #fillAir _rin_global -> {0:---,1: fill the 8*8*8 region of the marker  with air}
#   #ignoreEntities _rin_global -> {0:kill cloned entities,1: ----}
#   #X0 _rin_global -> X min pos origin of the marker
#   #Y0 _rin_global -> Y min pos origin of the marker
#   #Z0 _rin_global -> Z min pos origin of the marker
#   #X1 _rin_global -> X max pos origin of the marker ( >= #X0)
#   #Y1 _rin_global -> Y max pos origin of the marker ( >= #Y0)
#   #Z1 _rin_global -> Z max pos origin of the marker ( >= #Z0)


###################################################################################################


execute as @e[type=marker,tag=_rin_sys_protection] \
    if score @s _rin_protection_origin_X >= #X0 _rin_global if score @s _rin_protection_origin_X <= #X1 _rin_global \
    if score @s _rin_protection_origin_Y >= #Y0 _rin_global if score @s _rin_protection_origin_Y <= #Y1 _rin_global \
    if score @s _rin_protection_origin_Z >= #Z0 _rin_global if score @s _rin_protection_origin_Z <= #Z1 _rin_global \
    run function _rin_:api/protection/kill

execute as @e[tag=_rin_sys_cloned] \
    if score @s _rin_protection_origin_X >= #X0 _rin_global if score @s _rin_protection_origin_X <= #X1 _rin_global \
    if score @s _rin_protection_origin_Y >= #Y0 _rin_global if score @s _rin_protection_origin_Y <= #Y1 _rin_global \
    if score @s _rin_protection_origin_Z >= #Z0 _rin_global if score @s _rin_protection_origin_Z <= #Z1 _rin_global \
    run kill @s



