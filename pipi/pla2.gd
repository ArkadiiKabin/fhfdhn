extends CharacterBody2D

var move_speed = 450


const IDIS=-400.0
const KJD=300.0

func _physics_process(delta):
	move_and_collide(velocity*delta)
	var target=Godot.player
	velocity=(target.position-position)
	
func _ready():
	pass
	

