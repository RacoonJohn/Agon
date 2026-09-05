execute summon text_display run function credit:sys/summon/circular/people


scoreboard players operation #dx rMath += #dx_people rMath



data remove storage credit:main credit[0].people[0]

execute unless data storage credit:main credit[0].people[0] run return fail

function credit:sys/summon/circular/loop_people

