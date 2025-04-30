extends Node2D

# The numbers that handle the points in bulk; work with the add and subtract chips
var Player1PointHandler
var Player2PointHandler
var Player3PointHandler
var Player4PointHandler
var Player5PointHandler
var Player6PointHandler
var Player7PointHandler
var Player8PointHandler

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



# SIGNALS

# Name setters
func _on_player_name_text_changed():
	Global.Player1Name = str($"P1/Player Name".text)
	print(Global.Points)

func _on_player_2_name_text_changed():
	Global.Player2Name = $"P2/Player 2 Name".text

func _on_player_3_name_text_changed():
	Global.Player3Name = $"P3/Player 3 Name".text

func _on_player_4_name_text_changed():
	Global.Player4Name = $"P4/Player 4 Name".text

func _on_player_5_name_text_changed():
	Global.Player5Name = $"P5/Player 5 Name".text

func _on_player_6_name_text_changed():
	Global.Player6Name = $"P6/Player 6 Name".text

func _on_player_7_name_text_changed():
	Global.Player7Name = $"P7/Player 7 Name".text
	
func _on_player_8_name_text_changed():
	Global.Player8Name = $"P8/Player 8 Name".text

func _process(delta: float) -> void:
	$P1/Label.text = str(Global.Player1Points)
	$"P2/Label 2".text = str(Global.Player2Points)
	$"P3/Label 3".text = str(Global.Player3Points)
	$"P4/Label 4".text = str(Global.Player4Points)
	$"P5/Label 5".text = str(Global.Player5Points)
	$"P6/Label 6".text = str(Global.Player6Points)
	$"P7/Label 7".text = str(Global.Player7Points)
	$"P8/Label 8".text = str(Global.Player8Points)

	# The bulk point handler
	Player1PointHandler = int($"P1/Bulk Point Handler".text)
	Player2PointHandler = int($"P2/Bulk Point Handler 2".text)
	Player3PointHandler = int($"P3/Bulk Point Handler 3".text)
	Player4PointHandler = int($"P4/Bulk Point Handler 4".text)
	Player5PointHandler = int($"P5/Bulk Point Handler 5".text)
	Player6PointHandler = int($"P6/Bulk Point Handler 6".text)
	Player7PointHandler = int($"P7/Bulk Point Handler 7".text)
	Player8PointHandler = int($"P8/Bulk Point Handler 8".text)

	$Pot.text = str(Global.Pot)

# Handles the points using the variables above
func _on_add_chips_pressed() -> void:
	if Global.Player1Points >= Player1PointHandler:
		Global.Player1Points -= Player1PointHandler
		Global.Pot += Player1PointHandler
	elif Global.Player1Points <= Player1PointHandler:
		pass

func _on_subtract_chips_pressed() -> void:
	if Global.Player1Points >= Player1PointHandler:
		Global.Player1Points += Player1PointHandler
		Global.Pot -= Player1PointHandler
	elif Global.Pot <= Player1PointHandler:
		Global.Pot -= Player1PointHandler
		Global.Player1Points += Player1PointHandler


func _on_add_chips_2_pressed() -> void:
	if Global.Player2Points >= Player2PointHandler:
		Global.Player2Points -= Player2PointHandler
		Global.Pot += Player2PointHandler
	elif Global.Player2Points <= Player2PointHandler:
		pass


func _on_subtract_chips_2_pressed() -> void:
	if Global.Player2Points >= Player2PointHandler:
		Global.Player2Points += Player2PointHandler
		Global.Pot -= Player2PointHandler
	elif Global.Player2Points <= Player2PointHandler:
		Global.Pot -= Player2PointHandler
		Global.Player2Points += Player2PointHandler


func _on_add_chips_3_pressed() -> void:
	if Global.Player3Points >= Player3PointHandler:
		Global.Player3Points -= Player3PointHandler
		Global.Pot += Player3PointHandler
	elif Global.Player3Points <= Player3PointHandler:
		pass


func _on_subtract_chips_3_pressed() -> void:
	if Global.Player3Points >= Player3PointHandler:
		Global.Player3Points += Player3PointHandler
		Global.Pot -= Player3PointHandler
	elif Global.Player3Points <= Player3PointHandler:
		Global.Pot -= Player3PointHandler
		Global.Player3Points += Player3PointHandler


func _on_add_chips_4_pressed() -> void:
	if Global.Player4Points >= Player4PointHandler:
		Global.Player4Points -= Player4PointHandler
		Global.Pot += Player4PointHandler
	elif Global.Player4Points <= Player4PointHandler:
		pass


func _on_subtract_chips_4_pressed() -> void:
	if Global.Player4Points >= Player4PointHandler:
		Global.Player4Points += Player4PointHandler
		Global.Pot -= Player4PointHandler
	elif Global.Player4Points <= Player4PointHandler:
		Global.Pot -= Player4PointHandler
		Global.Player4Points += Player4PointHandler


func _on_add_chips_5_pressed() -> void:
	if Global.Player5Points >= Player5PointHandler:
		Global.Player5Points -= Player5PointHandler
		Global.Pot += Player5PointHandler
	elif Global.Player5Points <= Player5PointHandler:
		pass


func _on_subtract_chips_5_pressed() -> void:
	if Global.Player5Points >= Player5PointHandler:
		Global.Player5Points += Player5PointHandler
		Global.Pot -= Player5PointHandler
	elif Global.Player5Points <= Player5PointHandler:
		Global.Pot -= Player5PointHandler
		Global.Player5Points += Player5PointHandler

func _on_add_chips_6_pressed() -> void:
	if Global.Player6Points >= Player6PointHandler:
		Global.Player6Points -= Player6PointHandler
		Global.Pot += Player6PointHandler
	elif Global.Player6Points <= Player6PointHandler:
		pass


func _on_subtract_chips_6_pressed() -> void:
	if Global.Player6Points >= Player6PointHandler:
		Global.Player6Points += Player6PointHandler
		Global.Pot -= Player6PointHandler
	elif Global.Player6Points <= Player6PointHandler:
		Global.Pot -= Player6PointHandler
		Global.Player6Points += Player6PointHandler


func _on_add_chips_7_pressed() -> void:
	if Global.Player7Points >= Player7PointHandler:
		Global.Player7Points -= Player7PointHandler
		Global.Pot += Player7PointHandler
	elif Global.Player7Points <= Player7PointHandler:
		pass

func _on_subtract_chips_7_pressed() -> void:
	if Global.Player7Points >= Player7PointHandler:
		Global.Player7Points += Player7PointHandler
		Global.Pot -= Player7PointHandler
	elif Global.Player7Points <= Player7PointHandler:
		Global.Pot -= Player7PointHandler
		Global.Player7Points += Player7PointHandler


func _on_add_chips_8_pressed() -> void:
	if Global.Player8Points >= Player8PointHandler:
		Global.Player8Points -= Player8PointHandler
		Global.Pot += Player8PointHandler
	elif Global.Player8Points <= Player8PointHandler:
		pass

func _on_subtract_chips_8_pressed() -> void:
	if Global.Player8Points >= Player8PointHandler:
		Global.Player8Points += Player8PointHandler
		Global.Pot -= Player8PointHandler
	elif Global.Player8Points <= Player8PointHandler:
		Global.Pot -= Player8PointHandler
		Global.Player8Points += Player8PointHandler
