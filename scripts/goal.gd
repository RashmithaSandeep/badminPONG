extends Area2D

@export var player_id = 2

func _on_body_entered(body):
	if body.name == "ball" :
		get_node("root/game").add_score(player_id)
		body.position = Vector2(330, 180)
		
