function _rin_:api/player/inst/get

#tellraw @a [{selector:"@s"},{score:{name:"#temp",objective:"rMath"}}]
execute if score #temp rMath matches 0 run data modify storage _rin_:in inv set from storage _rin_:player this.inv[0]
execute if score #temp rMath matches 1 run data modify storage _rin_:in inv set from storage _rin_:player this.inv[1]
execute if score #temp rMath matches 2 run data modify storage _rin_:in inv set from storage _rin_:player this.inv[2]
execute if score #temp rMath matches 3 run data modify storage _rin_:in inv set from storage _rin_:player this.inv[3]
execute if score #temp rMath matches 4 run data modify storage _rin_:in inv set from storage _rin_:player this.inv[4]
execute if score #temp rMath matches 5 run data modify storage _rin_:in inv set from storage _rin_:player this.inv[5]
execute if score #temp rMath matches 6 run data modify storage _rin_:in inv set from storage _rin_:player this.inv[6]
execute if score #temp rMath matches 7 run data modify storage _rin_:in inv set from storage _rin_:player this.inv[7]

function _rin_:api/player/inst/load_inventory
