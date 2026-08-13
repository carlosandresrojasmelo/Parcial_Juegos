extends CharacterBody2D

@export var speed = 200.0
@export var jump_velocity = 400.0

var gravity = 980.0

@onready var animated_sprites = $AnimatedSprite2D


func _physics_process(delta):
	if not is_on_floor():
		velocity.y = gravity * delta

	if Input.is_action_just_pressed("jump"):
		velocity.y = -jump_velocity
		var dir = Input.get_vector("move_left", "move_right")
		velocity = dir * speed

	move_and_slide()
	update_animation(direction)


func update_animation(direction):
	if direction == Vector2.ZERO:
		animated_sprites.play("idle")
	else:
		animated_sprites.play("walk")
	if direction.x != 0:
		animated_sprites.flip_h = direction.x < 0
