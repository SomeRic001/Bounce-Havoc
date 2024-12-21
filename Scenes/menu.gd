extends CanvasLayer

@onready var anim_player: AnimationPlayer = $AnimationPlayer
func _ready():
	$GameMusic.play()

func _on_play_pressed():
	anim_player.play("Fadein")
	await get_tree().create_timer(0.8).timeout
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")

func _on_exit_pressed():
	anim_player.play("Fadein")
	await get_tree().create_timer(0.8).timeout
	get_tree().quit()

func _on_options_pressed():
	anim_player.play("Fadein")
	await get_tree().create_timer(0.8).timeout
	get_tree().change_scene_to_file("res://Scenes/options.tscn")

func _on_credits_pressed():
	anim_player.play("Fadein")
	await get_tree().create_timer(0.8).timeout
	get_tree().change_scene_to_file("res://Scenes/Credits.tscn")
