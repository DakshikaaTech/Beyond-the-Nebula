extends Sprite2D

# Adjust this value in the Inspector to control speed
@export var rotation_speed: float = 2.0 

func _process(delta: float) -> void:
	# Rotate using radians (TAU equals 360 degrees)
	rotation += rotation_speed * delta
	
	# Optional: Keep the variable from growing into infinity
	if rotation >= TAU:
		rotation -= TAU
