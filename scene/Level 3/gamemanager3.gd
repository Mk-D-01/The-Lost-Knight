extends Node
var max_score = 6
var score = 0
@onready var timer = $"../Timer"
@export var delay_time: float = 3.0
func add_coin3():
	pass
	score+= 1
	print(score)
	if score == max_score:
		
		get_tree().change_scene_to_file("res://scene/Level 4/level_4.tscn")
		


	
	
