extends Node
const SHIP = preload("res://BigShip/BigShip.tscn")
const SMALLSHIP = preload("res://SmallShip/SmallShip.tscn")
const SHARK = preload("res://Shark/Shark.tscn")


func ship_spawn(start_pos):
	var ship = SHIP.instance()
	var ship_start_node_name = "StartPosition/ShipStart" + str(start_pos)
	ship.position = get_node(ship_start_node_name).position
	add_child(ship)
	
	var timer_node_name = "ShipTimers/ShipTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = 2.5
	
func small_ship_spawn(start_pos):
	var smallship = SMALLSHIP.instance()
	var smallship_start_node_name = "StartPosition/SmallShipStart" + str(start_pos)
	smallship.position = get_node(smallship_start_node_name).position
	add_child(smallship)
	
	var timer_node_name = "SmallShipTimers/SmallShipTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = 1.5
	
func shark_spawn(start_pos):
	var shark = SHARK.instance()
	var shark_start_node_name = "StartPosition/SharkStart" + str(start_pos)
	shark.position = get_node(shark_start_node_name).position
	add_child(shark)
	
	var timer_node_name = "SharkTimers/SharkTimer" + str(start_pos)
	get_node(timer_node_name).wait_time = 2


func _on_ShipTimer1_timeout():
	ship_spawn(1)
	

func _on_ShipTimer2_timeout():
	ship_spawn(2)
	
func _on_ShipTimer3_timeout():
	ship_spawn(3)


func _on_SmallShipTimer1_timeout():
	small_ship_spawn(1)


func _on_SmallShipTimer2_timeout():
	small_ship_spawn(2)


func _on_SharkTimer1_timeout():
	shark_spawn(1)
	

func _on_SharkTimer2_timeout():
	shark_spawn(2)



