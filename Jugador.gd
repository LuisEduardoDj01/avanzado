extends KinematicBody2D

var brinco:int=500
var gravedad:int=900
var vel:Vector2=Vector2()
var piso:bool=false
onready var sprite= $Sprite
onready var animatedSprite = $AnimatedSprite

func _physics_process(delta):
	vel.x=0
	if Input.is_action_pressed("ui_left"):
		vel.x-= Gamehandler.velocidad
	if Input.is_action_pressed("ui_right"):
		vel.x+=Gamehandler.velocidad
	if Input.is_action_pressed("ui_up") and is_on_floor():
		vel.y-=brinco
	vel =move_and_slide(vel,Vector2.UP)
	vel.y+=gravedad*delta

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		animatedSprite.play("left")
	elif Input.is_action_pressed("ui_right"):
		animatedSprite.play("right")
	elif Input.is_action_pressed("ui_up"):
		animatedSprite.play("jump")
	else:
		animatedSprite.play("static")
func _on_ZonaMorir_body_entered(body):
	get_tree().change_scene("res://pantallaMorir.tscn")


func _on_ventanita_body_entered(body):
	get_tree().change_scene("res://Nivel2.tscn")
