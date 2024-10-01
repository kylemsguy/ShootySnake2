extends Node2D

var food = load("res://entities/food/food.tscn")
var snake_template = load("res://entities/snake/snake.tscn")

# upper bounds for width/height
const width = 705
const height = 450

var snake = null


# Called when the node enters the scene tree for the first time.
func _ready():
	var food = food.instantiate()
	food.position.x = 100
	food.position.y = 100
	add_child(food)
	
	snake = snake_template.instantiate()
	snake.position.x = 400
	snake.position.y = 400
	add_child(snake)
	
	#var bullet = load("res://entities/snake/bullet.tscn").instantiate()
	#bullet.position.x = 200
	#bullet.position.y = 300
	#add_child(bullet)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
