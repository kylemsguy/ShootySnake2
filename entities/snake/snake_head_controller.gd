extends CharacterBody2D

var direction = Global.MOVE_SET.RIGHT
const step = 20

func move_forward():
	var pos = Vector2()
	if direction == Global.MOVE_SET.UP:
		pos.y -= step
	elif direction == Global.MOVE_SET.RIGHT:
		pos.x += step
	elif direction == Global.MOVE_SET.DOWN:
		pos.y += step
	elif direction == Global.MOVE_SET.LEFT:
		pos.x -= step
	var collision = move_and_collide(pos)
	if collision:
		print(collision.get_collider().name)
		
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if direction == Global.MOVE_SET.UP:
		rotation_degrees = 0
	elif direction == Global.MOVE_SET.RIGHT:
		rotation_degrees = 90
	elif direction == Global.MOVE_SET.DOWN:
		rotation_degrees = 180
	elif direction == Global.MOVE_SET.LEFT:
		rotation_degrees = 270
