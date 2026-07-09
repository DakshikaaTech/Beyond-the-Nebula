extends Node2D

func _on_try_again_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_scene.tscn") # Replace with function body.


func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/title_screen.tscn") # Replace with function body.
