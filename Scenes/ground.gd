extends Area2D

@export var speed := 150.0

func _process(delta: float) -> void:
	$Sprite2D.region_rect.position.x -= speed * delta
