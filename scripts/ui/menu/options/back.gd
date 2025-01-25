extends Button

@onready var options_menu: PanelContainer = %Options


func _pressed() -> void:
	options_menu.hide()
