extends Node2D

var item = " "
var amount = 1
var stack = 8

func set_item(properties):
	$Sprite2D.texture = load("res://Materials/items/%s.png" % properties[0])
	item = properties[0]
	stack = properties[1]

func get_item():
	return item
	
func get_amount():
	return amount
	
func get_stack_item():
	return stack

func _input(event):
	if event.is_action_pressed("E-click"):
		var Pl = get_parent().get_parent().get_player()
		if abs(Pl.position.x - position.x) < 64 and abs(Pl.position.y - position.y) < 64:
			get_parent().remove_child(self)
			Pl.pick(self)
