extends Area

var locked  = true
func _ready():
	pass
func unlock():
	locked = false
	
func _on_Exit_body_entered(body):
	if body.name == "Player" and not locked:
		queue_free()
		var _scene = get_tree().change_scene("res://UI/Game Over.tscn")

