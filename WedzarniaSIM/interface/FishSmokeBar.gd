extends TextureProgress


var reg_time = 0.02
var actual_value = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$RegressionTimer.wait_time = reg_time
	$RegressionTimer.autostart = true


func _process(delta):
	value = Player.current_fish_progress


func _on_FireButton_pressed():
	Player.current_fish_progress += 10
	

func _on_RegressionTimer_timeout():
	Player.current_fish_progress -= 20 * reg_time
	
	if Player.current_fish_progress < 0:
		Player.current_fish_progress = 0
