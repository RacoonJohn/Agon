## create an new empty instance container (IC) / reset one
#
# structure of an IC: {
#   data (IC's global data ) : {
#       id (IC's id, reset an IC change it): int
#    }
#   "{PI's ID}" (player instance [PI] id, each player have an PI's ID [ score _rin_global_playerID]) : player instance
# }
#
# macro inputs:
#   inst: IC's name

###########################

scoreboard players add #count _rin_instance_ID 1

data modify storage _rin_:intern temp set value {data:{id:0}}
execute store result storage _rin_:intern temp.data.id int 1 run scoreboard players get #count _rin_instance_ID

$data modify storage _rin_:inst "$(inst)" set from storage _rin_:intern temp
