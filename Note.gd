extends Node2D

export (bool) var enabled = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Note_Mallet1_body_entered(body):
	if enabled:
		$Sound.play()


func _on_Note_Mallet1_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		if enabled:
			enabled = false
			$Body.color = Color(91.0/255.0,91.0/255.0,91.0/255.0)
		else:
			enabled = true
			$Body.color = Color(124.0/255.0,124.0/255.0,124.0/255.0)
