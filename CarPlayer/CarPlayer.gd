extends KinematicBody2D
const speed = 700
var direction = 1

func _process(delta):
	var velocity = Vector2.ZERO
	velocity.x += 100
	
	if Input.is_action_just_pressed("ui_left"):
		var musicNode = $"Sound/CarSound"
		musicNode.play()
	if Input.is_action_just_pressed("ui_up"):
		var musicNode = $"Sound/CarSound"
		musicNode.play()
	if Input.is_action_just_pressed("ui_right"):
		var musicNode = $"Sound/CarSound"
		musicNode.play()
	if Input.is_action_just_pressed("ui_down"):
		var musicNode = $"Sound/CarSound"
		musicNode.play()
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 75

	if Input.is_action_pressed("ui_up"):
		velocity.y -= 100

	if Input.is_action_pressed("ui_right"):
		velocity.x += 100

	if Input.is_action_pressed("ui_down"):
		velocity.y += 100

	
	
	if Input.is_action_just_released("ui_left"):
		var musicNode = $"Sound/CarSound"
		musicNode.stop()
	if Input.is_action_just_released("ui_up"):
		var musicNode = $"Sound/CarSound"
		musicNode.stop()
	if Input.is_action_just_released("ui_right"):
		var musicNode = $"Sound/CarSound"
		musicNode.stop()
	if Input.is_action_just_released("ui_down"):
		var musicNode = $"Sound/CarSound"
		musicNode.stop()
	move_and_slide(velocity.normalized() * speed)
	
	player_animation(velocity)	
	
func player_animation(velocity):
	if velocity.y > 0:
		$"Sprite"
	elif velocity.y < 0:
		$"Sprite"
	
	elif velocity.x != 0:
		$"Sprite"
	else:
		$"Sprite"

