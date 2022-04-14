extends Area

signal score_changed

func change_score(s):
	Global.score += s
	emit_signal("score_changed")

var _score_changed = connect("score_changed",self,"_on_score_changed")	

func _on_score_changed():
	var Score = get_node_or_null("/root/Game/Score")
	if Score != null:
		Score.text = "Score: " + str(Global.score)	


func _on_jewel_body_entered(body):
	var sound = get_node_or_null("/root/Game/Jewel")
	if body.name == "Player":
		change_score(100)
	if sound != null:
		sound.playing = true
	var exit = get_node_or_null("/root/Game/Maze/Exit")
	if exit != null:
		exit.unlock()
	queue_free()

