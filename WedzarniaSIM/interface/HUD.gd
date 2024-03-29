extends CanvasLayer


var upgrades: Dictionary
var buy_mode = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	for key in Player.upgrades_dict:
		upgrades[key] = convert(Player.upgrades_dict[key]["count"], TYPE_STRING)
	
	
	$Upgrades/UpgradeButton1/Label.text = convert(Player.click_count, TYPE_STRING)
	$Upgrades/UpgradeButton2/Label.text = upgrades["auto_clicker"]
	$Upgrades/UpgradeButton3/Label.text = upgrades["firewood"]
	$Upgrades/UpgradeButton4/Label.text = upgrades["gryl"]
	$Upgrades/UpgradeButton5/Label.text = upgrades["dutch_oven"]
	$Upgrades/UpgradeButton6/Label.text = upgrades["smoke_machine"]
	$Upgrades/UpgradeButton7/Label.text = upgrades["gryl_starego"]
	$Upgrades/UpgradeButton8/Label.text = upgrades["placeholder_1"]
	
	$Upgrades/UpgradeButton1/Label2.text = convert(5 + Player.click_count, TYPE_STRING)
	$Upgrades/UpgradeButton2/Label2.text = convert(Player.upgrades_dict["auto_clicker"]["cost"], TYPE_STRING)
	$Upgrades/UpgradeButton3/Label2.text = convert(Player.upgrades_dict["firewood"]["cost"], TYPE_STRING)
	$Upgrades/UpgradeButton4/Label2.text = convert(Player.upgrades_dict["gryl"]["cost"], TYPE_STRING)
	$Upgrades/UpgradeButton5/Label2.text = convert(Player.upgrades_dict["dutch_oven"]["cost"], TYPE_STRING)
	$Upgrades/UpgradeButton6/Label2.text = convert(Player.upgrades_dict["smoke_machine"]["cost"], TYPE_STRING)
	$Upgrades/UpgradeButton7/Label2.text = convert(Player.upgrades_dict["gryl_starego"]["cost"], TYPE_STRING)
	$Upgrades/UpgradeButton8/Label2.text = convert(Player.upgrades_dict["placeholder_1"]["cost"], TYPE_STRING)
	


func _on_BuyModeButton_pressed():
	if buy_mode == -1:
		buy_mode = 1
	elif buy_mode == 1:
		buy_mode = 10
	elif buy_mode == 10:
		buy_mode = 25
	elif buy_mode == 25:
		buy_mode = 100
	elif buy_mode == 100:
		buy_mode = -1
	
	if buy_mode == 1:
		$Upgrades/BuyModeButton.texture_normal = load("res://interface/images/buy_modes/buy_mode_1.png")
	elif buy_mode == 10:
		$Upgrades/BuyModeButton.texture_normal = load("res://interface/images/buy_modes/buy_mode_2.png")
	elif buy_mode == 25:
		$Upgrades/BuyModeButton.texture_normal = load("res://interface/images/buy_modes/buy_mode_3.png")
	elif buy_mode == 100:
		$Upgrades/BuyModeButton.texture_normal = load("res://interface/images/buy_modes/buy_mode_4.png")
	elif buy_mode == -1:
		$Upgrades/BuyModeButton.texture_normal = load("res://interface/images/buy_modes/buy_mode_max.png")


func _on_UpgradeButton1_pressed():
	var ryba = Player.smoked_fisz_currency
	var cost = 5 + Player.click_count
	var count = 0
	
	if ryba >= cost:
		count = floor(ryba / cost)
		
		if count > buy_mode and buy_mode != -1:
			count = buy_mode
			
		Player.smoked_fisz_currency -= count * cost
		Player.click_power += count * 10
		Player.click_count += count


func _on_UpgradeButton2_pressed():
	var ryba = Player.smoked_fisz_currency
	var cost = Player.upgrades_dict["auto_clicker"]["cost"]
	var count = 0
	
	if ryba >= cost:
		count = floor(ryba / cost)
		
		if count > buy_mode and buy_mode != -1:
			count = buy_mode
			
		Player.smoked_fisz_currency -= count * cost
		Player.upgrades_dict["auto_clicker"]["count"] += count


func _on_UpgradeButton3_pressed():
	var ryba = Player.smoked_fisz_currency
	var cost = Player.upgrades_dict["firewood"]["cost"]
	var count = 0
	
	if ryba >= cost:
		count = floor(ryba / cost)
		
		if count > buy_mode and buy_mode != -1:
			count = buy_mode
			
		Player.smoked_fisz_currency -= count * cost
		Player.upgrades_dict["firewood"]["count"] += count


func _on_UpgradeButton4_pressed():
	var ryba = Player.smoked_fisz_currency
	var cost = Player.upgrades_dict["gryl"]["cost"]
	var count = 0
	
	if ryba >= cost:
		count = floor(ryba / cost)
		
		if count > buy_mode and buy_mode != -1:
			count = buy_mode
			
		Player.smoked_fisz_currency -= count * cost
		Player.upgrades_dict["gryl"]["count"] += count


