extends KinematicBody2D

var speed = 350
var velocity = Vector2()

func menu():
	if Input.is_action_pressed("ui_home"):
		get_tree().change_scene("res://menu.tscn")

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	velocity = velocity.normalized() * speed
	
	if velocity == Vector2.ZERO:
		$AnimationTree.get("parameters/playback").travel("Idle")
	else:
		$AnimationTree.get("parameters/playback").travel("Walk")
		$AnimationTree.set("parameters/Walk/blend_position", velocity)
		$AnimationTree.set("parameters/Idle/blend_position", velocity)
		
func _physics_process(delta):
	menu()
	get_input()
	velocity = move_and_slide(velocity)
