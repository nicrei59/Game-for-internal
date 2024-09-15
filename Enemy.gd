extends AnimatedSprite2D
 

const SPEED = 300.0
const JUMP_VELOCITY = 400.0
@onready var Sprite = $Sprite
@onready var Player = get_tree().get_first_node_in_group("Player")

func _physics_process(delta):
	var direction_to_Player = global_position.direction_to(player.global_position)
	velocity + direction_to_Player * SPEED
	
	
	if velocity.x > 0:
		Sprite.flip_h = true
	
	move_and_slide()
	
