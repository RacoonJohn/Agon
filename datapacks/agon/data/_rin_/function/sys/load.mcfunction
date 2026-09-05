
scoreboard objectives add _rin_global dummy
    scoreboard players set #72000 _rin_global 72000
    scoreboard players set #1200 _rin_global 1200
    scoreboard players set #1000 _rin_global 1000
    scoreboard players set #60 _rin_global 60
    scoreboard players set #20 _rin_global 20
    scoreboard players set #10 _rin_global 10
    scoreboard players set #8 _rin_global 8


scoreboard objectives add _rin_global_playerID dummy
scoreboard objectives add _rin_global_ownerID dummy
scoreboard objectives add _rin_instance_ID dummy

scoreboard objectives add _rin_protection_origin_X dummy
scoreboard objectives add _rin_protection_origin_Y dummy
scoreboard objectives add _rin_protection_origin_Z dummy
scoreboard objectives add _rin_protection_size dummy

scoreboard objectives add _rin_timer_delay dummy
scoreboard objectives add _rin_timer_date dummy


data modify storage _rin_:intern style set value {\ 
    colors:{\ 
        bg-dark: "#bcecff",\ 
        bg: "#d7f7ff",\ 
        bg-light: "#ffffff",\ 
        text: "#dcf9f8",\ 
        text-muted: "#9cb7b7",\ 
        highlight: "#ffffff",\ 
        border: "#558c85",\ 
        border-muted: "#34a9eb",\ 
        primary: "#4bbcff",\ 
        secondary: "#f2994d",\ 
        danger: "#961e0e",\ 
        warning: "#b39f18",\ 
        success: "#37b880",\ 
        info: "#699ef5",\ 
        r:"#d61a1a",\
        g:"#0ddb1c",\
        b:"#1287db",\
        p:"#e6bf15",\
        rm:"#826c6c",\
        gm:"#5e7360",\
        bm:"#64717a",\
        pm:"#757261"\
    },\
    iargbcolors:{\ 
        bg-dark: -574821121,\ 
        bg: -573048833,\ 
        bg-light: -570425345,\ 
        text: -268432350,\ 
        text-muted: -26511232,\ 
        highlight: -16777217,\ 
        border: -33519158,\ 
        border-muted: -30103061,\ 
        primary: -28590849,\ 
        secondary: -17655475,\ 
        danger: -23716338,\ 
        warning: -21782760,\ 
        success: -29902720,\ 
        info: -26632459,\ 
    }\
}

#--bg-dark: oklch(0.92 0.07 239);
#--bg: oklch(0.96 0.07 239);
#--bg-light: oklch(1 0.07 239);
#--text: oklch(0.15 0.14 239);
#--text-muted: oklch(0.4 0.14 239);
#--highlight: oklch(1 0.14 239);
#--border: oklch(0.6 0.14 239);
#--border-muted: oklch(0.7 0.14 239);
#--primary: oklch(0.76 0.14 239);
#--secondary: oklch(0.76 0.14 59);
#--danger: oklch(0.7 0.14 30);
#--warning: oklch(0.7 0.14 100);
#--success: oklch(0.7 0.14 160);
#--info: oklch(0.7 0.14 260);


#4c6dbac8-fdab-4406-99d4-aa9548172ae0
summon chest_minecart 0 10000 0 {Invulnerable:1b,NoGravity:1b,Silent:1b,Tags:["_rin_sys_suuid","_rin_sys_ignoreClone"],UUID:[I;1282259656,-39107578,-1714115947,1209477856],data:{name:"Don't Delete"}}

#be55dcab-d243-4145-b5e3-a9fcf93d9cb4 
summon marker 0 0 0 {Tags:["_rin_sys_suuid","_rin_sys_ignoreClone"],UUID:[I;-1101669205,-767344315,-1243371012,-113402700],data:{name:"Don't Delete"}}

#042c46b0-8690-4891-9bbe-551d2a820332
summon marker 0 0 0 {Tags:["_rin_sys_suuid","_rin_sys_ignoreClone"],UUID:[I;70010544,-2037364591,-1682025187,713163570],data:{name:"Don't Delete"}}

