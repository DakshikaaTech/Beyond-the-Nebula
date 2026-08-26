extends StaticBody2D

var speed = 400

func _physics_process(delta):
	var input_dir = 0
	if Input.is_action_pressed("ui_left"):
		input_dir -= 1
	if Input.is_action_pressed("ui_right"):
		input_dir += 1
		
	if input_dir != 0:
		var motion = input_dir * speed * delta
		position.x += motion
	else:
		position.x = get_global_mouse_position().x
		
	
		
		
	
		
