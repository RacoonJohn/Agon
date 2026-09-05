execute summon text_display run function credit:sys/summon/circular/title


scoreboard players operation #dx rMath = #dx_title rMath
scoreboard players operation #dx rMath += #dx_people rMath

function credit:sys/summon/circular/loop_people

 

data remove storage credit:main credit[0]

execute unless data storage credit:main credit[0] run return fail

$execute rotated ~$(offset) ~ run function credit:sys/summon/circular/loop_title with storage credit:main credit[0]