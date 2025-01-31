extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var CameraDirection = "Right"
var CameraMoving = false

func LookaheadTimer():
	CameraMoving = false

func _physics_process(delta: float) -> void:
	print((get_global_position()))
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	# Handles the Camera lookahead
	if Input.is_action_just_pressed("Move_Right"):
		$Camera2D/Timer.start()
		CameraMoving = true
		CameraDirection = "Right"
		if CameraMoving == false:
			$Camera2D/AnimationPlayer.play("Camera Offset Right")
		
	elif Input.is_action_just_pressed("Move_Left"):
		$Camera2D/Timer.start()
		CameraMoving = true
		CameraDirection = "Left"
		if CameraMoving == false:
			$Camera2D/AnimationPlayer.play("Camera Offset Left")
	

	var direction := Input.get_axis("Move_Left", "Move_Right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
