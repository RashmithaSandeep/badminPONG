extends CanvasLayer

@onready var player1_score: Label = $HBoxContainer/player1Score
@onready var player2_score: Label = $HBoxContainer/player2Score

func _ready():
	ScoreManager.score_updated.connect(_on_score_updated)

func _on_score_updated(p1_score, p2_score):
	player1_score.text = str(p1_score)
	player2_score.text = str(p2_score)
