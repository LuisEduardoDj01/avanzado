extends Area2D


func _on_velas_body_entered(body):
	Gamehandler.salud-=10
