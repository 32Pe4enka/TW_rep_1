extends Control

@onready var pack = $PanelInvt

func toggle_inventory(Inventory):
	if pack.visible:
		pack.clear()
		pack.visible = false
	else:
		pack.visible = true
		pack.show_inventory(Inventory)

func update_inventory(Inventory):
	if pack.visible:
		pack.show_inventory(Inventory)
