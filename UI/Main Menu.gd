extends Control


func _ready():
	pass


func _on_Play_pressed():
	get_tree().change_scene("res://Maze/Maze.tscn")


func _on_Quit_pressed():
	queue_free()
	get_tree().change_scene("res://UI/Game Over.tscn")
