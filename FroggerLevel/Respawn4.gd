extends Area2D
var counter = 0

func _ready():
	pass


func _on_Respawn4_body_entered(body):
	body.velocity.x = 0
	
	if counter == 0:
		body.position = get_parent().get_node("StartPosition/PlayerStartPosition").position
		$Sprite.show()
		get_parent().holes += 1
		get_parent().checkHoles()
		counter += 1
	else:
		body.get_node("AnimationPlayer").play("Ded")
		var t = Timer.new()
		t.set_wait_time(0.3)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
		get_tree( ).change_scene("res://Game Over/GameOver.tscn")
