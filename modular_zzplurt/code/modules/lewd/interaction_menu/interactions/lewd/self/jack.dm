/datum/interaction/lewd/jack_self
	name = "Jack Off (self)"
	description = "Jerk yourself off."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	usage = INTERACTION_SELF
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%在自己的手上激烈射精",
		"%CUMMING%将精液射到自己的手指上",
		"%CUMMING%射在自己的手掌上"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"你在自己的手上激烈射精",
		"你将精液射到自己的手指上",
		"你射在自己的手掌上"
	))
	message = list(
		"撸自己",
		"抚弄自己的肉棒",
		"抚摸自己的肉棒",
		"用力撸自己的肉棒"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	user_arousal = 6

/datum/interaction/lewd/jack_self/act(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(!ishuman(user))
		return
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
