extends Button

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_pressed("pause"):
		grab_focus()
