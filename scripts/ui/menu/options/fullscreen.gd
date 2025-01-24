extends CheckButton

func _on_options_button_toggled(toggled_on: bool) -> void:
	if toggled_on:
		grab_focus()


func _toggled(toggled_on: bool) -> void:
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
