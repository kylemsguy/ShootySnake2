extends Node2D

var food_template = load("res://entities/food/food.tscn")
var snake_template = load("res://entities/snake/snake.tscn")

# upper bounds for width/height
const width = 705
const height = 450

var snake = null

func spawn_food():
	var food = food_template.instantiate()
	
	food.position.x = randi_range(20, 700)
	food.position.y = randi_range(20, 400)
	add_child(food)

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_food()
	
	snake = snake_template.instantiate()
	snake.position.x = 400
	snake.position.y = 400
	add_child(snake)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var shooting = Input.is_action_pressed("shoot")
	$ScoreLabel.text = "Health: " + str(PlayerVariables.health)
	snake.queue_shoot(shooting)
	if Input.is_action_just_pressed("up"):
		snake.queue_rotate(Global.MOVE_SET.UP)
	elif Input.is_action_just_pressed("right"):
		snake.queue_rotate(Global.MOVE_SET.RIGHT)
	elif Input.is_action_just_pressed("down"):
		snake.queue_rotate(Global.MOVE_SET.DOWN)
	elif Input.is_action_just_pressed("left"):
		snake.queue_rotate(Global.MOVE_SET.LEFT)
