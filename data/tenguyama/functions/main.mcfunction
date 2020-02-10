# プレイヤーのtenguyamaスコアが0のとき、tenguyama:is_teki に合致したら、そのとき乗ってる馬のAttributesを表示する
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s ["------"]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"nbt": "RootVehicle.Entity.CustomName", "entity": "@s", "interpret": true, "color": "green"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"nbt": "RootVehicle.Entity.Attributes[0].Name", "entity": "@s", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.Attributes[0].Base", "entity": "@s", "color": "yellow"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"nbt": "RootVehicle.Entity.Attributes[1].Name", "entity": "@s", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.Attributes[1].Base", "entity": "@s", "color": "yellow"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"nbt": "RootVehicle.Entity.Attributes[2].Name", "entity": "@s", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.Attributes[2].Base", "entity": "@s", "color": "yellow"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"nbt": "RootVehicle.Entity.Attributes[3].Name", "entity": "@s", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.Attributes[3].Base", "entity": "@s", "color": "yellow"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"nbt": "RootVehicle.Entity.Attributes[4].Name", "entity": "@s", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.Attributes[4].Base", "entity": "@s", "color": "yellow"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"nbt": "RootVehicle.Entity.Attributes[5].Name", "entity": "@s", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.Attributes[5].Base", "entity": "@s", "color": "yellow"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"nbt": "RootVehicle.Entity.Attributes[6].Name", "entity": "@s", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.Attributes[6].Base", "entity": "@s", "color": "yellow"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"nbt": "RootVehicle.Entity.Attributes[7].Name", "entity": "@s", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.Attributes[7].Base", "entity": "@s", "color": "yellow"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s ["------"]
# プレイヤーのtenguyamaスコアを1にする（上記が実行されなくなる）
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run scoreboard players set @s tenguyama 1

# 馬に乗ってない人がいたら、その人のtenguyamaスコアを0にする
execute as @a[predicate=!tenguyama:is_teki] if score @s tenguyama matches 1 run scoreboard players set @s tenguyama 0