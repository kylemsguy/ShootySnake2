extends Node2D

var food = load("res://entities/food/food.tscn")
var snake_head = load("res://entities/snake/snake_head.tscn")
var snake_body = load("res://entities/snake/snake_body.tscn")

# upper bounds for width/height
const width = 705
const height = 450

var snake = null
var snake_body_parts = []


# Called when the node enters the scene tree for the first time.
func _ready():
	var food = food.instantiate()
	food.position.x = 100
	food.position.y = 100
	add_child(food)
	
	snake = snake_head.instantiate()
	snake.position.x = 400
	snake.position.y = 400
	add_child(snake)
	
	var snake_body_part = snake_body.instantiate()
	snake_body_part.position.x = 200
	snake_body_part.position.y = 200
	snake_body_parts.append(snake_body_part)
	add_child(snake_body_part)
	
	#var bullet = load("res://entities/snake/bullet.tscn").instantiate()
	#bullet.position.x = 200
	#bullet.position.y = 300
	#add_child(bullet)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
