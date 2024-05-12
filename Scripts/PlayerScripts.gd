extends CharacterBody2D

@export var speed = 150
var items = 0
var is_running = false
var Inventory = {}

func pick(item):
	var it = item.get_name()
	if it in Inventory.keys():
		Inventory[it] += it.get.amount()
	else: 
		Inventory[it] = it.get.amount()

func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	
	if Input.is_action_pressed("Run"):
		is_running = true
	else:
		is_running = false
		
	velocity = input_direction * (speed * 2 if is_running else speed)

func _physics_process(_delta):
	get_input()
	move_and_slide()


#func _run(_delta):
	#if input.is_action_pressed("run") and move_and_slide(_delta):
		#run_state()
#
#func _run_state(_delta):
	#speed = 300
