
import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

STEP = 0.01
MAX_DIST = 10




criteria = ''''''
check = ''''''
requirements = ''''''

for r in range(1,int(MAX_DIST/STEP)):
    criteria += ''',"'''+str(r*STEP)+'''": {
      "trigger": "minecraft:placed_block",
      "conditions": {
        "location": [
          {
            "condition": "minecraft:entity_properties",
            "entity": "this",
            "predicate": {
              "distance": {
                "absolute": {
                  "min": '''+str((r-1)*STEP)+''',
                  "max": '''+str(r*STEP)+'''
                }
              }
            }
          }
        ]
      }
    }'''

    requirements += '''
    ,"'''+str(r*STEP)+'''"'''

    check += '''execute if entity @s[advancements={_main_:use/placed_block={'''+str(r*STEP)+'''=true}}] run return '''+str(r)+'''
'''




criteria = criteria[1:]
requirements = requirements[2:]

with open(os.path.join(BASE_DIR,f'placed_block.json'),'w') as f:
    f.write('''{
  "criteria": {'''+criteria+'''
  },
  "requirements":[[
  '''+requirements+''']],
  "rewards":{
    "function":"namespace:placed_block"
  }
}''')
        

with open(os.path.join(BASE_DIR,f'macro.mcfunction'),'w') as f:
    f.write('''
  advancement revoke @s only namespace:placed_block
  $execute at @s positioned ^ ^ ^$(r) run function namespace:at_placed
''')
        
with open(os.path.join(BASE_DIR,f'at_placed.mcfunction'),'w') as f:
    f.write('''
  particle flame
''')
        



with open(os.path.join(BASE_DIR,f'placed_block.mcfunction'),'w') as f:
    f.write(''''''+check+'''
  advancement revoke @s only namespace:placed_block
''')
        


