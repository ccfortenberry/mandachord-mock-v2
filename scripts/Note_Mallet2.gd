extends Control

func _ready():
	get_parent().get_node("../Button_Mallet").connect("instrument_changed", self, "_on_mallets_changed")

#func _process(delta):
#	pass

func _on_mallets_changed(instrument):
	$Sound.stream = load("res://assets/instruments/"+instrument+"/"+instrument+"_mal_2.wav")
		

func _on_Body_body_entered(body):
	if $"Body/Note".pressed:
		$Sound.play()
