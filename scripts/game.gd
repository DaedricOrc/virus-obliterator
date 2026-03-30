extends Node2D

@onready var enemy_scene = preload("res://scenes/virus_bomber.tscn")
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$ui/Score.text = "Score: " + str(score)


func _on_virus_reinforcements_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	enemy.position.x = 1173
	enemy.position.y = randi_range(21, 628)
	add_child(enemy)
	enemy.enemy_killed.connect(on_enemy_killed)
func on_enemy_killed():
	score += 500
