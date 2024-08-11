extends CharacterBody2D
class_name Enemy

@export var speed: float = 100.0
@export var accel: float = 10.0

var player: Player

func _ready():
	player = get_tree().get_first_node_in_group("player")

func _physics_process(delta):
	if player:
		var direction: Vector2 = global_position.direction_to(player.global_position)
		velocity.x = move_toward(velocity.x, speed * direction.x, accel)
		velocity.y = move_toward(velocity.y, speed * direction.y, accel)
		move_and_slide()
