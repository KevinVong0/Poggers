extends Node

var holes = 0
const CAR = preload("res://FroggerCar/FroggerCar.tscn")
const LOG = preload("res://Logger/Logger.tscn")
const PL = preload("res://Froggy/Froggy.tscn")

func _ready():
	var t = Timer.new()
	t.set_wait_time(5)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	player_spawn()
	#$Player.position = $PlayerStartPosition.position
	
	
func player_spawn():
	var player = PL.instance()
	var player_start_node_name = "StartPosition/PlayerStartPosition"
	player.position = get_node(player_start_node_name).position
	add_child(player)
	
	
func car_spawn(start_pos):
	var car = CAR.instance()
	var car_start_node_name = "StartPosition/CarStart" + str(start_pos)
	car.position = get_node(car_start_node_name).position
	add_child(car)
	
	var timer_node_name = "CarTimers/CarTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(2.0, 2.4)
	
func log_spawn(start_pos):
	var l = LOG.instance()
	var l_start_node_name = "StartPosition/LogStart" + str(start_pos)
	l.position = get_node(l_start_node_name).position
	add_child(l)
	
	var timer_node_name = "LogTimers/LogTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(3.5, 4.0)
	

func checkHoles():
	if holes == 6:
		get_tree( ).change_scene("res://Level2Temp/Level2Temp.tscn")


func _on_CarTimer1_timeout():
	car_spawn(1)


func _on_CarTimer2_timeout():
	car_spawn(2)


func _on_CarTimer3_timeout():
	car_spawn(3)

func _on_CarTimer4_timeout():
	car_spawn(4)


func _on_CarTimer5_timeout():
	car_spawn(5)


func _on_LogTimer1_timeout():
	log_spawn(1)




func _on_LogTimer2_timeout():
	log_spawn(2)


func _on_LogTimer3_timeout():
	log_spawn(3)


func _on_LogTimer4_timeout():
	log_spawn(4)


func _on_LogTimer5_timeout():
	log_spawn(5)
