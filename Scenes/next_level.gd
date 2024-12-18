extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_next_pressed():
	Engine.time_scale=1
	var curr_scn = get_tree().current_scene.scene_file_path
	var nxt = curr_scn.to_int() +1
	var nxt_scn = "res://Scenes//Level" + str(nxt) + ".tscn"
	get_tree().change_scene_to_file(nxt_scn)


func _on_re_pressed():
	Engine.time_scale=1
	var curr_scn = get_tree().current_scene.scene_file_path
	get_tree().change_scene_to_file(curr_scn)
