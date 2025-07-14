extends Node

var player1_score = 0
var player2_score = 0
signal score_updated(p1_score, p2_score)

func update_score(player: String):
	if player == "player1":
		player1_score += 1
	else:
		player2_score += 1
	emit_signal("score_updated", player1_score, player2_score)

func reset_scores():
	player1_score = 0
	player2_score = 0
	emit_signal("score_updated", 0, 0)
