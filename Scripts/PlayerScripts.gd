extends CharacterBody2D

@export var Max_health = 100
@onready var Health = 65
var speed = 150

func _ready():
	set_HP(Health, Max_health)

func set_HP(Health, Max_health):
	$BarHP.value = Health
	$BarHP.max_value = Max_health	

func update_health():
	$BarHP.value = Health	
