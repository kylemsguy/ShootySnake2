extends RigidBody2D

const damage = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	var movement = linear_velocity * delta
	var collision = move_and_collide(movement)
	if collision:	
		var collided_name = collision.get_collider().name
		print("bullet: ", collided_name)
		if collided_name != "wall":
			get_parent().play_boom()
		queue_free()
