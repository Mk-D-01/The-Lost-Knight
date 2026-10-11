extends fruit

@onready var eating_sound: AudioStreamPlayer2D = $Eating

#teleport zones(array) should be provided by the 
#game manager 

@export var target : Marker2D


	
func teleport():
	var teleportPosition
	if target == null:
		teleportPosition = get_tree().reload_current_scene()
	else:	
		teleportPosition = target.global_position
	
		
	player.global_position = teleportPosition
	pass


func _on_body_entered(body: Node2D) -> void:
	eating_sound.play()
	eaten.emit()
	teleport()
	queue_free()
	
