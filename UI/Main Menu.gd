extends Control


func _ready():
	pass


func _on_Play_pressed():
	var _scene = get_tree().change_scene("res://Maze/Maze.tscn")


func _on_Quit_pressed():
	queue_free()
	var _scene = get_tree().change_scene("res://UI/Game Over.tscn")
