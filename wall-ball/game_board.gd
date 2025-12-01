extends Node2D

@onready var ball = $Ball
@onready var left_paddle = $LeftPaddle
@onready var right_paddle = $RightPaddle

@onready var ball_starting_position = ball.position
@onready var ball_linear_velocity = ball.linear_velocity

@export var paddle_speed = 600.0

func _ready() -> void:
	_reset_ball()

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("left_paddle_up"):
		left_paddle.position += paddle_speed * Vector2.UP * delta
	if Input.is_action_pressed("left_paddle_down"):
		left_paddle.position += paddle_speed * Vector2.DOWN * delta
	if Input.is_action_pressed("right_paddle_up"):
		right_paddle.position += paddle_speed * Vector2.UP * delta
	if Input.is_action_pressed("right_paddle_down"):
		right_paddle.position += paddle_speed * Vector2.DOWN * delta


func _reset_ball() -> void:
	if ball:
		ball.queue_free()
	ball = preload("res://ball.tscn").instantiate()
	ball.global_position = ball_starting_position
	var starting_angle = randf_range(-PI * 0.25, PI * 0.25)
	if randf() < 0.5:
		starting_angle += PI
	ball.linear_velocity = ball_linear_velocity.rotated(starting_angle)
	add_child.call_deferred(ball)
