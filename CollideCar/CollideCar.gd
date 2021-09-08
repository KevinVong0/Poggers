extends Area2D


func _ready():
	pass


func _on_Area2D_body_entered(body):
	get_tree( ).change_scene("res://Level5/Level5.tscn")
	#body.queue_free()
