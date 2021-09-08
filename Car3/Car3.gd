extends Area2D

const CARLIST = ['YellowCar', 'GreyCar']

var car_Speed = 600
var direction = 1

func _ready():
	randomize()
	
	var currentCar = CARLIST[randi()%CARLIST.size()]
	$"AnimatedSprite".animation = currentCar
	car_Speed = rand_range(1000, 1400)
	
	if position.x < 0:
		direction = -1
		$"AnimatedSprite".flip_h = true		
	else:
		direction = 1
	
	if position.x == 1000:
			position.y += 500	
	
func _process(delta):
	position.x -= car_Speed*delta*direction


func _on_Car_body_entered(body):
	#body.queue_free()
	get_tree( ).change_scene("res://Game Over4/GameOver4.tscn") # Replace with function body.
