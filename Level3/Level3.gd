extends Node

const CRAB = preload("res://Crab2/Crab.tscn")
const CAR = preload("res://Car2/Car.tscn")
const SNAKE = preload("res://Snake2/Snake.tscn")


func _ready():
	pass
	
	
func crab_spawn(start_pos):
	var crab = CRAB.instance()
	var crab_start_node_name = "StartPosition/CrabStart" + str(start_pos)
	crab.position = get_node(crab_start_node_name).position
	add_child(crab)
	
	var timer_node_name = "CrabTimers/CrabTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(1.6, 3.2)

func car_spawn(start_pos):
	var car = CAR.instance()
	var car_start_node_name = "StartPosition/CarStart" + str(start_pos)
	car.position = get_node(car_start_node_name).position
	add_child(car)
	
	var timer_node_name = "CarTimers/CarTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(1.9, 2.4)
	
func snake_spawn(start_pos):
	var snake = SNAKE.instance()
	var snake_start_node_name = "StartPosition/SnakeStart" + str(start_pos)
	snake.position = get_node(snake_start_node_name).position
	add_child(snake)
	
	var timer_node_name = "SnakeTimers/SnakeTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(1.4, 1.9)


func _on_CrabTimer1_timeout():
	crab_spawn(1)


func _on_CrabTimer2_timeout():
	crab_spawn(2)


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


func _on_CarTimer6_timeout():
	car_spawn(6)


func _on_CarTimer7_timeout():
	car_spawn(7)


func _on_CarTimer8_timeout():
	car_spawn(8)


func _on_SnakeTimer1_timeout():
	snake_spawn(1)


func _on_SnakeTimer2_timeout():
	snake_spawn(2)


func _on_SnakeTimer3_timeout():
	snake_spawn(3)
