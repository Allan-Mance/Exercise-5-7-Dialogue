extends Node

func _unhandled_input(_event):
	if Input.is_action_just_pressed("menu"):
		get_tree().quit()

func shoot():
	var Player = get_node_or_null("/root/Game/Plauer")
	if Player != null:
		Player.shoot()
	var Zombie = get_node_or_null("/root/Game/Zombie")
	if Zombie != null:
		Zombie.die()
	
