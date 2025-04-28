extends Node2D

func _ready() -> void:
	if Global.Players == 2:
		$P3.hide()
		$P4.hide()
		$P5.hide()
		$P6.hide()
		$P7.hide()
		$P8.hide()
	elif Global.Players == 3:
		$P4.hide()
		$P5.hide()
		$P6.hide()
		$P7.hide()
		$P8.hide()
	elif Global.Players == 4:
		$P5.hide()
		$P6.hide()
		$P7.hide()
		$P8.hide()
	elif Global.Players == 5:
		$P6.hide()
		$P7.hide()
		$P8.hide()
	elif Global.Players == 6:
		$P7.hide()
		$P8.hide()
	elif Global.Players == 7:
		$P8.hide()
