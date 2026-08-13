extends CharacterBody2D

@export var speed = 200.0

func _physics_process(delta):
	var dir = Input.get_axis("move_left", "move_right")
	velocity.x = dir * speed
	move_and_slide()

# TODO: falta la función de salto
