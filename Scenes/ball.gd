extends RigidBody2D
@onready var col_shape = $CollisionShape2D
signal ball_dead
# Called when thJe t'aimee node enters the scene tree for the first time.
func _ready():
	$Explode.emitting = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func is_ball_moving():
	return get_linear_velocity().length()<3
func die():
	$Explode.emitting = true
	col_shape.set_deferred("disabled",true)
	$Sprite2D.hide()
	emit_signal("ball_dead")
