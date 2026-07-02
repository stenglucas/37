extends Area2D


var speed = 500

func _process(delta):
	position.y += speed*delta


func _on_Area2D_body_entered(body):
	if body.is_in_group("Jugador"):
		body.sumarPuntos3()
	if body.is_in_group("pared"):
		body.restarPuntos3()
	queue_free()
