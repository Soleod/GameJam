extends Node

var _timer = null

var smoked_fisz_currency: int = 0
var prev_fisz_currency: int = 0
var fish_per_sec: int = 0

var click_power: float = 1.0
var click_count: int = 0

var upgrades_dict: Dictionary = {}

var current_fish_progress: float = 0.0
var progress_modifier: float = 0.0


# Called when the node enters the scene tree for the first time.
func _ready():
	init_upgrades()
	init_timer()

func _process(delta):
	fish_readiness_check()

func _on_Timer_timeout():
	update_progress_modifier()
	progress_fisz()
	fish_readiness_check()
	calculate_fps()

func calculate_fps():
	if smoked_fisz_currency - prev_fisz_currency >= 0:
		fish_per_sec = smoked_fisz_currency - prev_fisz_currency
	prev_fisz_currency = smoked_fisz_currency

func progress_fisz():
	current_fish_progress += progress_modifier

func update_progress_modifier():
	var sum_of_modifiers = 0
	for elem in upgrades_dict:
		sum_of_modifiers += upgrades_dict[elem].value * upgrades_dict[elem].count
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

func init_upgrades():
	var auto_clicker = { 
		name = "Auto Clicker", 
		value = 1, 
		cost = 10, 
		count = 0 
	}
	
	var firewood = { 
		name = "Firewood", 
		value = 2, 
		cost = 80, 
		count = 0 
	}
	
	var gryl = { 
		name = "Gryl", 
		value = 100, 
		cost = 640, 
		count = 0 
	}
	
	var dutch_oven = { 
		name = "Dutch Oven", 
		value = 1000, 
		cost = 5120, 
		count = 0
	}
	
	var smoke_machine = { 
		name = "Smoke Machine", 
		value = 10000, 
		cost = 40960, 
		count = 0 
	}
	
	var gryl_starego = { 
		name = "Gryl Starego", 
		value = 100000, 
		cost = 327680, 
		count = 0 
	}
	
	var placeholder_1 = { 
		name = "P1", 
		value = 1000000, 
		cost = 2621440, 
		count = 0 
	}
	
	var placeholder_2 = { 
		name = "P2", 
		value = 10000000, 
		cost = 20971520, 
		count = 0 
	}
	
	upgrades_dict = {
		auto_clicker = auto_clicker,
		firewood = firewood,
		gryl = gryl,
		dutch_oven = dutch_oven,
		smoke_machine = smoke_machine,
		gryl_starego = gryl_starego,
		placeholder_1 = placeholder_1,
		placeholder_2 = placeholder_2
	}
