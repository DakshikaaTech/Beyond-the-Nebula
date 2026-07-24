extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	main_buttons.visible=true
	options.visible=false
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
@onready var main_buttons: VBoxContainer = $MainButtons
@onready var options: Panel = $Options



func _on_button_pressed() -> void:
	pass



func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_scene.tscn")


	
func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_settings_pressed() -> void:
	print("Settings pressed")
	main_buttons.visible=false
	options.visible=true
	


func _on_back_pressed() -> void:
	_ready() # Replace with function body.

# Replace with function body.
