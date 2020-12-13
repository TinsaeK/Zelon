extends KinematicBody2D

const MOVE_SPEED=300

onready var rayCast = $RayCast2D


func _ready():
	yield(get_tree(), "idle_frame")
	get_tree().call_group("enemies", "set_player", self)\

	
func _physics_process(delta):
	var move_vec =Vector2()
	if Input.is_action_pressed("move_up"):
		move_vec.y -=1
	if Input.is_action_pressed("move_down"):
		move_vec.y +=1
	if Input.is_action_pressed("move_left"):
		move_vec.x -=1
	if Input.is_action_pressed("move_right"):
		move_vec.x +=1
	move_vec = move_vec.normalized()
	move_and_collide(move_vec * MOVE_SPEED * delta)
	
	if position.x>=603 and position.x<=639 and position.y>=623 and position.y <= 640:
		get_tree().change_scene("res://endscreen.tscn")

	
	

