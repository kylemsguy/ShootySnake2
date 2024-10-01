extends Node2D

var food = load("res://entities/food/food.tscn")
var snake_head = load("res://entities/snake/snake_head.tscn")
var snake_body = load("res://entities/snake/snake_body.tscn")

# upper bounds for width/height
const width = 705
const height = 450


# Called when the node enters the scene tree for the first time.
func _ready():
	var food = food.instantiate()
	food.position.x = 100
	food.position.y = 100
	add_child(food)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
