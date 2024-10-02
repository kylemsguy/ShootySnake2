extends Node

var health = 100
var difficulty = 100


func update_health(new_health):
	if health + new_health > 100:
		health = 100
	else:
		health +- new_health

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
