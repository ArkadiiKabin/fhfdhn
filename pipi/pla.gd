extends CharacterBody2D

var move_speed = 450
#var myvelocity = Vector2(0,0)






# Called when the node enters the scene tree for the first time.
func _ready():
	Godot.player=self


func _physics_process(delta):
	velocity = Vector2(0,0)
	if Input.is_action_pressed("left"):
		velocity.x=-move_speed
	elif Input.is_action_pressed("right"):
		velocity.x=+move_speed
	elif Input.is_action_pressed("down"):
		velocity.y=+move_speed
	elif Input.is_action_pressed("up"):
		velocity.y=-move_speed
	move_and_collide(velocity*delta)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
