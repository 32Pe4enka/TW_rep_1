extends NinePatchRect

@onready var item = preload("res://Scenes/invt_itemScenes.tscn")
@onready var container = $Scroll/Grid

func _ready():
	clear()
	visible = false

func clear():
	for i in container.get_children():
		container.remove_child(i)
		i.queue_free()
		
func show_inventory(Inventory):
	for i in Inventory.keys():
		var new_item = item.instantiate()
		container.add_child(new_item)
		new_item.set_item(i, Inventory[i])
