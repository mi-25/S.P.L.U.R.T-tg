/datum/interaction/lewd/finger
	name = "指交阴部"
	description = "用手指插对方的小穴."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	message = list(
		"用手指插%TARGET%",
		"用手指插%TARGET%的小穴",
		"用力用手指插%TARGET%"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 3
	user_arousal = 3
	target_arousal = 5
	target_pain = 0

/datum/interaction/lewd/finger/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/obj/item/liquid_container

	var/obj/item/cached_item = user.get_active_held_item()
	if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
		liquid_container = cached_item
	else
		cached_item = user.pulling
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item

	if(liquid_container)
		LAZYADD(fluid_transfer_objects, list("[REF(target)]" = liquid_container))
		message = list(
			"在\the [liquid_container]上方用手指插%TARGET%",
			"在\the [liquid_container]上方用手指插%TARGET%的小穴",
			"拿着\the [liquid_container]用力用手指插%TARGET%"
		)
		. = ..()
		LAZYREMOVE(fluid_transfer_objects, REF(target))
		message = original_messages
	else
		. = ..()

/datum/interaction/lewd/fingerass
	name = "指交肛门"
	description = "用手指插对方的肛门."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_BOTH)
	message = list(
		"用手指插%TARGET%的肛门",
		"用手指插%TARGET%的后穴",
		"用力用手指插%TARGET%"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 3
	user_arousal = 3
	target_arousal = 5
	target_pain = 2

