extends Node2D
class_name CharacterMovement

var body: CharacterBody2D

@export var slow_speed = 80
@export var normal_speed = 120
@export var rush_speed = 180

var character_speed: int

func _ready ():
	body = get_parent ()
	character_speed = normal_speed

func move_towards (target_direction):
	body.move_and_collide(target_direction*character_speed)

func rush ():
	character_speed = rush_speed

func walk ():
	character_speed = normal_speed
