extends NinePatchRect


func _process(delta):
	$Label.text = convert(Player.smoked_fisz_currency, TYPE_STRING)
