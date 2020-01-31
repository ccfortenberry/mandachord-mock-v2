extends Control

func _ready():
	get_parent().get_node("../Button_Resonator").connect("resonator_instrument_changed", self, "_on_resonator_changed")

#func _process(delta):
#	pass

func _on_resonator_changed(instrument):
	$Sound.stream = load("res://assets/instruments/"+instrument+"/"+instrument+"_res_4.wav")

func _on_Body_body_entered(body):
	if $"Body/Note".pressed:
		$Sound.play()
