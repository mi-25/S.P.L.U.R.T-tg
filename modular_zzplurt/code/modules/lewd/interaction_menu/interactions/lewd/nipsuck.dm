/datum/interaction/lewd/nipsuck
	name = "吮吸乳头"
	description = "吮吸对方的乳头."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED)
	additional_details = list(INTERACTION_MAY_CONTAIN_DRINK)
	message = list(
		"轻轻吮吸%TARGET%的乳头.",
		"轻轻啃咬%TARGET%的乳头.",
		"舔舐%TARGET%的乳头."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	user_arousal = 2
	target_pleasure = 3
	target_arousal = 5

/datum/interaction/lewd/nipsuck/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()

	// 处理不同意图
	switch(resolve_intent_name(user))
		if("harm")
			message = list(
				"咬%TARGET%的乳头.",
				"粗暴地吮吸%TARGET%的乳头."
			)
			target_pleasure = 4 // 粗暴的吮吸有更高的奖励
			target_arousal = 5
		if("disarm")
			message = list(
				"顽皮地啃咬%TARGET%的乳头.",
				"挑逗地吮吸%TARGET%的乳头.",
				"轻轻咬%TARGET%的乳头."
			)
		if("grab")
			message = list(
				"专注地吮吸%TARGET%的乳头.",
				"贪婪地吸吮%TARGET%的乳头.",
				"含住%TARGET%的乳头."
			)
			target_pleasure = 4 // 专注的吮吸有更高的奖励
			target_arousal = 5
	. = ..()
	message = original_messages

/datum/interaction/lewd/nipsuck/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	var/obj/item/organ/genital/breasts/breasts = target.get_organ_slot(ORGAN_SLOT_BREASTS)
	if(breasts?.internal_fluid_datum)
		// 根据乳房的饱满程度计算乳汁量（0.5到2倍）
		var/milk_multiplier = 0.5
		if(breasts.internal_fluid_maximum > 0)
			milk_multiplier = 0.5 + (1.5 * (breasts.reagents.total_volume / breasts.internal_fluid_maximum))

		var/transfer_amount = rand(1, 2 * milk_multiplier)
		var/intent = resolve_intent_name(user)
		if(intent == "harm" || intent == "grab")
			transfer_amount = rand(1, 3 * milk_multiplier) // 更粗暴的吮吸获得更多乳汁

		var/datum/reagents/R = new(breasts.internal_fluid_maximum)
		breasts.reagents.trans_to(R, transfer_amount)
		R.trans_to(user, R.total_volume, transferred_by = target)
		qdel(R)

	if(!user.combat_mode && prob(5 + target.arousal))
		var/list/arousal_messages
		switch(resolve_intent_name(user))
			if("help")
				arousal_messages = list(
					"%TARGET%因欲望而颤抖.",
					"%TARGET%轻声呻吟.",
					"%TARGET%发出柔和的呻吟.",
					"%TARGET%喘息着.",
					"%TARGET%轻轻颤抖.",
					"%TARGET%在胸部被玩弄时颤抖."
				)
			if("disarm")
				arousal_messages = list(
					"%TARGET%顽皮地扭动.",
					"%TARGET%挑逗地扭动.",
					"%TARGET%发出顽皮的呻吟.",
					"%TARGET%咬着嘴唇.",
					"%TARGET%因挑逗而扭动."
				)
			if("grab")
				arousal_messages = list(
					"%TARGET%急切地呻吟.",
					"%TARGET%将胸部向前挺.",
					"%TARGET%发出渴望的呻吟.",
					"%TARGET%兴奋地颤抖.",
					"%TARGET%因期待而颤抖."
				)

		if(arousal_messages)
			message = list(pick(arousal_messages))