func _on_UpgradeButton5_pressed():
	var ryba = Player.smoked_fisz_currency
	var cost = Player.upgrades_dict["dutch_oven"]["cost"]
	var count = 0
	
	if ryba >= cost:
		count = floor(ryba / cost)
		
		if count > buy_mode and buy_mode != -1:
			count = buy_mode
			
		Player.smoked_fisz_currency -= count * cost
		Player.upgrades_dict["dutch_oven"]["count"] += count


func _on_UpgradeButton6_pressed():
	var ryba = Player.smoked_fisz_currency
	var cost = Player.upgrades_dict["smoke_machine"]["cost"]
	var count = 0
	
	if ryba >= cost:
		count = floor(ryba / cost)
		
		if count > buy_mode and buy_mode != -1:
			count = buy_mode
			
		Player.smoked_fisz_currency -= count * cost
		Player.upgrades_dict["smoke_machine"]["count"] += count


func _on_UpgradeButton7_pressed():
	var ryba = Player.smoked_fisz_currency
	var cost = Player.upgrades_dict["gryl_starego"]["cost"]
	var count = 0
	
	if ryba >= cost:
		count = floor(ryba / cost)
		
		if count > buy_mode and buy_mode != -1:
			count = buy_mode
			
		Player.smoked_fisz_currency -= count * cost
		Player.upgrades_dict["gryl_starego"]["count"] += count


func _on_UpgradeButton8_pressed():
	var ryba = Player.smoked_fisz_currency
	var cost = Player.upgrades_dict["placeholder_1"]["cost"]
	var count = 0
	
	if ryba >= cost:
		count = floor(ryba / cost)
		
		if count > buy_mode and buy_mode != -1:
			count = buy_mode
			
		Player.smoked_fisz_currency -= count * cost
		Player.upgrades_dict["placeholder_1"]["count"] += count


func _on_UpgradeButton1_mouse_entered():
	$Upgrades/UpgradeButton1.rect_scale = Vector2(1.05, 1.05)


func _on_UpgradeButton1_mouse_exited():
	$Upgrades/UpgradeButton1.rect_scale = Vector2(1, 1)


func _on_UpgradeButton2_mouse_entered():
	$Upgrades/UpgradeButton2.rect_scale = Vector2(1.05, 1.05)


func _on_UpgradeButton2_mouse_exited():
	$Upgrades/UpgradeButton2.rect_scale = Vector2(1, 1)


func _on_UpgradeButton3_mouse_entered():
	$Upgrades/UpgradeButton3.rect_scale = Vector2(1.05, 1.05)


func _on_UpgradeButton3_mouse_exited():
	$Upgrades/UpgradeButton3.rect_scale = Vector2(1, 1)


func _on_UpgradeButton4_mouse_entered():
	$Upgrades/UpgradeButton4.rect_scale = Vector2(1.05, 1.05)


func _on_UpgradeButton4_mouse_exited():
	$Upgrades/UpgradeButton4.rect_scale = Vector2(1, 1)


func _on_UpgradeButton5_mouse_entered():
	$Upgrades/UpgradeButton5.rect_scale = Vector2(1.05, 1.05)


func _on_UpgradeButton5_mouse_exited():
	$Upgrades/UpgradeButton5.rect_scale = Vector2(1, 1)


func _on_UpgradeButton6_mouse_entered():
	$Upgrades/UpgradeButton6.rect_scale = Vector2(1.05, 1.05)


func _on_UpgradeButton6_mouse_exited():
	$Upgrades/UpgradeButton6.rect_scale = Vector2(1, 1)


func _on_UpgradeButton7_mouse_entered():
	$Upgrades/UpgradeButton7.rect_scale = Vector2(1.05, 1.05)


func _on_UpgradeButton7_mouse_exited():
	$Upgrades/UpgradeButton7.rect_scale = Vector2(1, 1)


func _on_UpgradeButton8_mouse_entered():
	$Upgrades/UpgradeButton8.rect_scale = Vector2(1.05, 1.05)


func _on_UpgradeButton8_mouse_exited():
	$Upgrades/UpgradeButton8.rect_scale = Vector2(1, 1)


func _on_FireButton_mouse_entered():
	$FireButton.rect_scale = Vector2(1.05, 1.05)


func _on_FireButton_mouse_exited():
	$FireButton.rect_scale = Vector2(1, 1)


func _on_BuyModeButton_mouse_entered():
	$Upgrades/BuyModeButton.rect_scale = Vector2(1.05, 1.05)


func _on_BuyModeButton_mouse_exited():
	$Upgrades/BuyModeButton.rect_scale = Vector2(1, 1)


func _on_MenuButton_mouse_entered():
	$MenuButton.rect_scale = Vector2(1.05, 1.05)


func _on_MenuButton_mouse_exited():
	$MenuButton.rect_scale = Vector2(1, 1)
