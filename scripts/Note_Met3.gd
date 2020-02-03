extends Control

func _ready():
	if get_parent().get_node("../Buttons_Container/Button_Metronome").connect("metronome_instrument_changed", self, "_on_metronome_changed"):
		print("ERROR: Signal connection failed in Note Metronome 3!")

#func _process(delta):
#	pass

func _on_metronome_changed(instrument):
	$Sound.stream = load("res://assets/instruments/"+instrument+"/"+instrument+"_met_3.wav")

func _on_Body_body_entered(body):
	if $"Body/Note".pressed:
		$Sound.play()
