extends CanvasLayer
func _ready():
	var curr_scn = get_tree().current_scene.scene_file_path
	if curr_scn.to_int() ==1:
		$Label2.hide()
	elif curr_scn.to_int() ==2:
		$Label2.show()
		$Label.hide()
		$Line2D.hide()
		$Line2D3.hide()
		$Line2D2.hide()
	await get_tree().create_timer(4).timeout
	$Line2D.hide()
	$Line2D3.hide()
	$Line2D2.hide()
	
