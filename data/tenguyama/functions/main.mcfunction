# プレイヤーのtenguyamaスコアが0のとき、tenguyama:is_teki に合致したら、そのとき乗ってる馬のAttributesを表示する
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s ["------"]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"text": "Name", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.CustomName", "entity": "@s", "interpret": true, "color": "green"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"text": "Health", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.Attributes[{Name:generic.maxHealth}].Base", "entity": "@s", "color": "yellow"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"text": "Speed", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.Attributes[{Name:generic.movementSpeed}].Base", "entity": "@s", "color": "yellow"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"text": "Jump", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.Attributes[{Name:horse.jumpStrength}].Base", "entity": "@s", "color": "yellow"}]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s ["------"]
# プレイヤーのtenguyamaスコアを1にする（上記が実行されなくなる）
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run scoreboard players set @s tenguyama 1

# 馬に乗ってない人がいたら、その人のtenguyamaスコアを0にする
execute as @a[predicate=!tenguyama:is_teki] unless score @s tenguyama matches 0 run scoreboard players set @s tenguyama 0