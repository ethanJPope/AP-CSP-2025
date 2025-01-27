extends AnimatableBody2D



func _process(float) -> void:
	if Input.is_action_just_pressed("Attack"):
		print("I am attacking")
		$AnimationPlayer.play("Attack")
	if Input.is_action_just_pressed("Move_Left"):
		$Sprite2D.set_flip_h(1)
	if Input.is_action_just_pressed("Move_Right"):
		$Sprite2D.set_flip_h(0)
