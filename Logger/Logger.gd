extends Area2D

var speed = 60
var direction = 1

func _ready():
	if position.x < 0:
		direction = -1
	else:
		direction = 1
		
func _process(delta):
	position.x -= speed * direction * delta
