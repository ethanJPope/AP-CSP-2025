extends AnimatableBody2D

var Direction = "Right"

func _process(float) -> void:
	
	# Handles attacking
	if Input.is_action_just_pressed("Attack"):
		if Direction == "Left":
			$AnimationTree/AnimationPlayer.play("Attack Left")
		elif Direction == "Right":
			$AnimationTree/AnimationPlayer.play("Attack Right")
		# Switches the direction the pencil is facing, as well as the attacking direction. Works for Left and Right.
	if Input.is_action_just_pressed("Move_Left"):
		Direction = "Left"
		$AnimatedSprite2D.set_frame(0)
	if Input.is_action_just_pressed("Move_Right"):
		Direction = "Right"
		$AnimatedSprite2D.set_frame(1)
