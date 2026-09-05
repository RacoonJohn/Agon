## convert tick to metric strings ss and mm

# scores inputs:
#   #time _rin_global : tick to convert
#
# storage outputs:
#   _rin_:out time{ss:str,mm:str}

##########################################


scoreboard players operation #temp _rin_global = #time _rin_global

scoreboard players operation #temp _rin_global /= #20 _rin_global
scoreboard players operation #temp _rin_global %= #60 _rin_global
function _rin_:sys/time/branch60
data modify storage _rin_:out time.ss set from storage _rin_:intern str

scoreboard players operation #temp _rin_global /= #1200 _rin_global
function _rin_:sys/time/branch60
data modify storage _rin_:out time.mm set from storage _rin_:intern str


