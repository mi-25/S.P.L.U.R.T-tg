/datum/interaction/lewd/knotting/knotfucking
	knotfucking = TRUE

/datum/interaction/lewd/knotting/knotfucking/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	var/mob/living/btm
	if(cum_genital[CLIMAX_POSITION_USER] == CLIMAX_PENIS)
		//knot_try(user, target, CLIMAX_POSITION_USER, knotfucking)
		btm = target
	else if(cum_genital[CLIMAX_POSITION_TARGET] == CLIMAX_PENIS)
		//knot_try(target, user, CLIMAX_POSITION_TARGET, knotfucking)
		btm = user
	if(user.client?.prefs?.read_preference(/datum/preference/choiced/erp_status_extmharm) != "No" || target.client?.prefs?.read_preference(/datum/preference/choiced/erp_status_extmharm) != "No")
		if(btm.stat > UNCONSCIOUS) // Got damn, quit fucking yourself into a paste, top can keep going I guess
			btm.apply_damage(2, BRUTE)
	..()

/datum/interaction/lewd/knotting/knotfucking/knotfuck_pussy
	name = "Knotfuck"
	description = "Knotfuck their pussy."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_VAGINA, CLIMAX_POSITION_TARGET = ORGAN_SLOT_PENIS)
	message = list(
		"用%KNOT%猛烈冲击%TARGET%的小穴.",
		"将%KNOT%深深插入%TARGET%的小穴.",
		"用%KNOT%在%TARGET%的小穴里猛烈抽插."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ1.ogg',
		'modular_zzplurt/sound/interactions/champ2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 10
	target_pleasure = 8
	user_arousal = 14
	target_arousal = 12
	target_pain = 3

/datum/interaction/lewd/knotting/knotfucking/knotfuck_anus
	name = "Anal Knotfuck"
	description = "Knotfuck their ass."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_ANUS)
	message = list(
		"用%KNOT%猛烈冲击%TARGET%的肛门.",
		"将%KNOT%深深插入%TARGET%的肛门.",
		"用%KNOT%在%TARGET%的肛门里猛烈抽插."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 8
	target_pleasure = 6
	user_arousal = 12
	target_arousal = 10
	target_pain = 6

/datum/interaction/lewd/knotting/knotfucking/knotfuck_mouth
	name = "Oral Knotfuck"
	description = "Knotfuck their mouth. (Warning: Causes oxygen damage)"
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"将%KNOT%塞进%TARGET%的喉咙,撑起对方的脸颊.",
		"用%KNOT%让%TARGET%窒息,切断对方的空气供应.",
		"用%KNOT%在%TARGET%的嘴里猛烈抽插."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 7
	target_pleasure = 0
	user_arousal = 10
	target_arousal = 2
	target_pain = 7

/datum/interaction/lewd/knotting/knotfucking/knotfuck_mouth/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(user.client?.prefs?.read_preference(/datum/preference/choiced/erp_status_extmharm) != "No" || target.client?.prefs?.read_preference(/datum/preference/choiced/erp_status_extmharm) != "No")
		var/stat_before = target.stat
		target.adjust_oxy_loss(3)
		if(target.stat == UNCONSCIOUS && stat_before != UNCONSCIOUS)
			message = list("%TARGET%被%USER%的%KNOT%弄晕了.")

/datum/interaction/lewd/knotting/knotfucking/knotfuck_nipple
	target_knotting_require = list(ORGAN_SLOT_NIPPLES)
	custom_slot = ORGAN_SLOT_NIPPLES
	name = "Nipple Knotfuck"
	description = "Knotfuck their nipple."
	interaction_requires = list(
		INTERACTION_REQUIRE_TARGET_TOPLESS
	)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%射满了%CAME_IN%的乳头",
		"%CUMMING%将精液射进%CAME_IN%的乳房",
		"%CUMMING%用精液填满%CAME_IN%的乳头"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"你射满了%CAME_IN%的乳头",
		"你将精液射进%CAME_IN%的乳房",
		"你用精液填满%CAME_IN%的乳头"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%射满了你的乳头",
		"%CUMMING%将精液射进你的乳房",
		"%CUMMING%用精液填满你的乳头"
	))
	message = list(
		"插入%TARGET%的乳头",
		"将%KNOT%猛烈插入%TARGET%的乳房",
		"猛烈抽插%TARGET%的乳头",
		"深深插入%TARGET%的乳头"
	)
	user_messages = list(
		"你感受到%TARGET%的乳头挤压着你的%KNOT%",
		"%TARGET%乳房的温暖包裹着你的肉棒",
		"%TARGET%的乳头在你的%KNOT%周围感觉美妙"
	)
	target_messages = list(
		"你感受到%USER%的%KNOT%撑开你的乳头",
		"%USER%的肉棒深深插入你的乳房",
		"%USER%的%KNOT%的温暖填满你的乳头"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 2
	user_arousal = 7
	target_arousal = 4
	target_pain = 3
