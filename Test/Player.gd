extends CharacterBody2D

class_name Player

@export var speed : float = 200

@export var joystickLeftPath : NodePath
@onready var joystickLeft : Joystick = get_node(joystickLeftPath)

@export var joystickRightPath : NodePath
@onready var joystickRight : Joystick = get_node(joystickRightPath)

func _physics_process(_delta):
	if joystickLeft and joystickLeft.is_working:
		motion_velocity = joystickLeft.output * speed
		move_and_slide()
	
	if joystickRight and joystickRight.is_working:
		rotation = joystickRight.output.angle()
