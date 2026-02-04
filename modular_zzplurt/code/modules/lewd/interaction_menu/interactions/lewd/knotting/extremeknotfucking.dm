/datum/interaction/lewd/extreme/knotfuck_ear
	knotting_supported = TRUE
	knotfucking = TRUE
	target_knotting_require = list(ORGAN_SLOT_EARS)
	custom_slot = ORGAN_SLOT_EARS
	name = "Ear Knotfuck"
	description = "Knotfuck their ear."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%深深射入%CAME_IN%的耳朵",
		"%CUMMING%将精液射入%CAME_IN%的耳道",
		"%CUMMING%用精液填满%CAME_IN%的耳朵"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"你深深射入%CAME_IN%的耳朵",
		"你将精液射入%CAME_IN%的耳道",
		"你用精液填满%CAME_IN%的耳朵"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%深深射入你的耳朵",
		"%CUMMING%将精液射入你的耳道",
		"%CUMMING%用精液填满你的耳朵"
	))
	message = list(
		"猛烈插入%TARGET%的耳朵.",
		"将结深深插入%TARGET%的头骨",
		"用结在%TARGET%的耳朵里猛烈抽插.",
		"一次又一次地深深插入%TARGET%的颅骨."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ1.ogg',
		'modular_zzplurt/sound/interactions/champ2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 0
	user_arousal = 9
	target_arousal = 0
	target_pain = 20

/datum/interaction/lewd/extreme/knotfuck_ear/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(target.client?.prefs?.read_preference(/datum/preference/choiced/erp_status_extmharm) == "No" && !(!ishuman(target) && !target.client && !SSinteractions.is_blacklisted(target)))
		return
	if(prob(20) && iscarbon(target))
		target:bleed(2)
	if(prob(30))
		target.adjust_organ_loss(ORGAN_SLOT_EARS, rand(3,7))
		target.adjust_organ_loss(ORGAN_SLOT_BRAIN, rand(3,7))

/datum/interaction/lewd/extreme/knotfuck_earsocket
	knotting_supported = TRUE
	knotfucking = TRUE
	target_knotting_require = list(ORGAN_SLOT_EARS)
	custom_slot = ORGAN_SLOT_EARS
	name = "Knotfuck Earsocket"
	description = "Knotfuck their earsocket."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%深深射入%CAME_IN%的空耳窝",
		"%CUMMING%将精液射入%CAME_IN%的头骨",
		"%CUMMING%用精液填满%CAME_IN%的耳窝"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"你深深射入%CAME_IN%的空耳窝",
		"你将精液射入%CAME_IN%的头骨",
		"你用精液填满%CAME_IN%的耳窝"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%深深射入你的空耳窝",
		"%CUMMING%将精液射入你的头骨",
		"%CUMMING%用精液填满你的耳窝"
	))
	message = list(
		"猛烈插入%TARGET%的耳窝.",
		"将%KNOT%深深插入%TARGET%的头骨",
		"用%KNOT%在%TARGET%的耳窝里猛烈抽插.",
		"一次又一次地深深插入%TARGET%的颅骨."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ1.ogg',
		'modular_zzplurt/sound/interactions/champ2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 0
	user_arousal = 9
	target_arousal = 0
	target_pain = 20

/datum/interaction/lewd/extreme/knotfuck_earsocket/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(target.client?.prefs?.read_preference(/datum/preference/choiced/erp_status_extmharm) == "No" && !(!ishuman(target) && !target.client && !SSinteractions.is_blacklisted(target)))
		return
	if(prob(20) && iscarbon(target))
		target:bleed(2)
	if(prob(30))
		target.adjust_organ_loss(ORGAN_SLOT_BRAIN, rand(3,7))

/datum/interaction/lewd/extreme/knotfuck_eye
	knotting_supported = TRUE
	knotfucking = TRUE
	target_knotting_require = list(ORGAN_SLOT_EYES)
	custom_slot = ORGAN_SLOT_EYES
	name = "Knotfuck Eye"
	description = "Knotfuck their eye."
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
		"将%KNOT%深深插入%TARGET%的头骨",
		"用%KNOT%在%TARGET%的眼睛里猛烈抽插.",
		"一次又一次地深深插入%TARGET%的颅骨."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ1.ogg',
		'modular_zzplurt/sound/interactions/champ2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 0
	user_arousal = 9
	target_arousal = 0
	target_pain = 20

/datum/interaction/lewd/extreme/knotfuck_eye/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(target.client?.prefs?.read_preference(/datum/preference/choiced/erp_status_extmharm) == "No" && !(!ishuman(target) && !target.client && !SSinteractions.is_blacklisted(target)))
		return
	if(prob(20) && iscarbon(target))
		target:bleed(2)
	if(prob(30))
		target.adjust_organ_loss(ORGAN_SLOT_EYES, rand(3,7))
		target.adjust_organ_loss(ORGAN_SLOT_BRAIN, rand(3,7))

/datum/interaction/lewd/extreme/knotfuck_eyesocket
	knotting_supported = TRUE
	knotfucking = TRUE
	target_knotting_require = list(ORGAN_SLOT_EYES)
	custom_slot = ORGAN_SLOT_EYES
	name = "Knotfuck Eyesocket"
	description = "Knotfuck their eyesocket."
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
		"将%KNOT%深深插入%TARGET%的头骨",
		"用%KNOT%在%TARGET%的眼窝里猛烈抽插.",
		"一次又一次地深深插入%TARGET%的颅骨."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ1.ogg',
		'modular_zzplurt/sound/interactions/champ2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 0
	user_arousal = 9
	target_arousal = 0
	target_pain = 20

/datum/interaction/lewd/extreme/knotfuck_eyesocket/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(target.client?.prefs?.read_preference(/datum/preference/choiced/erp_status_extmharm) == "No" && !(!ishuman(target) && !target.client && !SSinteractions.is_blacklisted(target)))
		return
	if(prob(20) && iscarbon(target))
		target:bleed(2)
	if(prob(30))
		target.adjust_organ_loss(ORGAN_SLOT_BRAIN, rand(3,7))
