extends Node

var puntos = 0

onready var puntaje = $puntaje
onready var musica = $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	musica.play()


func _on_Jugador_SM1():
	puntos += 1
	puntaje.text = str(puntos)
	if puntos == 37:
		victoria()
	if puntos > 50:
		gameover()


func _on_Jugador_SM2():
	puntos += 2
	puntaje.text = str(puntos)
	if puntos == 37:
		victoria()
	if puntos > 50:
		gameover()
		
func _on_Jugador_SM3():
	puntos += 3
	puntaje.text = str(puntos)
	if puntos == 37:
		victoria()
	if puntos > 50:
		gameover()
		
func _on_pared_RM1():
	puntos -= 1
	puntaje.text = str(puntos)
	if puntos == 37:
		victoria()
	if puntos < 0:
		gameover()

func _on_pared_RM2():
	puntos -= 2
	puntaje.text = str(puntos)
	if puntos == 37:
		victoria()
	if puntos < 0:
		gameover()

func _on_pared_RM3():
	puntos -= 3
	puntaje.text = str(puntos)
	if puntos == 37:
		victoria()
	if puntos < 0:
		gameover()

func victoria():
	get_tree().change_scene("res://Escenas/Victoria.tscn")

func gameover():
	get_tree().change_scene("res://Escenas/gameover.tscn")
