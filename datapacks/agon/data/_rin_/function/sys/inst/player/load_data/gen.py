
r = ''''''
for s in range(0,36):
    r += ',{"rolls": 1,"entries": [{Slot:'+str(s)+'b,"type": "minecraft:item","name": "minecraft:stick","functions": [{"type": "set_components","components": {}}]}]}'

print(r)
