extends Node

var catch1 = preload("res://Escenas/Area2D.tscn")
var catch2 = preload("res://Escenas/2catch.tscn")
var catch3 = preload("res://Escenas/3catch.tscn")

onready var timer_aparicion = $timer_aparicion
onready var punto1 = $Punto1
onready var punto2 = $Punto2
onready var punto3 = $Punto3
onready var punto4 = $Punto4
onready var punto5 = $Punto5

var salida
var generador

func _on_timer_aparicion_timeout():
	generador = int(floor(rand_range(1,5)))
	if generador == 1:
		punto1.global_position=punto5.global_position
		AparicionCatch(generador)
	if generador == 2:
		punto1.global_position=punto2.global_position
		AparicionCatch(generador)
	if generador == 3:
		punto1.global_position=punto3.global_position
		AparicionCatch(generador)
	if generador == 4:
		punto1.global_position=punto4.global_position
		AparicionCatch(generador)

func AparicionCatch(generador):
	var c1 = catch1.instance()
	var c2 = catch2.instance()
	var c3 = catch3.instance()
	salida = int(floor(rand_range(1,4)))
	
	if salida == 1:
		c1.global_position=punto1.global_position
		get_parent().add_child(c1)
	if salida == 2:
		c2.global_position=punto1.global_position
		get_parent().add_child(c2)
	if salida == 3:
		c3.global_position=punto1.global_position
		get_parent().add_child(c3)
