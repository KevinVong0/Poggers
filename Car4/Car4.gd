extends Area2D

const CARLIST = ['YellowCar']

var car_Speed = 250
var direction = 1

func _ready():
	randomize()
	
	var currentCar = CARLIST[randi()%CARLIST.size()]
	$"AnimatedSprite".animation = currentCar
	car_Speed = rand_range(300, 400)
	
	if position.y < 0:
		direction = -1
	else:
		direction = 1
		$"AnimatedSprite".flip_v = true
	
func _process(delta):
	position.y -= car_Speed*delta*direction


func _on_Car_body_entered(body):
	get_tree( ).change_scene("res://Game Over5/GameOver5.tscn") # Replace with function body.
