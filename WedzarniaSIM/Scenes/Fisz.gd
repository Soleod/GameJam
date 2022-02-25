extends Node2D

var movement_counter = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	fisz_movement(delta)


func fisz_movement(delta):
	print(cos(movement_counter))
	$Body.linear_velocity = Vector2.RIGHT * cos(movement_counter) * 50
	movement_counter = movement_counter + delta
