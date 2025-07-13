extends Node2D

var scores = [0, 0] 

func add_score(player_id):
	scores[player_id - 1] += 1
	print("Player ", player_id, " scored! ", scores)
