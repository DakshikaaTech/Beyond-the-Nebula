extends Area2D

@export var speed := 350

func _ready():
	body_entered.connect(_on_body_entered)
	
func _process(delta):
	position.x -= speed * delta


func _on_body_entered(body):
	print("HIT!!!")
	if body.is_in_group("player"):
		body.die()
	
	# Replace with function body.
