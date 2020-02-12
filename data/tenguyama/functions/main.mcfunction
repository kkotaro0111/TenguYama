# プレイヤーのtenguyamaスコアが0のとき、tenguyama:is_teki に合致したら、そのとき乗ってる馬のAttributesを表示する
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s ["------"]
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s [{"text": "Name", "color": "red"},{"text": " : "},{"nbt": "RootVehicle.Entity.CustomName", "entity": "@s", "interpret": true, "color": "green"}]

# 体力
execute as @a[predicate=tenguyama:is_teki] store result score @s tenguyamaStatus run data get entity @s RootVehicle.Entity.Attributes[{Name:generic.maxHealth}].Base
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run function tenguyama:show_status/health

# スピード
execute as @a[predicate=tenguyama:is_teki] store result score @s tenguyamaStatus run data get entity @s RootVehicle.Entity.Attributes[{Name:generic.movementSpeed}].Base 10000
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run function tenguyama:show_status/speed

#ジャンプ力
execute as @a[predicate=tenguyama:is_teki] store result score @s tenguyamaStatus run data get entity @s RootVehicle.Entity.Attributes[{Name:horse.jumpStrength}].Base 100
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run function tenguyama:show_status/jump

execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run tellraw @s ["------"]

# プレイヤーのtenguyamaスコアを1にする（上記が実行されなくなる）
execute as @a[predicate=tenguyama:is_teki] if score @s tenguyama matches 0 run scoreboard players set @s tenguyama 1

# 馬に乗ってない人がいたら、その人のtenguyamaスコアを0にする
execute as @a[predicate=!tenguyama:is_teki] unless score @s tenguyama matches 0 run function tenguyama:reset
