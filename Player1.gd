extends KinematicBody

const Speed = 0.5
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var velocity = Vector3()
	var x_movement : float = Input.get_action_strength("player1_right") - Input.get_action_strength("player1_left")
	velocity.x = x_movement * Speed
	move_and_collide(velocity)
	
	print(translate_inputs(Input.get_action_strength("player1_up"), Input.get_action_strength("player1_down"), Input.get_action_strength("player1_left"), Input.get_action_strength("player1_right")))

func translate_inputs(up , down, left, right):
	var inputs = [up-down, right-left]
	var inputstonotation = {[1.0, 1.0] : 9, [1.0, 0.0] : 8, [1.0, -1] : 7, [0.0, 1.0] : 6, [0.0, 0.0] : 5, [0.0, -1] : 4, [-1.0, 1.0] : 3, [-1.0, 0.0] : 2, [-1.0, -1.0] : 1}
	return inputstonotation[inputs]