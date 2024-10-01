extends Node

var snake_body_template = load("res://entities/snake/snake_body.tscn")

var health = 100
var new_snake_segments = []
var snake_segments = []
var last_moved = 0
var curr_time = 0

func create_body_segment():
	new_snake_segments.append(snake_body_template.instantiate())
	
func move_snake_head():
	var angle = $SnakeHead.rotation_degrees
	$SnakeHead.move_forward()

# Called when the node enters the scene tree for the first time.
func _ready():
	create_body_segment()
	for i in range(10):
		create_body_segment()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	curr_time += delta
	if curr_time - last_moved < 0.1:
		return
		
	var prev_position = $SnakeHead.position
	move_snake_head()
	if new_snake_segments:
		var new_snake_segment = new_snake_segments.pop_back()
		new_snake_segment.position = prev_position
		$SnakeBodyContainer.add_child(new_snake_segment)
		snake_segments.append(new_snake_segment)
	else:
		# shuffle everything forwards
		for i in range(len(snake_segments)-1, -1, -1):
			var curr_position = snake_segments[i].position
			snake_segments[i].position = prev_position
			prev_position = curr_position
		
	last_moved = curr_time
