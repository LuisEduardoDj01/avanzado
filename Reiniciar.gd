extends Button

func _on_Reiniciar_pressed():
	Gamehandler.salud=50
	Gamehandler.puntos=0
	get_tree().change_scene("res://Escena.tscn")
