extends CharacterBody2D

var speed = 300
var direction = Vector2.RIGHT

func _physics_process(delta):
	var collision = move_and_collide(direction * speed * delta)
	if collision:
		direction = direction.bounce(collision.get_normal())
