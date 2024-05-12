extends TextureRect

func set_item(item_name, amount):
	texture = load("res://Materials/items/%s.png" % item_name)
	$Amount.text = str(amount)
