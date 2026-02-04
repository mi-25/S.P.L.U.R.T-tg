/datum/interaction/lewd/nipplefuck
	name = "乳头交"
	description = "插入对方的乳头."
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
		"将肉棒滑入%TARGET%的乳房",
		"猛烈抽插%TARGET%的乳头",
		"深深插入%TARGET%的乳头"
	)
	user_messages = list(
		"你感受到%TARGET%的乳头紧紧包裹着你的肉棒",
		"%TARGET%乳房的温暖包裹着你的肉棒",
		"%TARGET%的乳头让你的肉棒感觉美妙"
	)
	target_messages = list(
		"你感受到%USER%的肉棒撑开你的乳头",
		"%USER%的肉棒深深插入你的乳房",
		"%USER%肉棒的温暖填满你的乳头"
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
	user_arousal = 6
	target_arousal = 4
	target_pain = 2
