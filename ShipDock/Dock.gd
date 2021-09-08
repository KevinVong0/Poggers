extends Area2D


func _ready():
	pass


func _on_Area2D_body_entered(body):
	get_tree( ).change_scene("res://Level3/Level3.tscn")
