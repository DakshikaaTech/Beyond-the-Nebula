extends TextureButton
@onready var parent = $".."
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $"../AudioStreamPlayer2D"




func _on_pressed() -> void:
	audio_stream_player_2d.play()
	hide()
	parent.buttons_pressed += 1 # Replace with function body.
