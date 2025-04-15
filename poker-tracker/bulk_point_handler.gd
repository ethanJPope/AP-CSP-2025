extends TextEdit

var Number = 1000
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Submit Points"):
		Global.Points = int($".".text)
