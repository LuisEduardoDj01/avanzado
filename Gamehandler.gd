extends Node

var velocidad:int = 200
var puntos:int=0
var salud:int=50

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _process(delta):
	if puntos>=210:
		puntos=0
		get_tree().change_scene("res://pantallaDemo.tscn")
	if salud<=0:
		salud=50
		get_tree().change_scene("res://pantallaMorir.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
