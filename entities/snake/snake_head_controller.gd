extends CharacterBody2D

enum MOVE_SET {LEFT, RIGHT, UP, DOWN}

var direction = MOVE_SET.RIGHT
const step = 16

func move_forward():
	if direction == MOVE_SET.UP:
		position.y -= step
	elif direction == MOVE_SET.RIGHT:
		position.x += step
	elif direction == MOVE_SET.DOWN:
		position.y += step
	elif direction == MOVE_SET.LEFT:
		position.x -= step
		
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if direction == MOVE_SET.UP:
		rotation_degrees = 0
	elif direction == MOVE_SET.RIGHT:
		rotation_degrees = 90
	elif direction == MOVE_SET.DOWN:
		rotation_degrees = 180
	elif direction == MOVE_SET.LEFT:
		rotation_degrees = 270
