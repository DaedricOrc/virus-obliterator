extends Area2D

@export var speed: int = 4

@onready var enemy_laser_scene = preload("res://scenes/virus_bombers_bomb.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= speed


func _on_timer_timeout() -> void:
	var enemy_laser = enemy_laser_scene.instantiate()
	enemy_laser.position = position
	get_parent().add_child(enemy_laser)
