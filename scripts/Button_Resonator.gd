extends OptionButton

signal resonator_instrument_changed

func _ready():
	text = str("Resonator: %s" % [get_item_text(0)])

func _on_Button_Resonator_item_selected(ID):
	text = str("Resonator: %s" % [get_item_text(ID)])
	emit_signal("resonator_instrument_changed", get_item_text(ID).to_lower())
