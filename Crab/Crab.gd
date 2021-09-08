extends Area2D

const CRABLIST = ['Crab']

var crab_Speed = 250
var direction = 1

func _ready():
	randomize()
	
	var currentCrab = CRABLIST[randi()%CRABLIST.size()]
	$"AnimatedSprite".animation = currentCrab
	crab_Speed = rand_range(210, 270)
	
	if position.x < 0:
		direction = -1
		$"AnimatedSprite".flip_v = true
	else:
		direction = 1
	
func _process(delta):
	position.x -= crab_Speed*delta*direction


func _on_Crab_body_entered(body):
	get_tree( ).change_scene("res://Game Over/GameOver.tscn")
