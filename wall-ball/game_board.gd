extends Node2D

@onready var left_paddle = $LeftPaddle

@export var paddle_speed = 600.0

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("left_paddle_up"):
		left_paddle.position += paddle_speed * Vector2.UP * delta
	if Input.is_action_pressed("left_paddle_down"):
		left_paddle.position += paddle_speed * Vector2.DOWN * delta
