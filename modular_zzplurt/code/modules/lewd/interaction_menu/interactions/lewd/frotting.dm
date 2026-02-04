/datum/interaction/lewd/frotting
	name = "素股"
	description = "用你的阴茎摩擦对方的阴茎."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = null, CLIMAX_POSITION_TARGET = null)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%射在了%CAME_IN%的肉棒上.",
			"%CUMMING%将精液射到了%CAME_IN%的阴茎上.",
			"%CUMMING%的精液覆盖了%CAME_IN%的阴茎."
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%射在了%CAME_IN%的肉棒上.",
			"%CUMMING%将精液射到了%CAME_IN%的阴茎上.",
			"%CUMMING%的精液覆盖了%CAME_IN%的阴茎."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你射在了%CAME_IN%的肉棒上.",
			"你将精液射到了%CAME_IN%的阴茎上.",
			"你的精液覆盖了%CAME_IN%的阴茎."
		),
		CLIMAX_POSITION_TARGET = list(
			"你射在了%CAME_IN%的肉棒上.",
			"你将精液射到了%CAME_IN%的阴茎上.",
			"你的精液覆盖了%CAME_IN%的阴茎."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%射在了你的肉棒上.",
			"%CUMMING%将精液射到了你的阴茎上.",
			"%CUMMING%的精液覆盖了你的阴茎."
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%射在了你的肉棒上.",
			"%CUMMING%将精液射到了你的阴茎上.",
			"%CUMMING%的精液覆盖了你的阴茎."
		)
	)
	message = list(
		"用肉棒摩擦%TARGET%的肉棒.",
		"用阴茎在%TARGET%的阴茎上研磨.",
		"将肉棒压在%TARGET%的肉棒上.",
		"与%TARGET%的肉棒摩擦."
	)
	sound_use = TRUE
	sound_range = 1
	user_pleasure = 6
	target_pleasure = 6
	user_arousal = 10
	target_arousal = 10

/datum/interaction/lewd/tribadism
	name = "磨豆腐"
	description = "用你的小穴摩擦对方的小穴."
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA, CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_VAGINA, CLIMAX_POSITION_TARGET = ORGAN_SLOT_VAGINA)
	message = list(
		"用小穴在%TARGET%的阴部上研磨.",
		"用阴部摩擦%TARGET%的小穴.",
		"顶着%TARGET%的小穴抽插.",
		"与%TARGET%摩擦,两人的小穴相互研磨."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/squelch1.ogg',
		'modular_zzplurt/sound/interactions/squelch2.ogg',
		'modular_zzplurt/sound/interactions/squelch3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 6
	user_arousal = 10
	target_arousal = 10
