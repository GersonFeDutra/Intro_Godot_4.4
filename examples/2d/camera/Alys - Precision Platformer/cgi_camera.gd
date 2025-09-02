extends Camera2D


func _on_body_entered(_body: PhysicsBody2D) -> void:
	print(_body)
	$AnimationPlayer.play(&"play")


func _on_body_exited(_body: PhysicsBody2D) -> void:
	print(_body)
	$AnimationPlayer.play_backwards(&"play")
