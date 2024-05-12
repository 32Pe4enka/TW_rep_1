extends Node2D

var item = " "
var amount = 1

func set_item(item_name):
	$Sprite2D.texture = load("res://Materials/items/%s.png" % item_name)
	item = item_name
	pass

func get_item():
	return item
	
func get_amount():
	return amount

func _input(event):
	if event.is_action_pressed("E-click"):
		var Pl = get_parent().get_parent().get_player()
		if abs(Pl.position.x - position.x) < 64 and abs(Pl.position.y - position.y) < 64:
			get_parent().remove_child(self)
			Pl.pick(self)
