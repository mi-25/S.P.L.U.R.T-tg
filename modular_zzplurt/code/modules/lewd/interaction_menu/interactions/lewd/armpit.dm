/datum/interaction/lewd/armpit_fuck
	name = "腋交"
	description = "用对方的腋下进行性行为."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_TOPLESS)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%射在了CAME_IN的腋下",
		"%CUMMING%将精液射进了CAME_IN的腋窝",
		"%CUMMING%的精液覆盖了CAME_IN的腋下"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"你射在了%CAME_IN%的腋下",
		"你将精液射进了%CAME_IN%的腋窝",
		"你的精液覆盖了%CAME_IN%的腋下"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%射在了你的腋下",
		"%CUMMING%将精液射进了你的腋窝",
		"%CUMMING%的精液覆盖了你的腋下"
	))
	message = list(
		"用%TARGET%的腋下进行抽插",
		"将肉棒滑入%TARGET%的腋窝",
		"在%TARGET%的腋下律动",
		"猛烈地冲撞%TARGET%的腋下"
	)
	user_messages = list(
		"你感受到%TARGET%温暖的腋窝包裹着你的肉棒",
		"%TARGET%柔软的腋下紧贴着你的阴茎,感觉很舒服",
		"%TARGET%的腋窝紧紧夹住了你的肉棒"
	)
	target_messages = list(
		"你感受到%USER%的肉棒在你的腋下摩擦",
		"%USER%的阴茎在你的腋窝滑动",
		"%USER%温热的肉棒紧贴着你的腋下"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 3
	target_pleasure = 0
	user_arousal = 5
	target_arousal = 2

/datum/interaction/lewd/armpit_lick
	name = "舔舐腋下"
	description = "舔舐对方的腋下."
	interaction_requires = list(
		INTERACTION_REQUIRE_SELF_MOUTH,
		INTERACTION_REQUIRE_TARGET_TOPLESS
	)
	message = list(
		"舔舐%TARGET%的腋下",
		"用舌头滑过%TARGET%的腋窝",
		"品尝%TARGET%的腋下",
		"将脸埋进%TARGET%的腋窝"
	)
	user_messages = list(
		"你品尝到%TARGET%腋下的味道",
		"%TARGET%腋窝的气味充满了你的鼻腔",
		"你细细品味着%TARGET%腋下的滋味"
	)
	target_messages = list(
		"你感受到%USER%的舌头在你的腋下游走",
		"%USER%湿润的舌头滑过你的腋窝",
		"%USER%温热的口腔让你的腋下感到酥麻"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3

/datum/interaction/lewd/armpit_smother
	name = "腋下窒息"
	description = "用你的腋下压住对方的脸."
	interaction_requires = list(
		INTERACTION_REQUIRE_TARGET_MOUTH,
		INTERACTION_REQUIRE_SELF_TOPLESS
	)
	message = list(
		"用腋下压住%TARGET%的脸",
		"用腋窝闷住%TARGET%的脸",
		"强迫%TARGET%的脸埋进自己的腋下",
		"用手臂夹住%TARGET%的头"
	)
	user_messages = list(
		"你感受到%TARGET%的脸紧贴在你的腋窝",
		"你用腋下压住%TARGET%的头",
		"你让%TARGET%的脸深深埋进你的腋下"
	)
	target_messages = list(
		"你的脸被压进%USER%的腋下",
		"%USER%的腋窝闷住了你的脸",
		"你的鼻腔充满了%USER%腋下的气味"
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

/datum/interaction/lewd/armpit_pitjob
	name = "腋下手交"
	description = "用你的腋下为对方手淫."
	interaction_requires = list(
		INTERACTION_REQUIRE_SELF_TOPLESS
	)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"%CUMMING%射在了%CAME_IN%的腋下",
		"%CUMMING%将精液射进了%CAME_IN%的腋窝",
		"%CUMMING%的精液覆盖了%CAME_IN%的腋下"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"%CUMMING%射在了你的腋下",
		"%CUMMING%将精液射进了你的腋窝",
		"%CUMMING%的精液覆盖了你的腋下"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"你射在了%CAME_IN%的腋下",
		"你将精液射进了%CAME_IN%的腋窝",
		"你的精液覆盖了%CAME_IN%的腋下"
	))
	message = list(
		"用腋下套弄%TARGET%的肉棒",
		"用手臂和胸部夹住%TARGET%的阴茎",
		"用腋窝为%TARGET%手淫",
		"用腋下取悦%TARGET%的肉棒"
	)
	user_messages = list(
		"你感受到%TARGET%的肉棒在你的腋窝跳动",
		"%TARGET%温热的阴茎充满了你的腋下",
		"你用腋下夹紧%TARGET%的肉棒"
	)
	target_messages = list(
		"%USER%温暖的腋窝抚慰着你的肉棒",
		"你的阴茎在%USER%的手臂和胸部之间滑动",
		"%USER%柔软的腋下让你感觉美妙"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 3
	user_arousal = 2
	target_arousal = 5
