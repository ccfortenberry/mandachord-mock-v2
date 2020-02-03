extends Control

func _ready():
	if get_parent().get_node("../Buttons_Container/Button_Mallet").connect("mallets_instrument_changed", self, "_on_mallets_changed"):
		print("ERROR: Signal connection failed in Note Mallet 1!")

#func _process(delta):
#	pass

func _on_mallets_changed(instrument):
	$Sound.stream = load("res://assets/instruments/"+instrument+"/"+instrument+"_mal_1.wav")

func _on_Body_body_entered(body):
	if $"Body/Note".pressed:
		$Sound.play()
