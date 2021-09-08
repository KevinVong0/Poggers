extends Area2D


func _ready():
	pass


func _on_Boat_body_entered(body):
	get_tree( ).change_scene("res://Level2/Level2.tscn")
