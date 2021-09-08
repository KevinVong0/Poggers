extends Node

const CAR = preload("res://Car3/Car.tscn")


func _ready():
	pass
	
func car_spawn(start_pos):
	var car = CAR.instance()
	var car_start_node_name = "StartPosition/CarStart" + str(start_pos)
	car.position = get_node(car_start_node_name).position
	add_child(car)
	
	var timer_node_name = "CarTimers/CarTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(1.7, 2.2)

	
func car_spawnalt(start_pos):
	var car = CAR.instance()
	var car_start_node_name = "StartPosition/CarStart" + str(start_pos)
	car.position = get_node(car_start_node_name).position
	add_child(car)
	
	var timer_node_name = "CarTimers/CarTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(2.7, 3.3)
	


func _on_CarTimer1_timeout():
	car_spawn(1)


func _on_CarTimer2_timeout():
	car_spawn(2)


func _on_CarTimer3_timeout():
	car_spawn(3)


func _on_CarTimer4_timeout():
	car_spawnalt(4)



func _on_CarTimer5_timeout():
	car_spawnalt(5)


func _on_CarTimer6_timeout():
	car_spawn(6)
