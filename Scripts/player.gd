extends CharacterBody2D

@export var speed = 200.0
@export var jump_velocity = 400.0
var gravity = 980.0

func _physics_process(delta):
	if not is_on_floor():
		velocity.y = gravity * delta
		
	var dir = Input.get_axis("move_left", "move_right")
	velocity.x = dir * speed
		
	if Input.is_action_just_pressed("jump"):
		velocity.y = -jump_velocity
	move_and_slide()


# TODO: falta la función de salto
