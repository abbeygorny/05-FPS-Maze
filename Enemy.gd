extends Area

func _ready():
	pass


func _on_Enemy_body_entered(body):
	if body.name == "Player":
		queue_free()
