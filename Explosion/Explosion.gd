extends Area2D

var anim_mode = 'Expl'

func _ready():
	AnimationLoop()


func AnimationLoop():
	get_node("AnimationPlayer").play(anim_mode)


func _on_Area2D_body_entered(body):
	get_tree( ).change_scene("res://Game Over5/GameOver5.tscn")
