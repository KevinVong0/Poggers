extends Area2D


var shark_speed = 200
var direction = 1

func _ready():
	if position.y < 0:
		direction = -1
		$"Sprite".flip_v = true
		$"Sprite".flip_h = true
	else:
		direction = 1
func _process(delta):
	position.y -= shark_speed*delta*direction


func _on_Shark_body_entered(body):
	get_tree( ).change_scene("res://Game Over2/GameOver2.tscn")
