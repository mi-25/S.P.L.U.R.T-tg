/datum/interaction/lewd/finger_self_vagina
	name = "指交小穴（自己）"
	description = "指交自己的小穴。"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	usage = INTERACTION_SELF
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA)
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%在自己的手指上激烈高潮",
		"%CUMMING%在手上高潮时颤抖",
		"%CUMMING%用手指让自己达到高潮"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"你在自己的手指上激烈高潮",
		"你在手上高潮时颤抖",
		"你用手指让自己达到高潮"
	))
	message = list(
		"深深地指交自己的小穴",
		"指交自己的小穴",
		"玩弄自己的小穴",
		"用力指交自己的小穴"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	user_arousal = 6

/datum/interaction/lewd/finger_self_vagina/act(mob/living/user, mob/living/target)
	var/obj/item/liquid_container

	var/obj/item/cached_item = user.get_active_held_item()
	if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
		liquid_container = cached_item
	else
		cached_item = user.pulling
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item

	if(liquid_container)
		var/list/original_messages = message.Copy()
		var/chosen_message = pick(message)
		LAZYADD(fluid_transfer_objects, list("[REF(target)]" = liquid_container))
		message = list("[chosen_message] over \the [liquid_container]")
		. = ..()
		LAZYREMOVE(fluid_transfer_objects, REF(target))
		message = original_messages
	else
		. = ..()

/datum/interaction/lewd/finger_self_anus
	name = "指交后穴（自己）"
	description = "指交自己的后穴。"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	user_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	usage = INTERACTION_SELF
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_BOTH)
	message = list(
		"指交自己",
		"指交自己的肛门",
		"用力指交自己"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 3
	user_arousal = 5
