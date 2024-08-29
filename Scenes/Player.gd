extends CharacterBody2D

var speed = 200
var velocity = Vector2.ZERO()


func _physics_process(delta):
	velocity = Vector2.ZERO()
	
	if Input.is_action_just_pressed("Down"):
		velocity.y += speed
	if Input.is_action_just_pressed("Up"):
		velocity.y -= speed
	if Input.is_action_just_pressed("Left"):
		velocity.x -= speed 
	if Input.is_action_just_pressed("Right"):
		velocity.x += speed
	
	move_and_slide(velocity)
	look_at(get_global_mouse_position())

  
