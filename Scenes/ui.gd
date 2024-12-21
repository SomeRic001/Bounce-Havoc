extends CanvasLayer
@onready var mn = $"../GameMusic"
func _ready():
	$PauseMenu.hide()

func _on_pause_pressed():
	
	$PauseMenu.show()
	get_tree().paused = true


func _on_resume_pressed():
	$PauseMenu.hide()
	get_tree().paused = false

func _on_retry_pressed():
	get_tree().paused = false
	var curr_scn = get_tree().current_scene.scene_file_path
	get_tree().change_scene_to_file(curr_scn)

func _on_m_enu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")


func _on_vol_toggled(toggled_on):
	AudioServer.set_bus_mute(0,toggled_on)
