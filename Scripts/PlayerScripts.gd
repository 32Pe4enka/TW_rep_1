extends CharacterBody2D

@export var speed = 150
@onready var ui = get_viewport().get_node("Root/UI/Control") #ссылка на интерфейс

var is_running = false

#func _run(_delta):
	#if input.is_action_pressed("run") and move_and_slide(_delta):
		#run_state()
#
#func _run_state(_delta):
	#speed = 300
