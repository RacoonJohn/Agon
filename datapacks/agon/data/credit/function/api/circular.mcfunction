
# credit: [
#   {
#   title: json text
#   people:[json text]
#   offset: float
#   }
#]

# settings:{ 
#    title: float
#    people: float
#    radius: float
#    rotation_time: tick
#}

#############################################################


scoreboard objectives add delay dummy


$data modify storage credit:main credit set value $(credit)
$data modify storage credit:main settings set value $(settings)

execute store result score #dx_title rMath run data get storage credit:main settings.title 125
execute store result score #dx_people rMath run data get storage credit:main settings.people 333
execute store result score #delay rMath run data get storage credit:main settings.rotation_time 0.025


function credit:sys/summon/circular/loop_title with storage credit:main credit[0]


