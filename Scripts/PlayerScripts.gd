extends CharacterBody2D

@export var speed = 150
var items = 0

func pick(item):
	items += 1
	get_parent().update_label(items)

func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()

#func _run(_delta):
	#if input.is_action_pressed("run") and move_and_slide(_delta):
		#run_state()
#
#func _run_state(_delta):
	#speed = 300
