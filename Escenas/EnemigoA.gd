extends KinematicBody2D

var speed = 500


# Called when the node enters the scene tree for the first time.
func _process(delta):
	position.y += speed*delta


func 
