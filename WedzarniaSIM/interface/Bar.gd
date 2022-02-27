extends Control


func _ready():
	pass # Replace with function body.


func _process(delta):
	$PerSecBox/PerSecLabel.text = convert(Player.fish_per_sec, TYPE_STRING) + " /s"
