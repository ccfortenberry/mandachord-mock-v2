extends KinematicBody2D

export (float) var speed = 1.0

var screen_size
var velocity = Vector2(1,0)

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	if $"/root/Mandachord_Main/Button_Play".pressed:
		velocity = velocity.normalized() * speed
		position += velocity * delta
		position.x = clamp(position.x, 0, screen_size.x)