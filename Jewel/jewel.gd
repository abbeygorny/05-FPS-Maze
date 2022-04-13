extends Area


var score = 0
func change_score(s):
	score += s
	emit_signal("score_changed")


var _score_changed = Global.connect("score_changed",self,"_on_score_changed")	
func _on_score_changed():
	$Score.text = "Score: " + str(Global.score)
	


var sound = get_node_or_null("Jewel")
func _on_jewel_body_entered(body):
	if body.name == "Player":
		score += 100
	if sound != null:
		sound.playing = true
	var exit = get_node_or_null("/root/Game/Maze/Exit")
	if exit != null:
		exit.unlock()
	queue_free()

