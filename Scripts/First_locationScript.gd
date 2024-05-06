extends Node2D

@onready var item = preload("res://Scenes/itemScenes.tscn")

func get_player():
	return $Player
	

func update_label(value):
	get_parent().update_label(value)

func _ready():
	var items = ["Strange apple", "Stick", "Rock", "Strange apple"]
	for i in range(18):
		randomize()
		var a = int(randi_range(0, 3))
		var new_item = item.instantiate()
		$Items.add_child(new_item)
		new_item.set_item(items[a])
		new_item.position = Vector2(int(randi_range(0, 32 * 67)), int(randi_range(0, 321)))
	pass
