extends Button

func _ready() -> void:
	# 1. Create the custom style box
	var flat_style = StyleBoxFlat.new()
	
	# 2. Change the color (e.g., Color.RED, Color.BLUE, Color.GREEN)
	flat_style.bg_color = Color.MEDIUM_PURPLE 
	
	# 3. Keep the corners rounded
	flat_style.set_corner_radius_all(25) 
	
	# 4. Apply it to the button states
	add_theme_stylebox_override("normal", flat_style)
	add_theme_stylebox_override("hover", flat_style)
	add_theme_stylebox_override("pressed", flat_style)
