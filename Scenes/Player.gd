extends CharacterBody2D


@export var SPEED = 200.0
@export var ACCELERATION = 20.0
@export var FRICTION = 10.0
const KNIFE = preload("res://knife.tscn")
@onready var world = get_node('root/world')
func _physics_process(delta):
	
	var  direction=Input.get_vector("Left","Right","Up","Down") 
	if direction:
		velocity=velocity.move_toward(direction*SPEED, ACCELERATION)
	else:
		velocity=velocity.move_toward(Vector2.ZERO,FRICTION)
		
	move_and_slide()
	


func _on_knife_timer_timeout():
	var knife = KNIFE .instantiate()
	knife.global_position = global_position
	world.add_child(knife)
