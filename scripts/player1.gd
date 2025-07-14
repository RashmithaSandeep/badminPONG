extends CharacterBody2D

var speed = 400

func _physics_process(delta):
	var direction = Input.get_axis("p1_up", "p1_down")
	velocity.y = direction * speed
	move_and_slide()
