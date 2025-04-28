extends Node2D

func _process(delta: float) -> void:
	$Label.set_text("Players: " + str(Global.Players))


func _on_add_players_pressed() -> void:
	if Global.Players <= 7:
		Global.Players += 1
	else:
		pass

func _on_subtract_players_pressed() -> void:
	if Global.Players > 2:
		Global.Players -= 1
	else:
		pass


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Main.tscn")
