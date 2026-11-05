kill @e[tag=credit]

execute positioned 9.0 7.00 9.0 rotated 0 -20 run function credit:api/circular \
{\
    settings:{\
        title:5,\
        people:2,\
        radius:16,\
        rotation_time:2000\
    },\
    credit:[\
        {\
            title:{text:"Datapack Maker",color:"#30006B",bold:true},\
            offset:60,\
            people:[{text:"RAC00NJOHN",color:black,bold:true}]\
        },\
        {\
            title:{text:"Builders",color:"#30006B",bold:true},\
            offset:60,\
            people:[\
                {text:"KoonRa",color:black,bold:true},\
                {text:"RAC00NJOHN",color:black,bold:true},\
                {text:"Attilasher",color:black,bold:true}\
            ]\
        },\
        {\
            title:{text:"Beta Testers",color:"#30006B",bold:true},\
            offset:60,\
            people:[\
                {text:"KoonRa",color:black,bold:true},\
                {text:"Attillasher",color:black,bold:true},\
                {text:"Ayllich",color:black,bold:true},\
                {text:"cliquegauchetv",color:black,bold:true},\
                {text:"Stoupy51",color:black,bold:true},\
                {text:"Stishes",color:black,bold:true}\
            ]\
        },\
        {\
            title:{text:"Library Used",color:"#30006B",bold:true},\
            offset:60,\
            people:[\
                {text:"Player Motion",color:black,bold:true},\
                {text:"Hit Match",color:black,bold:true},\
                {text:"GU",color:black,bold:true}\
            ]\
        }\
    ]\
}
