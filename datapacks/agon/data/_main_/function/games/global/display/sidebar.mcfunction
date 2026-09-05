


#warn-off-file


#tellraw @a {nbt:"board[0]",storage:"math:data",interpret:false}
#tellraw @a {nbt:"board[0]",storage:"math:data",interpret:true}
execute if data storage math:data board[0] run scoreboard players display name 0 board {nbt:"board[0]",storage:"math:data",interpret:true}
#execute if data storage math:data board[0] run scoreboard players display numberformat 0 board blank
execute if data storage math:data board[1] run scoreboard players display name 1 board {nbt:"board[1]",storage:"math:data",interpret:true}
#execute if data storage math:data board[1] run scoreboard players display numberformat 1 board blank
execute if data storage math:data board[2] run scoreboard players display name 2 board {nbt:"board[2]",storage:"math:data",interpret:true}
execute if data storage math:data board[2] run scoreboard players display numberformat 2 board blank
execute if data storage math:data board[3] run scoreboard players display name 3 board {nbt:"board[3]",storage:"math:data",interpret:true}
execute if data storage math:data board[3] run scoreboard players display numberformat 3 board blank
execute if data storage math:data board[4] run scoreboard players display name 4 board {nbt:"board[4]",storage:"math:data",interpret:true}
execute if data storage math:data board[4] run scoreboard players display numberformat 4 board blank
execute if data storage math:data board[5] run scoreboard players display name 5 board {nbt:"board[5]",storage:"math:data",interpret:true}
execute if data storage math:data board[5] run scoreboard players display numberformat 5 board blank
execute if data storage math:data board[6] run scoreboard players display name 6 board {nbt:"board[6]",storage:"math:data",interpret:true}
execute if data storage math:data board[6] run scoreboard players display numberformat 6 board blank
execute if data storage math:data board[7] run scoreboard players display name 7 board {nbt:"board[7]",storage:"math:data",interpret:true}
execute if data storage math:data board[7] run scoreboard players display numberformat 7 board blank
execute if data storage math:data board[8] run scoreboard players display name 8 board {nbt:"board[8]",storage:"math:data",interpret:true}
execute if data storage math:data board[8] run scoreboard players display numberformat 8 board blank
execute if data storage math:data board[9] run scoreboard players display name 9 board {nbt:"board[9]",storage:"math:data",interpret:true}
execute if data storage math:data board[9] run scoreboard players display numberformat 9 board blank
execute if data storage math:data board[10] run scoreboard players display name 10 board {nbt:"board[10]",storage:"math:data",interpret:true}
execute if data storage math:data board[10] run scoreboard players display numberformat 10 board blank
execute if data storage math:data board[11] run scoreboard players display name 11 board {nbt:"board[11]",storage:"math:data",interpret:true}
execute if data storage math:data board[11] run scoreboard players display numberformat 11 board blank
execute if data storage math:data board[12] run scoreboard players display name 12 board {nbt:"board[12]",storage:"math:data",interpret:true}
execute if data storage math:data board[12] run scoreboard players display numberformat 12 board blank
execute if data storage math:data board[13] run scoreboard players display name 12 board {nbt:"board[13]",storage:"math:data",interpret:true}
execute if data storage math:data board[13] run scoreboard players display numberformat 13 board blank
execute if data storage math:data board[14] run scoreboard players display name 12 board {nbt:"board[14]",storage:"math:data",interpret:true}
execute if data storage math:data board[14] run scoreboard players display numberformat 14 board blank
execute if data storage math:data board[15] run scoreboard players display name 12 board {nbt:"board[15]",storage:"math:data",interpret:true}
execute if data storage math:data board[15] run scoreboard players display numberformat 15 board blank



execute unless data storage math:data board[0] run scoreboard players reset 0 board
execute unless data storage math:data board[1] run scoreboard players reset 1 board
execute unless data storage math:data board[2] run scoreboard players reset 2 board
execute unless data storage math:data board[3] run scoreboard players reset 3 board
execute unless data storage math:data board[4] run scoreboard players reset 4 board
execute unless data storage math:data board[5] run scoreboard players reset 5 board
execute unless data storage math:data board[6] run scoreboard players reset 6 board
execute unless data storage math:data board[7] run scoreboard players reset 7 board
execute unless data storage math:data board[8] run scoreboard players reset 8 board
execute unless data storage math:data board[9] run scoreboard players reset 9 board
execute unless data storage math:data board[10] run scoreboard players reset 10 board
execute unless data storage math:data board[11] run scoreboard players reset 11 board
execute unless data storage math:data board[12] run scoreboard players reset 12 board
execute unless data storage math:data board[13] run scoreboard players reset 13 board
execute unless data storage math:data board[14] run scoreboard players reset 14 board
execute unless data storage math:data board[15] run scoreboard players reset 15 board


