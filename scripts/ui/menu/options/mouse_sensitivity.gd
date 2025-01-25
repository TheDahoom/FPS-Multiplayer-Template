extends HSlider


func _on_value_changed(sensitivity_value: float) -> void:
	Global.sensitivity = sensitivity_value
