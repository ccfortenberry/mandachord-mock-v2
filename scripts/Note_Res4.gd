extends Control

func _ready():
	if get_parent().get_node("../Buttons_Container/Button_Resonator").connect("resonator_instrument_changed", self, "_on_resonator_changed"):
		print("ERROR: Signal connection failed in Note Resonator 4!")

#func _process(delta):
#	pass

func _on_resonator_changed(instrument):
	$Sound.stream = load("res://assets/instruments/"+instrument+"/"+instrument+"_res_4.wav")

func _on_Body_body_entered(body):
	if $"Body/Note".pressed:
		$Sound.play()
