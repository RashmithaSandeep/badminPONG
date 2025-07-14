extends CharacterBody2D

var speed = 400
var direction = Vector2.RIGHT

func _ready():
	add_to_group("ball")
	reset_ball()

func reset_ball():
	position = get_viewport_rect().size / 2
	direction = Vector2.RIGHT.rotated(randf_range(-0.5, 0.5))
	velocity = direction * speed

func _physics_process(delta):
	var collision = move_and_collide(direction * speed * delta)
	if collision:
		direction = direction.bounce(collision.get_normal())
