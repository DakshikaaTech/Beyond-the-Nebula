extends CharacterBody2D

# Make this number more negative to jump higher (e.g., -450.0)
const JUMP_VELOCITY = -650.0
const SPEED = 300.0
@onready var sprite = $Sprite2D
@onready var themed_timer: Node2D = $"../themed_timer"
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $"../AudioStreamPlayer2D"
@onready var audio_stream_player_2d_2: AudioStreamPlayer2D = $"../AudioStreamPlayer2D2"
var timer_end = false

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		audio_stream_player_2d.play()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func _ready() -> void:
	audio_stream_player_2d_2.play()
	await themed_timer.Timer(15.0)
	timer_end = true # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if timer_end:
		get_tree().change_scene_to_file("res://Scenes/level_scene.tscn")
			

		
func die():
	Global.lives-=1
	Global.minigames_done -= 1
	print("DINO DIED!")
	get_tree().change_scene_to_file("res://Scenes/level_scene.tscn")	
	
