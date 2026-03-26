extends Node2D

@onready var enemy_scene = preload("res://scenes/virus_bomber.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_virus_reinforcements_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	enemy.position.x = 1173
	enemy.position.y = randi_range(21, 628)
	add_child(enemy)
