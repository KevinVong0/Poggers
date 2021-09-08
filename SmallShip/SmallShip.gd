extends Area2D

var ship_speed = 500
var direction = 1

func _ready():
	if position.y < 0:
		direction = -1
		$"Sprite".flip_v = true
	else:
		direction = 1
func _process(delta):
	position.y -= ship_speed*delta*direction




func _on_SmallShip_body_entered(body):
	get_tree( ).change_scene("res://Game Over2/GameOver2.tscn")
