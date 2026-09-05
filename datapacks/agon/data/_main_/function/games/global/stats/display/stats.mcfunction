
function _main_:games/global/stats/num/get
function _main_:games/global/stats/num/mean/_
function _main_:games/global/stats/num/incertitude/_

data modify storage _rin_:intern display.temp set value [\ 
 "\n",{text:"[═══ Stats Review ═══]",color:"primary",bold:true}\
,"\n    ",{score:{name:"#kill.mean",objective:"rMath"},color:"secondary"},{text:".",color:"secondary"},{score:{name:"#kill.mean.d",objective:"rMath"},color:"secondary"},{text:"±",color:"secondary"},{score:{name:"#kill.u",objective:"rMath"},color:"secondary"},{text:".",color:"secondary"},{score:{name:"#kill.u.d",objective:"rMath"},color:"secondary"},{text:"⚔ ",color:"secondary"},{score:{name:"#death.mean",objective:"rMath"},color:"secondary"},{text:".",color:"secondary"},{score:{name:"#death.mean.d",objective:"rMath"},color:"secondary"},{text:"±",color:"secondary"},{score:{name:"#death.u",objective:"rMath"},color:"secondary"},{text:".",color:"secondary"},{score:{name:"#death.u.d",objective:"rMath"},color:"secondary"},{text:"☠",color:"secondary"},{text:" Kills ratio",color:"primary"}\
,"\n    ",{score:{name:"#hit.mean",objective:"rMath"},color:"secondary"},{text:".",color:"secondary"},{score:{name:"#hit.mean.d",objective:"rMath"},color:"secondary"},{text:"±",color:"secondary"},{score:{name:"#hit.u",objective:"rMath"},color:"secondary"},{text:".",color:"secondary"},{score:{name:"#hit.u.d",objective:"rMath"},color:"secondary"},{text:"🗡 ",color:"secondary"},{score:{name:"#hurt.mean",objective:"rMath"},color:"secondary"},{text:".",color:"secondary"},{score:{name:"#hurt.mean.d",objective:"rMath"},color:"secondary"},{text:"±",color:"secondary"},{score:{name:"#hurt.u",objective:"rMath"},color:"secondary"},{text:".",color:"secondary"},{score:{name:"#hurt.u.d",objective:"rMath"},color:"secondary"},{text:"🛡",color:"secondary"},{text:" Hits ratio",color:"primary"}\
,"\n",{text:"[══════════════]",color:"primary",bold:true}\
]


function _rin_:sys/style/change_color

tellraw @s {interpret:true,nbt:"display.temp",storage:"_rin_:intern"}

