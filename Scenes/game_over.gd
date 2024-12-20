extends CanvasLayer


func _on_re_pressed():
	Engine.time_scale=1
	var curr_scn = get_tree().current_scene.scene_file_path
	get_tree().change_scene_to_file(curr_scn)
	
func _on_m_enu_pressed():
	Engine.time_scale=1
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")
