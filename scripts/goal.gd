extends Area2D

@export var player_name: String = "player1"

func _on_body_entered(body):
	if body.is_in_group("ball"):
		print("Goal scored by ", player_name)
		ScoreManager.update_score(player_name)
		body.reset_ball()
