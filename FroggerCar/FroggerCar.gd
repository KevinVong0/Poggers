extends Area2D

const CARLIST = ['YellowCar', 'GreyCar']

var car_Speed = 120
var direction = 1

func _ready():
	randomize()
	
	var currentCar = CARLIST[randi()%CARLIST.size()]
	$"AnimatedSprite".animation = currentCar
	car_Speed = rand_range(105, 110)
	
	if position.x < 0:
		direction = -1
		$"AnimatedSprite".flip_h = true		
	else:
		direction = 1
	
	if position.x == 1000:
			position.y += 500	
	
func _process(delta):
	position.x -= car_Speed*delta*direction


func _on_Car_body_entered(body):
	#body.queue_free()
	body.get_node("AnimationPlayer").play("Ded")
	var t = Timer.new()
	t.set_wait_time(0.3)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	get_tree( ).change_scene("res://Game Over/GameOver.tscn") # Replace with function body.
