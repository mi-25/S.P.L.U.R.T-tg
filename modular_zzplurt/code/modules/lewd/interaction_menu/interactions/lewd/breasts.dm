/datum/interaction/lewd/breastfeed
	name = "哺乳"
	description = "给对方哺乳."
	user_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED)
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH, INTERACTION_REQUIRE_SELF_HUMAN)
	additional_details = list(INTERACTION_MAY_CONTAIN_DRINK)
	message = list(
		"将乳房压在%TARGET%的嘴上,将温暖的%MILK%喷进对方嘴里.",
		"挤压着自己的乳房,将温暖甜美的%MILK%灌满%TARGET%的嘴,喘息着.",
		"让大量丰沛的%MILK%涂满%TARGET%的喉咙深处."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 2
	user_arousal = 3
	target_pleasure = 0
	target_arousal = 2

/datum/interaction/lewd/breastfeed/act(mob/living/carbon/human/user, mob/living/carbon/human/target)
	var/obj/item/organ/genital/breasts/breasts = user.get_organ_slot(ORGAN_SLOT_BREASTS)
	if(!breasts?.internal_fluid_datum)
		return

	var/datum/reagent/milk = find_reagent_object_from_type(breasts.internal_fluid_datum)
	var/list/original_messages = message.Copy()
	var/chosen_message = pick(message)
	chosen_message = replacetext(chosen_message, "%MILK%", LOWER_TEXT(milk.name))
	message = list(chosen_message)
	. = ..()
	message = original_messages

/datum/interaction/lewd/breastfeed/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	var/obj/item/organ/genital/breasts/breasts = user.get_organ_slot(ORGAN_SLOT_BREASTS)
	if(breasts?.internal_fluid_datum)
		// Calculate milk amount based on how full the breasts are (0.5 to 2 multiplier)
		var/milk_multiplier = 0.5
		if(breasts.internal_fluid_maximum > 0)
			milk_multiplier = 0.5 + (1.5 * (breasts.reagents.total_volume / breasts.internal_fluid_maximum))

		var/transfer_amount = rand(1, 3 * milk_multiplier)
		var/datum/reagents/R = new(breasts.internal_fluid_maximum)
		breasts.reagents.trans_to(R, transfer_amount)
		R.trans_to(target, R.total_volume, transferred_by = user)
		qdel(R)

/datum/interaction/lewd/titgrope
	name = "揉捏乳房"
	description = "揉捏对方的乳房."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_ANY)
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	message = list(
		"轻柔地揉捏%TARGET%的乳房.",
		"温柔地挤压%TARGET%的乳房.",
		"抓握%TARGET%的乳房.",
		"用几根手指抚摸%TARGET%的乳房.",
		"细腻地挑逗%TARGET%的乳头.",
		"用手指轻抚%TARGET%的乳房."
	)
	sound_possible = list('modular_zzplurt/sound/interactions/squelch1.ogg')
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	user_arousal = 2
	target_pleasure = 3
	target_arousal = 5

/datum/interaction/lewd/titgrope/act(mob/living/user, mob/living/target)
	var/obj/item/liquid_container
	var/list/original_messages = message.Copy()

	// Check for container
	var/obj/item/cached_item = user.get_active_held_item()
	if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
		liquid_container = cached_item
	else
		cached_item = user.pulling
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item

	if(liquid_container)
		message = list("将%TARGET%的乳房挤奶到\the [liquid_container]中.")
		. = ..()
		message = original_messages
		return

	// Handle different intents
	switch(resolve_intent_name(user))
		if("harm")
			message = list(
				"粗暴地揉捏%TARGET%的乳房.",
				"抓住%TARGET%的乳房.",
				"用力挤压%TARGET%的乳房.",
				"拍打%TARGET%的乳房.",
				"粗鲁地揉捏%TARGET%的乳房."
			)
		if("disarm")
			message = list(
				"顽皮地拍打%TARGET%的乳房.",
				"挑逗地揉捏%TARGET%的乳房.",
				"玩闹地挤压%TARGET%的乳房.",
				"调皮地抚摸%TARGET%的乳房.",
				"淘气地挑逗%TARGET%的乳头."
			)
		if("grab")
			message = list(
				"牢牢抓住%TARGET%的乳房.",
				"占有欲地揉捏%TARGET%的乳房.",
				"急切地揉搓%TARGET%的乳房.",
				"粗暴地抚摸%TARGET%的乳房.",
				"贪婪地挤压%TARGET%的乳房."
			)
	. = ..()
	message = original_messages

