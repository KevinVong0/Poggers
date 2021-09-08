extends Area2D


func _ready():
	pass


func _on_Car_body_entered(body):
	get_tree( ).change_scene("res://Level4/Level4.tscn")
