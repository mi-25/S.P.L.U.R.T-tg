/datum/interaction/lewd/thighs_penis
	name = "大腿窒息（阴茎）"
	description = "用你的阴茎窒息他们。"
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"将重量压在%TARGET%的脸上,完全遮住对方的视线.",
		"将肉棒强行压入%TARGET%的脸上,对方被锁在大腿之间.",
		"将肉棒滑入%TARGET%无助的嘴里,将肉棒紧紧压在对方脸上."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bj10.ogg',
		'modular_zzplurt/sound/interactions/bj3.ogg',
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_dry3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 0
	user_arousal = 6
	target_arousal = 2

/datum/interaction/lewd/thighs_vagina
	name = "大腿窒息（小穴）"
	description = "用你的小穴窒息他们。"
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"将重量压在%TARGET%的脸上,完全遮住对方的视线.",
		"骑在%TARGET%的脸上,用湿润的小穴在对方脸上研磨.",
		"将小穴压在%TARGET%的脸上研磨."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bj10.ogg',
		'modular_zzplurt/sound/interactions/bj3.ogg',
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_dry3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 0
	user_arousal = 6
	target_arousal = 2

/datum/interaction/lewd/thighfuck
	name = "腿交"
	description = "操他们的大腿。"
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_BOTTOMLESS)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%射满了%CAME_IN%的大腿",
		"%CUMMING%将精液射到%CAME_IN%的腿上",
		"%CUMMING%用精液覆盖%CAME_IN%的大腿"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"你射满了%CAME_IN%的大腿",
		"你将精液射到%CAME_IN%的腿上",
		"你用精液覆盖%CAME_IN%的大腿"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%射满了你的大腿",
		"%CUMMING%将精液射到你的腿上",
		"%CUMMING%用精液覆盖你的大腿"
	))
	message = list(
		"插入%TARGET%的大腿",
		"将肉棒滑入%TARGET%的双腿之间",
		"在%TARGET%的大腿之间抽插",
		"猛烈撞击%TARGET%的双腿"
	)
	user_messages = list(
		"你感受到%TARGET%的大腿挤压着你的肉棒",
		"%TARGET%双腿之间的温暖感觉美妙",
		"%TARGET%柔软的大腿在你的肉棒周围感觉很棒"
	)
	target_messages = list(
		"你感受到%USER%的肉棒在你的大腿之间滑动",
		"%USER%的肉棒在你的双腿之间摩擦",
		"%USER%肉棒的温暖压在你的大腿上"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 0
	user_arousal = 6
	target_arousal = 4

/datum/interaction/lewd/thighjob
	name = "腿交服务"
	description = "用你的大腿取悦他们。"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_BOTTOMLESS)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"%CUMMING%射满了%CAME_IN%的大腿",
		"%CUMMING%将精液射到%CAME_IN%的腿上",
		"%CUMMING%用精液覆盖%CAME_IN%的大腿"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"%CUMMING%射满了你的大腿",
		"%CUMMING%将精液射到你的腿上",
		"%CUMMING%用精液覆盖你的大腿"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"你射满了%CAME_IN%的大腿",
		"你将精液射到%CAME_IN%的腿上",
		"你用精液覆盖%CAME_IN%的大腿"
	))
	message = list(
		"用大腿夹住%TARGET%的肉棒",
		"用双腿为%TARGET%的肉棒服务",
		"用大腿取悦%TARGET%",
		"用双腿摩擦%TARGET%的肉棒"
	)
	user_messages = list(
		"你感受到%TARGET%的肉棒在你的大腿之间跳动",
		"%TARGET%肉棒的温暖在你的双腿之间感觉很好",
		"你用大腿挤压%TARGET%的肉棒"
	)
	target_messages = list(
		"%USER%温暖的大腿挤压着你的肉棒",
		"你的肉棒在%USER%的双腿之间滑动",
		"%USER%大腿的柔软感觉美妙"
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
