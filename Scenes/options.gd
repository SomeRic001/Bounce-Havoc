extends CanvasLayer

@onready var anim_player: AnimationPlayer = $AnimationPlayer

func _ready():
	$GameMusic.play()

func _on_volume_value_changed(value):
	AudioServer.set_bus_volume_db(0,value)

func _on_mute_toggled(toggled_on):
	AudioServer.set_bus_mute(0,toggled_on)


func _on_resolution_item_selected(index):
	match index:
		0:
			DisplayServer.window_set_size(Vector2i(640,480))
		1:
			DisplayServer.window_set_size(Vector2i(1152,640))
		2:
			DisplayServer.window_set_size(Vector2i(1280,720))
		3:
			DisplayServer.window_set_size(Vector2i(1920,1080))
		4:
			DisplayServer.window_set_size(Vector2i(2560,1440))


func _on_back_pressed():
	anim_player.play("Fadein")
	await get_tree().create_timer(0.8).timeout
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")
