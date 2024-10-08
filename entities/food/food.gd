extends RigidBody2D

var rng = RandomNumberGenerator.new()
const spinspeed = 10
var time = 0

var food_sound = load("res://sound/sfx/boom.wav")

func launch_random_velocity():
	var difficulty = PlayerVariables.difficulty
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

func _physics_process(delta):
	var movement = linear_velocity * delta
	var collision = move_and_collide(movement)
	if collision:	
		print("Food: ", collision.get_collider().name)
		if collision.get_collider().name == "Bullet":
			# TODO: fix detecting collision with bullet (sometimes it shows up as @RigidBody2D@45
			PlayerVariables.update_health(10)
			get_parent().spawn_food()
			queue_free()
