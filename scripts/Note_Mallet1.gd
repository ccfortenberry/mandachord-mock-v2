extends Node2D

#export (bool) var enabled = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Note_Mallet1_body_entered(body):
	if $Note.pressed:
		$Sound.play()
