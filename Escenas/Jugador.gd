extends KinematicBody2D

var direccion = Vector2()
var velocidad = 200

var puedo_mover = true
var puedo_avazar = 1

signal SM1
signal SM2
signal SM3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	if puedo_mover == true:
		direccion.x = 0
		if Input.is_action_pressed("ui_left"):
			if puedo_avazar == 1 or puedo_avazar == 3:
				direccion.x -= velocidad
			if self.position.x < 50:
				puedo_avazar = 2
			else:
				puedo_avazar = 1
		if Input.is_action_pressed("ui_right"):
			if puedo_avazar == 1 or puedo_avazar == 2:
				direccion.x += velocidad
			if self.position.x > 463:
				puedo_avazar = 3
			else:
				puedo_avazar = 1
		move_and_slide(direccion)

func sumarPuntos():
	emit_signal("SM1")

func sumarPuntos2():
	emit_signal("SM2")

func sumarPuntos3():
	emit_signal("SM3")
