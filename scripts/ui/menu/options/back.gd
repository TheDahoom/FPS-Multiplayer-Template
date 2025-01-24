extends Button

@onready var options_menu = $"../../.."


func _pressed() -> void:
	options_menu.hide()
