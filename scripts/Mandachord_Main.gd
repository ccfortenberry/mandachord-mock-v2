extends Node2D

func _ready():
	$Button_Mallet.connect("instrument_changed", self, "_on_mallets_changed")

func _on_mallets_changed(instrument):
	$"Note_Mallet1/Sound".stream = load("res://assets/instruments/"+instrument+"/"+instrument+"_mal_1.wav")
#	for i in range(64*3):
#		$"root/Mandachord_Main/Note_Mallet1".Sound.set("res://assets/instruments/"+instrument+"/"+instrument+"_mal_1.wav")