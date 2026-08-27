extends CharacterBody2D

var speed = 500.0

# Reference the audio player node
@onready var bounce_sound: AudioStreamPlayer2D = $BounceSound

func _ready():
	velocity = Vector2(-200, -200).normalized() * speed
	
func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		
		# Play the sound effect!
		bounce_sound.play()
		
		# Optional: Check what it hit (e.g., if you want a different sound for the paddle vs walls)
		# var collider = collision.get_collider()
		# if collider.name == "PlayerPaddle":
		#     print("Hit the paddle!")
