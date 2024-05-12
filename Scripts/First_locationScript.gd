extends Node2D

@onready var item = preload("res://Scenes/itemScenes.tscn")

func get_player():
	return $Player

func update_label(value):
	get_parent().update_label(value)

func _ready():
	var items = [["Strange apple", 3], ["Stick", 8], ["Rock", 5]]
	for i in range(24):
		randomize()
		var a = int(randi_range(0, 2))
		var new_item = item.instantiate()
		$Items.add_child(new_item)
		new_item.set_item(items[a])
		new_item.position = Vector2(int(randf_range(0, 32 * 74)), int(randf_range(0, 32 * 60)))
	pass
