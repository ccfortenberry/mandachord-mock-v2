extends OptionButton

signal instrument_changed

func _ready():
	text = str("Mallets: %s" % [get_item_text(0)])

func _on_Button_Mallet_item_selected(ID):
	text = str("Mallets: %s" % [get_item_text(ID)])
	emit_signal("instrument_changed", get_item_text(ID).to_lower())
