extends KinematicBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	print(translate_inputs(Input.get_action_strength("player1_up"), Input.get_action_strength("player1_down"), Input.get_action_strength("player1_left"), Input.get_action_strength("player1_right")))

func translate_inputs(up , down, left, right):
	var vertical_dir = up-down
	var horizontal_dir = right-left
	if (vertical_dir == 1):
		if (horizontal_dir == 1):
			return 9
		elif (horizontal_dir == -1):
			return 7
		elif (horizontal_dir == 0):
			return 8
	elif (vertical_dir == -1):
		if (horizontal_dir == 1):
			return 3
		elif (horizontal_dir == -1):
			return 1
		elif (horizontal_dir == 0):
			return 2
	elif (vertical_dir == 0):
		if (horizontal_dir == 1):
			return 6
		elif (horizontal_dir == -1):
			return 4
		elif (horizontal_dir == 0):
			return 5
	

