extends Area2D


func _ready():
	pass


func _on_SideDeath_body_entered(body):
	body.get_node("AnimationPlayer").play("Ded")
	var t = Timer.new()
	t.set_wait_time(0.3)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	get_tree( ).change_scene("res://Game Over/GameOver.tscn")
