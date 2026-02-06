/mob/living/carbon/human/verb/climax_verb()
	set name = "高潮"
	set category = "IC"

	if(!has_status_effect(/datum/status_effect/climax_cooldown))
		if(tgui_alert(usr, "你确定要高潮吗？", "高潮", list("是", "否")) == "是")
			if(stat != CONSCIOUS)
				to_chat(usr, span_warning("你现在无法高潮..."))
				return
			else
				climax(TRUE)
	else
		to_chat(src, span_warning("你现在无法高潮！"))

/mob/living/verb/reflexes_verb()
	set name = "触碰意愿"
	set category = "IC"
	if(!HAS_TRAIT_FROM(src, TRAIT_QUICKREFLEXES, REF(src)))
		ADD_TRAIT(src, TRAIT_QUICKREFLEXES, REF(src))
		to_chat(src, span_notice("[get_reflexes_gain_text()]"))
	else
		REMOVE_TRAIT(src, TRAIT_QUICKREFLEXES, REF(src))
		to_chat(src, span_notice("[get_reflexes_lose_text()]"))

/mob/living/proc/get_reflexes_gain_text()
	return "你现在不想被触碰。"

/mob/living/proc/get_reflexes_lose_text()
	return "你现在允许自己被触碰。"

/mob/living/silicon/get_reflexes_gain_text()
	return "我们的系统将拒绝肢体接触。"

/mob/living/silicon/get_reflexes_lose_text()
	return "我们的系统将允许肢体接触。"

/mob/living/carbon/human/Initialize(mapload)
	. = ..()
	if(CONFIG_GET(flag/disable_erp_preferences))
		verbs -= /mob/living/carbon/human/verb/climax_verb
	if(CONFIG_GET(flag/disable_lewd_items))
		verbs -= /mob/living/carbon/human/verb/safeword

/mob/living/carbon/human/verb/remove_lewd_items()
	set name = "移除色情物品"
	set category = "OOC"
	set desc = "移除你身上所有的色情物品。"
	// literally just another way to safeword
	safeword()

/mob/living/carbon/human/verb/safeword()
	set name = "OOC安全词"
	set category = "OOC"
	set desc = "移除你身上所有的色情物品。"
	SEND_SIGNAL(src, COMSIG_OOC_ESCAPE)
	log_message("[key_name(src)] used the OOC Safe Word verb.", LOG_ATTACK)
	for(var/obj/item/equipped_item in get_equipped_items())
		if(!(equipped_item.type in GLOB.pref_checked_clothes))
			continue

		log_message("[equipped_item] was removed from [key_name(src)].", LOG_ATTACK)
		dropItemToGround(equipped_item, TRUE)

	// Leashes are treated a smidge different than the rest of the clothing; and need their own handling here.
	var/leash_check = src?.GetComponent(/datum/component/leash/erp)
	if(leash_check)
		qdel(leash_check)

	// Vore Edit
	if(istype(loc, /obj/vore_belly))
		forceMove(get_turf(src))

	return TRUE

/mob/living/carbon/human/verb/lick(mob/living/carbon/human/target in get_adjacent_humans())
	set name = "舔舐"
	set category = "IC"

	if(!istype(target))
		return FALSE

	var/taste = target?.dna?.features["taste"]
	if(!taste)
		to_chat(src, span_warning("[target]似乎没有味道。"))
		return FALSE

	to_chat(src, span_notice("[target]尝起来像[taste]。"))
	to_chat(target, span_notice("[src]舔了你。"))

/mob/living/carbon/human/verb/smell(mob/living/carbon/human/target in get_adjacent_humans())
	set name = "嗅闻"
	set category = "IC"

	if(!istype(target))
		return FALSE

	var/smell = target?.dna?.features["smell"]
	if(!smell)
		to_chat(src, span_warning("[target]似乎没有气味。"))
		return FALSE

	to_chat(src, span_notice("[target]闻起来像[smell]。"))

/// Returns a list containing all of the humans adjacent to the user.
/mob/living/proc/get_adjacent_humans()
	var/list/nearby_humans = orange(1, src)
	for(var/mob/living/carbon/human/nearby_human as anything in nearby_humans)
		if(ishuman(nearby_human))
			continue

		nearby_humans -= nearby_human

	return nearby_humans

