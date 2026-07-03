extends Node2D
@onready var godot_container: HBoxContainer
@onready var godot: TextureRect = $GodotContainer/Godot
@onready var godot_2: TextureRect = $GodotContainer/Godot2
@onready var godot_3: TextureRect = $GodotContainer/Godot3
@onready var godot_4: TextureRect = $GodotContainer/Godot4
@onready var godot_5: TextureRect = $GodotContainer/Godot5
@onready var level: RichTextLabel = $Level
@onready var timer: RichTextLabel = $Timer

var time

func _ready() -> void:
	await Timer(5.0)
	
	if Global.minigames_done<3:
		Global.minigames_done += 1
		get_tree().change_scene_to_file("res://Scenes/minigame" + str(Global.minigames_done) + ".tscn")
# Called when the node enters the scene tree for the first time.
	else:
		get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match Global.lives:
		4:
			godot.hide()
		3:
			godot.hide()
			godot_2.hide()
		2:
			godot.hide()
			godot_2.hide()
			godot_3.hide()
		1:
			godot.hide()
			godot_2.hide()
			godot_3.hide()
			godot_4.hide()
		0:
			godot_container.hide()
	timer.text = str(time)
	level.text="Level" + str("Global.minigames_done")

func Timer(start_time: float):
	time=start_time
	
	while time>0.0:
		await wait(0.1)
		time-=0.1
	
	return
	
func wait(seconds:float) -> void:
	await get_tree().create_timer(seconds).timeout
		
	
