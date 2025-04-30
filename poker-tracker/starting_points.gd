extends Node2D



func _on_texture_button_pressed() -> void:
	Global.Player1Points = int($TextEdit.text)
	Global.Player2Points = int($TextEdit.text)
	Global.Player3Points = int($TextEdit.text)
	Global.Player4Points = int($TextEdit.text)
	Global.Player5Points = int($TextEdit.text)
	Global.Player6Points = int($TextEdit.text)
	Global.Player7Points = int($TextEdit.text)
	Global.Player8Points = int($TextEdit.text)
	get_tree().change_scene_to_file("res://Main.tscn")
