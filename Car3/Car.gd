extends Area2D

const CARLIST = ['YellowCar', 'GreyCar']

var car_Speed = 250
var direction = 1

func _ready():
	randomize()
	
	var currentCar = CARLIST[randi()%CARLIST.size()]
	$"AnimatedSprite".animation = currentCar
	car_Speed = rand_range(280, 340)
	
	if position.x < 0:
		direction = -1
		$"AnimatedSprite".flip_h = true
	else:
		direction = 1
	
func _process(delta):
	position.x -= car_Speed*delta*direction


func _on_Car_body_entered(body):
	get_tree( ).change_scene("res://Game Over/GameOver.tscn") # Replace with function body.
