extends Control


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_Replay_pressed():
	Global.score = 0
	get_tree().change_scene("res://Maze/Maze.tscn")

func _on_Quit_pressed():
	queue_free()
	get_tree().quit()
