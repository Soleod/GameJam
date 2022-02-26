extends Control


func _ready():
	visible = false


func _process(delta):
	if $VBoxContainer/HBoxContainer/ExitButton.pressed:
		get_tree().quit()


func _on_TextureButton_pressed():
	visible = not visible
