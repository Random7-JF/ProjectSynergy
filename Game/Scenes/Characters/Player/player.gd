extends CharacterBody2D
class_name Player

@export var speed: float = 100.0
@export var accel: float = 10.0

func _physics_process(delta):
	var direction: Vector2 = Input.get_vector("move_left","move_right","move_up","move_down")
	
	velocity.x = move_toward(velocity.x, speed * direction.x, accel)
	velocity.y = move_toward(velocity.y, speed * direction.y, accel)
	
	move_and_slide()
