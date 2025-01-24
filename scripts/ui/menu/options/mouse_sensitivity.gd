extends HSlider


func _on_value_changed(value: float) -> void:
	Global.sensitivity = value
