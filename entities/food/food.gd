extends RigidBody2D

var rng = RandomNumberGenerator.new()
const spinspeed = 10
var time = 0

func launch_random_velocity():
	var difficulty = Global.difficulty
	var rand_x = rng.randf_range(-difficulty, difficulty)
	var rand_y = rng.randf_range(-difficulty, difficulty)
	linear_velocity.x = rand_x
	linear_velocity.y = rand_y
	var direction = -1 if randi() % 2 == 0 else 1
	angular_velocity = direction * spinspeed

# Called when the node enters the scene tree for the first time.
func _ready():
	launch_random_velocity()
	angular_velocity = spinspeed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += 1
	if time % Global.relaunch_interval == 0:
		launch_random_velocity()
