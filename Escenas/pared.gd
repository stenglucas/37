extends KinematicBody2D


signal RM1
signal RM2
signal RM3

func _ready():
	pass # Replace with function body.


func restarPuntos():
	emit_signal("RM1")

func restarPuntos2():
	emit_signal("RM2")

func restarPuntos3():
	emit_signal("RM3")
