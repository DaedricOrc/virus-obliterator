extends Area2D

@export var speed:int = 10
@onready var player_laser_scene = preload("res://scenes/player_laser.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("player_down"):
		position.y += speed
	elif Input.is_action_pressed("player_left"):
		position.x -= speed
	elif Input.is_action_pressed("player_right"):
		position.x += speed
	elif Input.is_action_pressed("player_up"):
		position.y -= speed
		
	position.x = clampi(position.x, 19, 1133)
	position.y = clampi(position.y, 25, 623)

	if Input.is_action_pressed("player_fire"):
		var player_laser = player_laser_scene.instantiate()
		player_laser.position = position
		get_parent().add_child(player_laser)
