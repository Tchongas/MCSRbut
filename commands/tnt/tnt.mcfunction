/execute run scoreboard objectives add tntTimer dummy;
/execute run scoreboard objectives add tntRemain dummy;

/execute run scoreboard players set @a tntTimer 0;
/execute run scoreboard players set @a tntRemain 300;

/execute at @a run setblock ~ ~-50 ~ minecraft:repeating_command_block[facing=up]{Command:"execute as @a run scoreboard players add @s tntTimer 1",auto:1b};
/execute at @a run setblock ~ ~-49 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players set @s tntRemain 300",auto:1b};
/execute at @a run setblock ~ ~-48 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players operation @s tntRemain -= @s tntTimer",auto:1b};
/execute at @a run setblock ~ ~-47 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run title @s actionbar {\"text\":\"Next TNT in: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"tntRemain\"}}]}",auto:1b};
/execute at @a run setblock ~ ~-46 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tntTimer=250}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1",auto:1b};
/execute at @a run setblock ~ ~-45 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tntTimer=260}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5",auto:1b};
/execute at @a run setblock ~ ~-44 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tntTimer=270}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1",auto:1b};
/execute at @a run setblock ~ ~-43 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tntTimer=280}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5",auto:1b};
/execute at @a run setblock ~ ~-42 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tntTimer=290}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1",auto:1b};
/execute at @a run setblock ~ ~-41 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tntTimer=300}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 2",auto:1b};
/execute at @a run setblock ~ ~-40 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tntTimer=300..}] at @s run summon minecraft:tnt ~ ~ ~ {Fuse:80}",auto:1b};
/execute at @a run setblock ~ ~-39 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tntTimer=300..}] run scoreboard players set @s tntTimer 0",auto:1b};



/tellraw @a ["",{"text":"MCSR Rankeada mas...","bold":true,"color":"green"},{"text":"\n"},{"text":"Uma TNT Spawna a cada 15 segundos","color":"red"}];