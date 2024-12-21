extends CanvasLayer

func _ready():
	$GameMusic.play()

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")


func _on_exit_pressed():
	get_tree().quit()


func _on_options_pressed():
	get_tree().change_scene_to_file("res://Scenes/options.tscn")


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://Scenes/Credits.tscn")
