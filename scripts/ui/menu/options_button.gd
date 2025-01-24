extends Button

@onready var options = $"."

func _on_back_pressed() -> void:
	options.button_pressed = false
	grab_focus()
