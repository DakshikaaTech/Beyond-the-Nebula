
extends Node2D

@onready var themed_timer: Node2D = $themed_timer
# Add a reference to your Ball node here! 
# (Make sure "Ball" matches the exact name of your ball node in the Scene tree)
@onready var ball: CharacterBody2D = $ball

var buttons_pressed := 0
var timer_end = false

func _ready() -> void:
	await themed_timer.Timer(30.0)
	timer_end = true

func _process(delta: float) -> void:
	# Get the visible screen size height safely
	var screen_height = get_viewport_rect().size.y
	
	# Only trigger when the ball actually drops below the screen floor
	if ball.global_position.y > screen_height + 50:
		Global.lives -= 1
		Global.minigames_done -= 1
		get_tree().change_scene_to_file("res://Scenes/level_scene.tscn")
	
	if timer_end:
		get_tree().change_scene_to_file("res://Scenes/level_scene.tscn")
		
