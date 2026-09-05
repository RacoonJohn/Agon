advancement revoke @s only dapvp:system/hit



tag @s add dapvp.system.attacker


execute as @e[nbt={HurtTime:10s}] if function dapvp:system/attacker run function dapvp:system/hurt


tag @s remove dapvp.system.attacker
 