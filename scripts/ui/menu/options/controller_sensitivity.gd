extends HSlider

func _on_value_changed(controller_sensitivity: float) -> void:
	Global.controller_sensitivity = controller_sensitivity
