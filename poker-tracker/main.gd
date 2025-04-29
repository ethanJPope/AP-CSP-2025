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



# SIGNALS

# Name setters
func _on_player_name_text_changed():
	Global.Player1Name = $"P1/Player Name".text
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
	print(Global.Points)
