extends Node2D


func update_label(value):
	get_node("UI/Control/Counter").text = "Предметы: %s" % str(value)

func _ready():
	pass 
