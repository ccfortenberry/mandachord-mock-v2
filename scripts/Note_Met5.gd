extends Control

func _ready():
	get_parent().get_node("../Button_Metronome").connect("metronome_instrument_changed", self, "_on_metronome_changed")

#func _process(delta):
#	pass

func _on_metronome_changed(instrument):
	$Sound.stream = load("res://assets/instruments/"+instrument+"/"+instrument+"_met_5.wav")

func _on_Body_body_entered(body):
	if $"Body/Note".pressed:
		$Sound.play()
