extends TextureProgress


var reg_time = 0.02
var actual_value = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$RegressionTimer.wait_time = reg_time
	$RegressionTimer.autostart = true


func _process(delta):
	value = Player.current_fish_progress if Player.progress_modifier < 100 else 100
	
	if value == 100:
		texture_progress = load("res://interface/images/progress_bar/progress_anim.tres")
	else:
		texture_progress = load("res://interface/images/progress_bar/progressbar_fill.png")
		


func _on_FireButton_pressed():
	Player.current_fish_progress += 10 * Player.click_power
	

func _on_RegressionTimer_timeout():
	Player.current_fish_progress -= 20 * reg_time
	
	if Player.current_fish_progress < 0:
		Player.current_fish_progress = 0
