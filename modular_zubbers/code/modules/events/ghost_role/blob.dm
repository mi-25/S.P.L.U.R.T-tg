
/datum/round_event/ghost_role/blob/announce(fake)
	. = ..()
	if(fake)
		var/unlucky_victim = "your mother" //debug text that should never trigger but should tell coders that something went wrong without breaking immersion
		var/unlucky_victim_fatty_score = 0
		//Get the fattest person
		for(var/mob/living/carbon/human/possible_fatty as anything in GLOB.human_list)

			if(!possible_fatty.mind)
				continue

			if(possible_fatty.stat == DEAD)
				continue //Too mean

			if(possible_fatty.name != possible_fatty.real_name)
				continue //Not possible to pick up on sensors.

			var/turf/possible_fatty_turf = get_turf(possible_fatty)

			if(!possible_fatty_turf || !is_station_level(possible_fatty_turf.z))
				continue

			var/possible_fatty_score = possible_fatty.nutrition
			if(possible_fatty.has_quirk(/datum/quirk/overweight))
				possible_fatty_score = possible_fatty_score * 1.5 + 1000

			if(possible_fatty_score > unlucky_victim_fatty_score)
				unlucky_victim = "[possible_fatty]" //We don't use .name here because we want "The" to be affixed to it if needed.
				unlucky_victim_fatty_score = possible_fatty_score

		addtimer(CALLBACK(src,PROC_REF(lose_some_weight_fatty),unlucky_victim),rand(60 SECONDS,180 SECONDS))

/datum/round_event/ghost_role/blob/proc/lose_some_weight_fatty(victim)
	priority_announce(
		"[station_name()]上的5级生物危害似乎是误报，我们的传感器错误地将[victim]标记为5级生物危害。\
		提醒所有船员作为纳米传讯安全健康饮食计划的一部分，请保持健康的饮食习惯。",
		"生物危害警报"
	)
