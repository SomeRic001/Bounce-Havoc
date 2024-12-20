extends CanvasLayer

func _ready():
	$GameMusic.play()

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")
	print($Elements/HBoxContainer/Play.text)


func _on_exit_pressed():
	get_tree().quit()
