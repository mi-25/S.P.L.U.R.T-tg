/datum/interaction/lewd/extreme/eyefuck
	name = "眼交"
	description = "插入对方的眼睛."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%深深射入%CAME_IN%的眼睛",
		"%CUMMING%将精液射入%CAME_IN%的眼窝",
		"%CUMMING%用精液填满%CAME_IN%的眼睛"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"你深深射入%CAME_IN%的眼睛",
		"你将精液射入%CAME_IN%的眼窝",
		"你用精液填满%CAME_IN%的眼睛"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%深深射入你的眼睛",
		"%CUMMING%将精液射入你的眼窝",
		"%CUMMING%用精液填满你的眼睛"
	))
	message = list(
		"猛烈插入%TARGET%的眼睛.",
		"将肉棒深深插入%TARGET%的头骨",
		"在%TARGET%的眼睛里抽插.",
		"一次又一次地深深插入%TARGET%的颅骨."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ1.ogg',
		'modular_zzplurt/sound/interactions/champ2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 5
	target_pleasure = 0
	user_arousal = 8
	target_arousal = 0
	target_pain = 15

/datum/interaction/lewd/extreme/eyefuck/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(target.client?.prefs?.read_preference(/datum/preference/choiced/erp_status_extmharm) == "No" && !(!ishuman(target) && !target.client && !SSinteractions.is_blacklisted(target)))
		return
	if(prob(15) && iscarbon(target))
		target:bleed(2)
	if(prob(25))
		target.adjust_organ_loss(ORGAN_SLOT_EYES, rand(3,7))
		target.adjust_organ_loss(ORGAN_SLOT_BRAIN, rand(3,7))

/datum/interaction/lewd/extreme/eyesocketfuck
	name = "眼窝交"
	description = "插入对方的眼窝."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%深深射入%CAME_IN%的空眼窝",
		"%CUMMING%将精液射入%CAME_IN%的头骨",
		"%CUMMING%用精液填满%CAME_IN%的眼窝"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"你深深射入%CAME_IN%的空眼窝",
		"你将精液射入%CAME_IN%的头骨",
		"你用精液填满%CAME_IN%的眼窝"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%深深射入你的空眼窝",
		"%CUMMING%将精液射入你的头骨",
		"%CUMMING%用精液填满你的眼窝"
	))
	message = list(
		"猛烈插入%TARGET%的眼窝.",
		"将肉棒深深插入%TARGET%的头骨",
		"在%TARGET%的眼窝里抽插.",
		"一次又一次地深深插入%TARGET%的颅骨."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ1.ogg',
		'modular_zzplurt/sound/interactions/champ2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 5
	target_pleasure = 0
	user_arousal = 8
	target_arousal = 0
	target_pain = 15

/datum/interaction/lewd/extreme/eyesocketfuck/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(target.client?.prefs?.read_preference(/datum/preference/choiced/erp_status_extmharm) == "No" && !(!ishuman(target) && !target.client && !SSinteractions.is_blacklisted(target)))
		return
	if(prob(15) && iscarbon(target))
		target:bleed(2)
	if(prob(25))
		target.adjust_organ_loss(ORGAN_SLOT_BRAIN, rand(3,7))
