extends Node

var modifier_archiv_dict: Dictionary = {
	sledzik_na_raz = false,
	great_opor_TUNA_ty = false,
	the_production_is_SCALing_up = false
}

var fisz_count_archiv_dict: Dictionary = {
	cos_jest_fishy = false,
	what_does_a_BASS_say = false,
	dont_make_a_CLOWNFISH = false
}

func _process(delta):
	var modifier = Player.progress_modifier
	var count = Player.smoked_fisz_currency
	
	print(count)
	
	if modifier > 100 and not modifier_archiv_dict["sledzik_na_raz"]:
		modifier_archiv_dict["sledzik_na_raz"] = true
		print("śledzik")
	if modifier > 1000 and not modifier_archiv_dict["great_opor_TUNA_ty"]:
		modifier_archiv_dict["great_opor_TUNA_ty"] = true
		print("tuna")
	if modifier > 10000 and not modifier_archiv_dict["the_production_is_SCALing_up"]:
		modifier_archiv_dict["the_production_is_SCALing_up"] = true
		print("scala")
		
	if count > 100 and not fisz_count_archiv_dict["cos_jest_fishy"]:
		fisz_count_archiv_dict["cos_jest_fishy"] = true
		print("fishy")
	if count > 1000 and not fisz_count_archiv_dict["what_does_a_BASS_say"]:
		fisz_count_archiv_dict["what_does_a_BASS_say"] = true
		print("bass")
	if count > 10000 and not fisz_count_archiv_dict["dont_make_a_CLOWNFISH"]:
		fisz_count_archiv_dict["dont_make_a_CLOWNFISH"] = true
		print("clown")
	 
