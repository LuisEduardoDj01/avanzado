extends Area2D


func _on_Powerup_velocity_body_entered(body):
	Gamehandler.velocidad+=100
	queue_free()
