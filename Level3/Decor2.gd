extends Area2D
var anim_mode = "Blaze"

func _ready():
	AnimationLoop()

func AnimationLoop():
	get_node("AnimationPlayer").play(anim_mode)
