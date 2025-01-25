extends Label

var fps_bool := false
var ping_bool := false

func _process(_delta: float) -> void:
	var fps: String = "FPS " + str(Engine.get_frames_per_second()) + "\n" if fps_bool else ""
	var ping: String = "PING " +  str(ENetPacketPeer.PeerStatistic.PEER_ROUND_TRIP_TIME) if ping_bool else ""
	text = fps + ping

func _on_fps_counter_toggled(toggled_on: bool) -> void:
	if toggled_on:
		fps_bool = true
	else:
		fps_bool = false

func _on_ping_toggled(toggled_on: bool) -> void:
	if toggled_on:
		ping_bool = true
	else:
		ping_bool = false
