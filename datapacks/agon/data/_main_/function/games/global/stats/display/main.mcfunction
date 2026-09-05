
data modify storage _rin_:intern display.temp set value [\ 
 "\n",{text:"[═══ Game Review ═══]",color:"primary",bold:true}\
,"\n    ",{score:{name:"@s",objective:"stats.game.kill"},color:"secondary"},{text:"⚔ ",color:"secondary"},{score:{name:"@s",objective:"stats.game.death"},color:"secondary"},{text:"☠",color:"secondary"},{text:" Kills ratio",color:"primary"}\
,"\n    ",{score:{name:"@s",objective:"stats.game.hit"},color:"secondary"},{text:"🗡 ",color:"secondary"},{score:{name:"@s",objective:"stats.game.hurt"},color:"secondary"},{text:"🛡",color:"secondary"},{text:" Hits ratio",color:"primary"}\
,"\n",{text:"[══════════════]",color:"primary",bold:true}\
]


function _rin_:sys/style/change_color

tellraw @s {interpret:true,nbt:"display.temp",storage:"_rin_:intern"}

