extends Node

const CAR = preload("res://Car/Car.tscn")
const CRAB = preload("res://Crab/Crab.tscn")
const SNAKE = preload("res://Snake/Snake.tscn")

func _ready():
	$Player.position = $PlayerStartPosition.position
	
func set_camera_limits():
	var map_limits = $TileMap.get_used_rect()
	var map_cellsize = $TileMap.cell_size
	$Player/Camera2D.limit_left = map_limits.position.x * map_cellsize.x
	$Player/Camera2D.limit_right = map_limits.end.x * map_cellsize.x
	$Player/Camera2D.limit_top = map_limits.position.y * map_cellsize.y
	$Player/Camera2D.limit_bottom = map_limits.end.y * map_cellsize.y
	
func car_spawn(start_pos):
	var car = CAR.instance()
	var car_start_node_name = "StartPosition/CarStart" + str(start_pos)
	car.position = get_node(car_start_node_name).position
	add_child(car)
	
	var timer_node_name = "CarTimers/Timer" + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(1.0, 2.0)
	
func crab_spawn(start_pos):
	var crab = CRAB.instance()
	var crab_start_node_name = "StartPosition/CrabStart" + str(start_pos)
	crab.position = get_node(crab_start_node_name).position
	add_child(crab)
	
	var timer_node_name = "Crab Timers/CTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(1.6, 2.2)
	
func snake_spawn(start_pos):
	var snake = SNAKE.instance()
	var snake_start_node_name = "StartPosition/SnakeStart" + str(start_pos)
	snake.position = get_node(snake_start_node_name).position
	add_child(snake)
	
	var timer_node_name = "SnakeTimers/STimer" + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(1.6, 2.2)


func _on_Timer1_timeout():
	car_spawn(1)


func _on_Timer2_timeout():
	car_spawn(2)


func _on_Timer3_timeout():
	car_spawn(3)


func _on_Timer4_timeout():
	car_spawn(4)



func _on_CTimer1_timeout():
	crab_spawn(1)


func _on_CTimer2_timeout():
	crab_spawn(2)
	
func _on_CTimer3_timeout():
	crab_spawn(3)
	
func _on_CTimer4_timeout():
	crab_spawn(4)


func _on_STimer1_timeout():
	snake_spawn(1)


func _on_STimer2_timeout():
	snake_spawn(2)
