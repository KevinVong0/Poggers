extends Area2D

var value = 0;
var velocity = Vector2.ZERO
const speed = 20



func _ready():
	pass



func _on_Log_body_entered(body):
	body.velocity.x = -1 * get_parent().direction


#func _on_Log_body_exited(body):
	#body.velocity.x = 0
