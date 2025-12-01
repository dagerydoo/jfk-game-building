extends Node2D

func _on_right_area_2d_body_entered(body: Node2D) -> void:
	if body.has_meta("is_ball") and body.get_meta("is_ball"):
		print("right wall hit")

func _on_left_area_2d_body_entered(body: Node2D) -> void:
	if body.has_meta("is_ball") and body.get_meta("is_ball"):
		print("left wall hit")
