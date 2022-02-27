extends Control


func _ready():
	visible = false
	

func _process(delta):
	if $ExitButton.pressed:
		visible = false
		
	if $VBoxContainer/HBoxContainer/ExitButton.pressed:
		get_tree().quit()


func _on_MenuButton_pressed():
	visible = not visible


func _on_AchievementButton_mouse_entered():
	$VBoxContainer/HBoxContainer/AchievementButton.rect_scale = Vector2(1.05, 1.05)


func _on_AchievementButton_mouse_exited():
	$VBoxContainer/HBoxContainer/AchievementButton.rect_scale = Vector2(1, 1)


func _on_ExitButton_mouse_entered():
	$VBoxContainer/HBoxContainer/ExitButton.rect_scale = Vector2(1.05, 1.05)


func _on_ExitButton_mouse_exited():
	$VBoxContainer/HBoxContainer/ExitButton.rect_scale = Vector2(1, 1)


func _on_HSlider_value_changed(value):
	$AudioStreamPlayer2D.volume_db = value
