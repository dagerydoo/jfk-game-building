extends Node2D

signal ball_hit_left_wall()
signal ball_hit_right_wall()

func _on_right_area_2d_body_entered(body: Node2D) -> void:
	if body.has_meta("is_ball") and body.get_meta("is_ball"):
		ball_hit_right_wall.emit()

func _on_left_area_2d_body_entered(body: Node2D) -> void:
	if body.has_meta("is_ball") and body.get_meta("is_ball"):
		ball_hit_left_wall.emit()
