/datum/interaction/lewd/titgrope_self
	name = "揉弄乳房（自己）"
	description = "揉弄自己的乳房。"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	user_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_ANY)
	usage = INTERACTION_SELF
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_BOTH)
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	message = list(
		"轻轻抓摸自己的乳房",
		"轻柔地挤压自己的乳房",
		"抓住自己的乳房",
		"用几根手指抚摸自己的乳房",
		"细腻地挑逗自己的乳头",
		"用触摸划过自己的乳房"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/squelch1.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 2
	user_arousal = 3

/datum/interaction/lewd/titgrope_self/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!ishuman(user))
		return
	if(prob(5 + user.arousal))
		user.visible_message(span_lewd("<b>\The [user]</b> [pick(
			"因欲望而颤抖.",
			"轻声呻吟.",
			"发出柔和的呻吟.",
			"喘息着.",
			"轻轻颤抖.",
			"在双手抚摸裸露皮肤时颤抖.")]"))

	var/obj/item/liquid_container
	var/obj/item/cached_item = user.get_active_held_item()
	if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
		liquid_container = cached_item
	else
		cached_item = user.pulling
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item

	if(liquid_container)
		var/obj/item/organ/genital/breasts/breasts = user.get_organ_slot(ORGAN_SLOT_BREASTS)
		if(breasts?.internal_fluid_datum)
			// 根据乳房的饱满程度计算乳汁量（0.5到2倍）
			var/milk_multiplier = 0.5
			if(breasts.internal_fluid_maximum > 0)
				milk_multiplier = 0.5 + (1.5 * (breasts.reagents.total_volume / breasts.internal_fluid_maximum))

			var/transfer_amount = rand(1, 3 * milk_multiplier)
			var/datum/reagents/R = new(breasts.internal_fluid_maximum)
			breasts.reagents.trans_to(R, transfer_amount)
			R.trans_to(liquid_container, R.total_volume, transferred_by = user)
			qdel(R)

/datum/interaction/lewd/self_nipsuck
	name = "吮吸乳头（自己）"
	description = "吮吸自己的乳头。"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	user_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED)
	additional_details = list(INTERACTION_MAY_CONTAIN_DRINK)
	usage = INTERACTION_SELF
	message = list(
		"将自己的奶子送到嘴边并深深吮吸",
		"大口喝下自己的新鲜乳汁",
		"用自己温暖的乳汁填满嘴巴"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 3
	user_arousal = 5

/datum/interaction/lewd/self_nipsuck/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!ishuman(user))
		return
	var/obj/item/organ/genital/breasts/breasts = user.get_organ_slot(ORGAN_SLOT_BREASTS)
	if(breasts?.internal_fluid_datum)
		// 根据乳房的饱满程度计算乳汁量（0.5到2倍）
		var/milk_multiplier = 0.5
		if(breasts.internal_fluid_maximum > 0)
			milk_multiplier = 0.5 + (1.5 * (breasts.reagents.total_volume / breasts.internal_fluid_maximum))

		var/transfer_amount = rand(1, 3 * milk_multiplier)
		var/datum/reagents/R = new(breasts.internal_fluid_maximum)
		breasts.reagents.trans_to(R, transfer_amount)
		R.trans_to(user, R.total_volume, transferred_by = user)
		qdel(R)

/datum/interaction/lewd/breastfuck_self
	name = "乳交（自己）"
	description = "用自己的乳房自慰。"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	user_required_parts = list(
		ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED,
		ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED
	)
	usage = INTERACTION_SELF
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%射满了自己的乳房",
		"%CUMMING%将精液射到自己的奶子上",
		"%CUMMING%用精液覆盖自己的乳房"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"你射满了自己的乳房",
		"你将精液射到自己的奶子上",
		"你用精液覆盖自己的乳房"
	))
	message = list(
		"插入自己的乳房",
		"将肉棒滑入自己的乳房之间",
		"在自己的奶子之间抽插",
		"用自己的乳房取悦自己"
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