/datum/interaction/lewd/titgrope/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	var/obj/item/liquid_container

	var/obj/item/cached_item = user.get_active_held_item()
	if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
		liquid_container = cached_item
	else
		cached_item = user.pulling
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item

	if(liquid_container)
		var/obj/item/organ/genital/breasts/breasts = target.get_organ_slot(ORGAN_SLOT_BREASTS)
		if(breasts?.internal_fluid_datum)
			// Calculate milk amount based on how full the breasts are (0.5 to 2 multiplier)
			var/milk_multiplier = 0.5
			if(breasts.internal_fluid_maximum > 0)
				milk_multiplier = 0.5 + (1.5 * (breasts.reagents.total_volume / breasts.internal_fluid_maximum))

			var/transfer_amount = rand(1, 3 * milk_multiplier)
			var/datum/reagents/R = new(breasts.internal_fluid_maximum)
			breasts.reagents.trans_to(R, transfer_amount)
			R.trans_to(liquid_container, R.total_volume, transferred_by = user)
			qdel(R)

	// Handle arousal effects based on intent
	var/intent = resolve_intent_name(user)
	if(intent != "harm" && prob(5 + target.arousal))
		var/list/arousal_messages
		switch(intent)
			if("help")
				arousal_messages = list(
					"%TARGET%因兴奋而颤抖.",
					"%TARGET%轻声呻吟.",
					"%TARGET%发出柔和的呻吟.",
					"%TARGET%喘息着.",
					"%TARGET%轻轻颤抖.",
					"%TARGET%在手抚过裸露肌肤时颤栗."
				)
			if("disarm")
				arousal_messages = list(
					"%TARGET%顽皮地扭动.",
					"%TARGET%发出挑逗的咯咯笑.",
					"%TARGET%咬着嘴唇.",
					"%TARGET%挑逗地扭动.",
					"%TARGET%发出调情的喘息."
				)
			if("grab")
				arousal_messages = list(
					"%TARGET%急切地呻吟.",
					"%TARGET%迎合着触摸.",
					"%TARGET%发出渴望的呻吟.",
					"%TARGET%兴奋地颤抖.",
					"%TARGET%期待地颤栗."
				)

		if(arousal_messages)
			var/target_message = list(pick(arousal_messages))
			target.visible_message(span_lewd(replacetext(target_message, "%TARGET%", target)))

/datum/interaction/lewd/breastsmother
	name = "乳房窒息"
	description = "用你的乳房闷住对方."
	interaction_requires = list(
		INTERACTION_REQUIRE_TARGET_MOUTH
	)
	user_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED)
	message = list(
		"将乳房压在%TARGET%的脸上",
		"用乳房闷住%TARGET%的脸",
		"强迫%TARGET%的脸埋进自己的乳房之间",
		"用乳房夹住%TARGET%的头"
	)
	user_messages = list(
		"你感受到%TARGET%的脸被压在你的乳房之间",
		"你用胸部压住%TARGET%的头",
		"你让%TARGET%的脸深深埋进你的乳沟"
	)
	target_messages = list(
		"你的脸被压在%USER%的乳房之间",
		"%USER%的乳房闷住了你的脸",
		"你的视野被%USER%的乳沟填满"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/squelch1.ogg',
		'modular_zzplurt/sound/interactions/squelch2.ogg',
		'modular_zzplurt/sound/interactions/squelch3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3

/datum/interaction/lewd/breastsmother/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!istype(user))
		return
	if(prob((user.dna.features["sexual_potency"] * 5) + 15))
		target.adjust_oxy_loss(2)
		target.adjust_arousal(5)
		user.adjust_arousal(8)

/datum/interaction/lewd/do_boobjob
	name = "乳交"
	description = "给对方乳交."
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	user_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"%CUMMING%射在了%CAME_IN%的乳房上",
		"%CUMMING%将精液射到了%CAME_IN%的乳房上",
		"%CUMMING%的精液覆盖了%CAME_IN%的胸部"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"%CUMMING%射在了你的乳房上",
		"%CUMMING%将精液射到了你的乳房上",
		"%CUMMING%的精液覆盖了你的胸部"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"你射在了%CAME_IN%的乳房上",
		"你将精液射到了%CAME_IN%的乳房上",
		"你的精液覆盖了%CAME_IN%的胸部"
	))
	message = list(
		"用乳房包裹%TARGET%的肉棒",
		"用乳房套弄%TARGET%的阴茎",
		"用乳房取悦%TARGET%",
		"用乳房夹住%TARGET%的肉棒"
	)
	user_messages = list(
		"你感受到%TARGET%的肉棒在你的乳房之间跳动",
		"%TARGET%温热的阴茎夹在你的乳房之间感觉很舒服",
		"你用乳房夹紧%TARGET%的肉棒"
	)
	target_messages = list(
		"%USER%柔软的乳房夹住你的肉棒",
		"你的阴茎在%USER%的乳房之间滑动",
		"%USER%柔软的乳房让你感觉美妙"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 4
	user_arousal = 4
	target_arousal = 6
