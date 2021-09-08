extends KinematicBody2D


var velocity = Vector2.ZERO
const speed = 60

func _ready():
	pass


func _process(delta):
	
	
	if Input.is_action_just_pressed("ui_left"):
		position.x -= 32
		get_node("AnimationPlayer").play("Up")

	if Input.is_action_just_pressed("ui_up"):
		position.y -= 32
		get_node("AnimationPlayer").play("Up")

	if Input.is_action_just_pressed("ui_right"):
		position.x += 32
		get_node("AnimationPlayer").play("Up")

	if Input.is_action_just_pressed("ui_down"):
		position.y += 32
		get_node("AnimationPlayer").play("Up")
		
	move_and_slide(velocity.normalized() * speed)


