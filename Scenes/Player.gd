extends CharacterBody2D


@export var SPEED = 200.0
@export var ACCELERATION = 20.0
@export var FRICTION = 10.0

func _physics_process(delta):
	var  direction=Input.get_vector("Left","Right","Up","Down") 
	if direction:
		velocity=velocity.move_toward(direction*SPEED, ACCELERATION)
	else:
		velocity=velocity.move_toward(Vector2.ZERO,FRICTION)
	move_and_slide()
	
