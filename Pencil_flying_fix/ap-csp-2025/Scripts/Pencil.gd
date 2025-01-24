extends AnimatableBody2D



func _process(float) -> void:
	if Input.is_action_just_pressed("Attack"):
		print("I am attacking")
		$AnimationPlayer.play("Attack")
