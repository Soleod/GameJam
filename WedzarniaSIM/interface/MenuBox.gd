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
