extends Node2D
@onready var themed_timer: Node2D = $themed_timer

var star_collected := 0 
var timer_end = false 

func _ready() -> void:
	await themed_timer.Timer(10.0)
	timer_end = true 

func _process(_delta: float) -> void: 
	if star_collected == 3: 
		if Global.minigames_done > 1: 
			get_tree().change_scene_to_file("res://Scenes/done_screen.tscn") 
		else:
			get_tree().change_scene_to_file("res://Scenes/level_scene.tscn")
		
	
	
	elif timer_end: 
		Global.lives -= 1
		Global.minigames_done -= 1
		get_tree().change_scene_to_file("res://Scenes/level_scene.tscn") 
		


func star_collect() -> void:
	star_collected = star_collected + 1  # Replace with function body.

 # Replace with function body.
