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
	clear()
	for i in Inventory.keys():
		var amount = Inventory[i][0]
		for j in range(amount / Inventory[i][1] + 1):
		
			var new_item = item.instantiate()
			if amount >= Inventory[i][1]:
				container.add_child(new_item)
				new_item.set_item(i, Inventory[i][1])
				amount -= Inventory[i][1]
			elif amount > 0:
				container.add_child(new_item)
				new_item.set_item(i, amount)
				amount = 0
