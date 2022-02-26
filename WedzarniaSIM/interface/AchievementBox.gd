extends Control

var mod_achieved: Dictionary = {
	sledzik_na_raz = false,
	great_opor_TUNA_ty = false,
	the_production_is_SCALing_up = false
}

var fisz_achieved: Dictionary = {
	cos_jest_fishy = false,
	what_does_a_BASS_say = false,
	dont_make_a_CLOWNFISH = false
}

func _ready():
	visible = false
	$VBoxContainer/Achievement1.texture = load("res://interface/images/achievements/no_achievement.png")
	$VBoxContainer/Achievement2.texture = load("res://interface/images/achievements/no_achievement.png")
	$VBoxContainer/Achievement3.texture = load("res://interface/images/achievements/no_achievement.png")
	$VBoxContainer/Achievement4.texture = load("res://interface/images/achievements/no_achievement.png")
	$VBoxContainer/Achievement5.texture = load("res://interface/images/achievements/no_achievement.png")
	$VBoxContainer/Achievement6.texture = load("res://interface/images/achievements/no_achievement.png")
	
	$AchievementTimer.wait_time = 1
	$AchievementTimer.start()


func _on_AchievementButton_pressed():
	visible = true


func _on_AchievementTimer_timeout():
	if ArchivementManager.modifier_archiv_dict["sledzik_na_raz"] and not mod_achieved["sledzik_na_raz"]:
		$VBoxContainer/Achievement1.texture = load("res://interface/images/achievement.png")
		mod_achieved["sledzik_na_raz"] = true
	if ArchivementManager.modifier_archiv_dict["great_opor_TUNA_ty"] and not mod_achieved["great_opor_TUNA_ty"]:
		$VBoxContainer/Achievement2.texture = load("res://interface/images/achievement.png")
		mod_achieved["great_opor_TUNA_ty"] = true
	if ArchivementManager.modifier_archiv_dict["the_production_is_SCALing_up"] and not mod_achieved["the_production_is_SCALing_up"]:
		$VBoxContainer/Achievement3.texture = load("res://interface/images/achievement.png")
		mod_achieved["the_production_is_SCALing_up"] = true
	if ArchivementManager.fisz_count_archiv_dict["cos_jest_fishy"] and not fisz_achieved["cos_jest_fishy"]:
		$VBoxContainer/Achievement4.texture = load("res://interface/images/achievement.png")
		fisz_achieved["cos_jest_fishy"] = true
	if ArchivementManager.fisz_count_archiv_dict["what_does_a_BASS_say"] and not fisz_achieved["what_does_a_BASS_say"]:
		$VBoxContainer/Achievement5.texture = load("res://interface/images/achievement.png")
		fisz_achieved["what_does_a_BASS_say"]
	if ArchivementManager.fisz_count_archiv_dict["dont_make_a_CLOWNFISH"] and not fisz_achieved["dont_make_a_CLOWNFISH"]:
		$VBoxContainer/Achievement6.texture = load("res://interface/images/achievement.png")
		fisz_achieved["dont_make_a_CLOWNFISH"]


func _on_ExitButton_pressed():
	visible = false
