extends Node
class_name TopDown8DControl

@export var character_movement: CharacterMovement

var control_direction: Vector2

func _process (_delta):
	control_direction.x = int (Input.is_action_pressed ("Right")) - int (Input.is_action_pressed ("Left"))
	control_direction.y = int (Input.is_action_pressed ("Down")) - int (Input.is_action_pressed ("Up"))
	
	print (control_direction)
	
	character_movement.move_towards (control_direction*_delta)
	
	if Input.is_action_pressed("Run"):
		character_movement.rush ()
	else:
		character_movement.walk ()
