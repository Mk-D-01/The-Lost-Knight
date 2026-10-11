extends fruit

@onready var eating_sound: AudioStreamPlayer2D = $Eating

#teleport zones(array) should be provided by the 
#game manager 
var zones

func _ready() -> void:
	getZones()
	
func getZones():
	zones = gamemanager.TeleportZones
	
func teleport():
	var teleportPosition = zones[randi_range(0,len(zones))-1].global_position
	player.global_position = teleportPosition
	pass


func _on_body_entered(body: Node2D) -> void:
	eating_sound.play()
	eaten.emit()
	teleport()
	queue_free()
	
