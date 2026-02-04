/datum/interaction/lewd/handjob
	name = "手交"
	description = "为对方手淫."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	message = list(
		"为%TARGET%手淫",
		"套弄%TARGET%的阴茎",
		"用力撸%TARGET%的肉棒"
	)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%射在了%CAME_IN%的手上.",
			"%CUMMING%将精液射到了%CAME_IN%的手掌上.",
			"%CUMMING%的精液覆盖了%CAME_IN%的手指."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你射在了%CAME_IN%的手上.",
			"你将精液射到了%CAME_IN%的手掌上.",
			"你的精液覆盖了%CAME_IN%的手指."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%射在了你的手上.",
			"%CUMMING%将精液射到了你的手掌上.",
			"%CUMMING%的精液覆盖了你的手指."
		)
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	user_arousal = 3
	target_pleasure = 4
	target_arousal = 6

/datum/interaction/lewd/handjob/act(mob/living/user, mob/living/target)
	var/obj/item/liquid_container

	// 首先检查活动手
	var/obj/item/cached_item = user.get_active_held_item()
	if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
		liquid_container = cached_item
	else
		// 检查是否拉着容器
		cached_item = user.pulling
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item

	// 如果需要,在消息中添加容器文本
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
