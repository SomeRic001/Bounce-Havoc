extends Node2D

var _mouse_position 
var _is_mouse_down := false
var ui_elements = []
@onready var _ball = $Ball
@onready var _flag = $Flag/flag
# Called when the node enters the scene tree for the first time.
func _ready():
	$Explode.emitting = false
	$"Next Level".hide()
	$GameOver.hide()
	ui_elements.append($UI/MarginContainer/Label)
	ui_elements.append($UI/VBoxContainer/Vol)
	ui_elements.append($UI/VBoxContainer/Pause)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Explode.position = _ball.position

func _input(event):
	for ui in ui_elements:
		if ui.get_global_rect().has_point(get_global_mouse_position()):
			return
	if event is InputEventMouseButton:
		if event.button_index== MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				_is_mouse_down = true
				print ("left click")
				_mouse_position = null
			else:
				_is_mouse_down = false
				if _mouse_position !=null:
					impulse_to_ball()
	if _is_mouse_down and _ball.is_ball_moving():
		print (_ball.is_ball_moving())
		_mouse_position = get_local_mouse_position()
		print(_mouse_position)
	else:
		_mouse_position = null
	queue_redraw()

func _draw():
	if _mouse_position!=null:
		draw_line(_ball.position, _mouse_position,"yellow",6.0)

func impulse_to_ball():
	var direction = _ball.position - _mouse_position
	var distance = direction.length()
	if distance >0 and distance<700 :
		direction = direction.normalized()
		var impulse_strength = distance *3
		var impulse = impulse_strength*direction
		_ball.apply_impulse(impulse)

func _on_flag_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	_flag.play()
	await get_tree().create_timer(0.5).timeout
	Engine.time_scale =0
	$"Next Level".show()


func _on_spike_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	$Explode.emitting = true
	_ball.hide()
	await get_tree().create_timer(1).timeout
	Engine.time_scale=0
	print ("dead")
	$GameOver.show()
