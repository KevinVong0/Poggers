extends Area2D


func _ready():
	pass


func _on_Area2D_body_entered(body):
	get_tree( ).change_scene("res://Game Over5/GameOver5.tscn")
