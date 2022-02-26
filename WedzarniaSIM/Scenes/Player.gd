extends Node

var _timer = null

var smoked_fisz_currency: int = 0
var upgrades_dict: Dictionary = {
	a = 10,
	b = 10,
	c = 100
}

var upgrades_value_dict: Dictionary = {
	a = 1,
	b = 10,
	c = 100
}

var current_fish_progress: float = 0.0
var progress_modifier: float = 0.0


# Called when the node enters the scene tree for the first time.
func _ready():
	init_timer()

func _on_Timer_timeout():
	update_progress_modifier()
	progress_fisz()
	fish_readiness_check()

func progress_fisz():
	print(current_fish_progress)
	current_fish_progress += progress_modifier

func update_progress_modifier():
	var sum_of_modifiers = 0
	for elem in upgrades_dict:
		sum_of_modifiers += upgrades_dict[elem] * upgrades_value_dict[elem]
	progress_modifier = sum_of_modifiers

func fish_readiness_check():
	if (current_fish_progress >= 100):
		smoked_fisz_currency += floor(current_fish_progress/100)
		current_fish_progress -= floor(current_fish_progress/100) * 100
	elif current_fish_progress < 0:
		current_fish_progress = 0

func init_timer():
	_timer = Timer.new()
	add_child(_timer)
	_timer.connect("timeout", self, "_on_Timer_timeout")
	_timer.set_wait_time(1.0)
	_timer.set_one_shot(false) # Make sure it loops
	_timer.start()
