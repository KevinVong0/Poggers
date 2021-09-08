extends Area2D
var anim_mode = "Walk"
var animation

	
var crab_Speed = 250
var direction = 1

func _ready():
	AnimationLoop()

	crab_Speed = rand_range(210, 270)
	
	if position.x < 0:
		direction = -1
		$"Sprite".flip_h = true
	else:
		direction = 1
	
func _process(delta):
	position.x -= crab_Speed*delta*direction
	
func AnimationLoop():
	get_node("AnimationPlayer").play(anim_mode)



func _on_Snake_body_entered(body):
	get_tree( ).change_scene("res://Game Over/GameOver.tscn")
