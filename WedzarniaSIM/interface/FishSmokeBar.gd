extends TextureProgress


var reg_time = 0.02
var actual_value = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$RegressionTimer.wait_time = reg_time
	$RegressionTimer.autostart = true


func _process(delta):
	value = actual_value


func _on_FireButton_pressed():
	actual_value += 10
	
	if actual_value < 0:
		actual_value = 0
	elif actual_value > 100:
		actual_value = 100


func _on_RegressionTimer_timeout():
	actual_value -= 20 * reg_time
