extends Node

const TRAVEL_FRUIT = preload("uid://djxu0ksynotga")
@onready var spawner_timer: Timer = $SpawnerTimer

var spawn_zones
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_zones = $"Spawn Zones".get_children()
	var fruit = TRAVEL_FRUIT.instantiate()
	fruit.player =$"../player" 
	fruit.gamemanager = $"../gamemanager4"
	
	add_child(fruit)
	fruit.global_position = $"Permanent Zone/1".global_position
	spawner_timer.start(2)
	
	
func spawn_fruit():
	pass
	var fruit = TRAVEL_FRUIT.instantiate()
	fruit.player =$"../player" 
	fruit.gamemanager = $"../gamemanager4"
	
	add_child(fruit)
	var spawnPosition = spawn_zones[randi_range(0,len(spawn_zones))-1].global_position
	fruit.global_position = spawnPosition
	print("Spawned at")
	print(spawnPosition)
	#fruit.connect(eaten)
	


func _on_spawner_timer_timeout() -> void:
	spawn_fruit()
