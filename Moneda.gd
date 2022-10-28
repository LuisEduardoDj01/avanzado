extends Area2D

func _on_Moneda_body_entered(body):
	Gamehandler.puntos+=10
	queue_free()
