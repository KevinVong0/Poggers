extends KinematicBody2D

const speed = 170



func _process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_just_pressed("ui_left"):
		var musicNode = $"SoundEffects/Left"
		musicNode.play()
		var musicNode2 = $"SoundEffects/Right"
		musicNode2.play()
	if Input.is_action_just_pressed("ui_up"):
		var musicNode = $"SoundEffects/Left"
		musicNode.play()
		var musicNode2 = $"SoundEffects/Right"
		musicNode2.play()
	if Input.is_action_just_pressed("ui_right"):
		var musicNode = $"SoundEffects/Left"
		musicNode.play()
		var musicNode2 = $"SoundEffects/Right"
		musicNode2.play()
	if Input.is_action_just_pressed("ui_down"):
		var musicNode = $"SoundEffects/Left"
		musicNode.play()
		var musicNode2 = $"SoundEffects/Right"
		musicNode2.play()
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1

	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1

	if Input.is_action_pressed("ui_down"):
		velocity.y += 1

	
	
	if Input.is_action_just_released("ui_left"):
		var musicNode = $"SoundEffects/Left"
		musicNode.stop()
		var musicNode2 = $"SoundEffects/Right"
		musicNode2.stop()
	if Input.is_action_just_released("ui_up"):
		var musicNode = $"SoundEffects/Left"
		musicNode.stop()
		var musicNode2 = $"SoundEffects/Right"
		musicNode2.stop()
	if Input.is_action_just_released("ui_right"):
		var musicNode = $"SoundEffects/Left"
		musicNode.stop()
		var musicNode2 = $"SoundEffects/Right"
		musicNode2.stop()
	if Input.is_action_just_released("ui_down"):
		var musicNode = $"SoundEffects/Left"
		musicNode.stop()
		var musicNode2 = $"SoundEffects/Right"
		musicNode2.stop()
	move_and_slide(velocity.normalized() * speed)
	
	player_animation(velocity)	
	
func player_animation(velocity):
	if velocity.y > 0:
		$"AnimatedSprite".play('Run')
	elif velocity.y < 0:
		$"AnimatedSprite".play('Run')
	
	elif velocity.x != 0:
		$"AnimatedSprite".play('Run')
		$"AnimatedSprite".flip_h = velocity.x > 0
	else:
		$"AnimatedSprite".stop()
		$"AnimatedSprite".frame = 0

