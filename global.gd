extends Node

const relaunch_interval = 100

enum MOVE_SET {LEFT, RIGHT, UP, DOWN}

const MOVE_SET_OPPOSITE = {
	MOVE_SET.LEFT: MOVE_SET.RIGHT,
	MOVE_SET.RIGHT: MOVE_SET.LEFT,
	MOVE_SET.UP: MOVE_SET.DOWN,
	MOVE_SET.DOWN: MOVE_SET.UP,
}

func is_direction_opposite(d1, d2):
	return MOVE_SET_OPPOSITE[d1] == d2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
