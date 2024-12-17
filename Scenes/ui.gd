extends CanvasLayer
@onready var mn = $"../GameMusic"
func _ready():
	$PauseMenu.hide()

func _on_pause_pressed():
	Engine.time_scale=0
	$PauseMenu.show()
	get_tree().paused = true


func _on_resume_pressed():
	Engine.time_scale=1
	$PauseMenu.hide()
	get_tree().paused = false
	


func _on_vol_pressed():
	if mn.volume_db!=-80:
		mn.volume_db=-80
	else:
		mn.volume_db = -20
