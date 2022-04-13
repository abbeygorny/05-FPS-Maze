extends Control


func _ready():
	pass


func _on_Replay_pressed():
	get_tree().change_scene("res://Maze/Maze.tscn")

func _on_Quit_pressed():
	queue_free()
	get_tree().quit()
