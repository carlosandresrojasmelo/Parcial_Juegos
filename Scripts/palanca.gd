extends Area2D

var jugador_cerca = false

func _on_body_entered(body):
	jugador_cerca = true

func _on_body_exited(body):
	jugador_cerca = false

func _process(delta):
	if jugador_cerca and Input.is_action_pressed("action"):
		print("Palanca activada")
