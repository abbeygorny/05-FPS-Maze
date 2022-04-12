extends Area

var score = 0
func update_score():
		Global.score += 100
		$Score.text = "Score" + str(Global.score)
		
func _on_jewel_body_entered(body):
	if body.name == "Player":
		score += 100
		var exit = get_node_or_null("/root/Game/Maze/Exit")
		if exit != null:
			exit.unlock()
			queue_free()
		
