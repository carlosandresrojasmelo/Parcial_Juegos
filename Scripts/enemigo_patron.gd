extends Node2D

@export var speed = 80.0
@export var rango = 100.0
var direccion = 1
var inicio_x

func _ready():
	inicio_x = position.x

func _process(delta):
	position.x += direccion * speed * delta
	if abs(position.x - inicio_x) > rango:
		direccion *= -1
