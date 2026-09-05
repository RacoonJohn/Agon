
forceload add ~-90 ~-90 ~90 ~90

fill ~-80 ~-14 ~-80 ~80 ~6 ~80 air

place jigsaw _main_:fbg/anchor _main_:lat 10 ~ ~ ~
execute if entity @a[scores={teamID=1}] run place jigsaw _main_:fbg/anchor _main_:lat 10 ~-25 ~ ~-25
execute if entity @a[scores={teamID=2}] run place jigsaw _main_:fbg/anchor _main_:lat 10 ~-25 ~ ~25
execute if entity @a[scores={teamID=3}] run place jigsaw _main_:fbg/anchor _main_:lat 10 ~25 ~ ~-25
execute if entity @a[scores={teamID=4}] run place jigsaw _main_:fbg/anchor _main_:lat 10 ~25 ~ ~25



clone ~-80 ~-14 ~-80 ~79 ~6 ~79 9000 -64 9000 replace force
fill ~-80 ~-14 ~-80 ~79 ~6 ~79 air



forceload remove ~-90 ~-90 ~90 ~90