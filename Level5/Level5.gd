extends Node

const CAR = preload("res://Car4/Car.tscn")

func car_spawn(start_pos):
	var car = CAR.instance()
	var car_start_node_name = "StartPosition/CarStart" + str(start_pos)
	car.position = get_node(car_start_node_name).position
	add_child(car)
	
	var timer_node_name = "CarTimers/CarTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(2.0, 2.7)

func _on_CarTimer1_timeout():
	car_spawn(1)
	


func _on_CarTimer2_timeout():
	car_spawn(2)
