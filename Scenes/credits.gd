extends CanvasLayer

@onready var anim_player: AnimationPlayer = $AnimationPlayer

func _ready():
	$GameMusic.play()

func _on_back_pressed():
	anim_player.play("Fadein")
	await get_tree().create_timer(0.8).timeout
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")
