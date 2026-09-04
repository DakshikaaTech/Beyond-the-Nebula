extends Node2D

@onready var spawn_timer = $SpawnTimer
@onready var spawn_point = $Marker2D

var cactus_scenes = [
	preload("res://Scenes/cactus.tscn")
]

func _ready() -> void:
	# Connect the timeout signal
	spawn_timer.timeout.connect(_on_spawn_timer_timeout)
	
	# If Autostart is unchecked in the inspector, uncomment this line:
	# start_spawn_timer()

func _on_spawn_timer_timeout() -> void:
	spawn_cactus()
	start_spawn_timer()

func spawn_cactus() -> void:
	var random_cactus_scene = cactus_scenes.pick_random()
	var cactus = random_cactus_scene.instantiate()
	cactus.position = spawn_point.position
	
	# Fallback check to ensure the main scene is valid
	var current_scene = get_tree().current_scene
	if current_scene:
		current_scene.add_child(cactus)
	else:
		print("Error: Current scene is null!")

func start_spawn_timer() -> void:
	spawn_timer.wait_time = randf_range(2.0, 4.5)
	spawn_timer.start()
