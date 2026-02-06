/datum/interaction/lewd/portal/oral_penis
	name = "传送门口交（阴茎）"
	description = "通过传送门假阳具吮吸他们的肉棒。"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_TARGET = CLIMAX_TARGET_MOUTH)
	message = list(
		"通过传送门假阳具吮吸%TARGET%的肉棒",
		"通过传送门假阳具用嘴巴套弄%TARGET%的阴茎",
		"通过传送门假阳具舔舐%TARGET%的肉棒",
		"通过传送门假阳具给%TARGET%的阴茎口交"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%的肉棒在你嘴里跳动",
		"%TARGET%阴茎的温暖通过传送门在你舌头上脉动",
		"你通过传送门假阳具用嘴巴套弄%TARGET%的肉棒"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的嘴巴包裹着你的肉棒",
		"%USER%的舌头通过传送门滑过你的阴茎",
		"%USER%的嘴巴通过传送门套弄你的肉棒"
	)

	hidden_message = list(
		"吮吸传送门假阳具的肉棒",
		"用嘴巴套弄传送门假阳具的阴茎",
		"舔舐传送门假阳具的肉棒",
		"给传送门假阳具的阴茎口交"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到肉棒在你嘴里跳动",
		"阴茎的温暖通过传送门在你舌头上脉动",
		"你通过传送门假阳具用嘴巴套弄阴茎"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到嘴巴包裹着你的肉棒",
		"舌头通过传送门滑过你的阴茎",
		"嘴巴通过传送门套弄你的肉棒"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%的肉棒在%CAME_IN%的嘴里跳动着，通过传送门达到高潮",
			"%CUMMING%通过传送门将精液射入%CAME_IN%的嘴里",
			"%CUMMING%通过传送门在%CAME_IN%的嘴里强烈高潮"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的肉棒在%CAME_IN%的嘴里跳动着，通过传送门达到高潮",
			"你通过传送门将精液射入%CAME_IN%的嘴里",
			"你通过传送门在%CAME_IN%的嘴里强烈高潮"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到%CUMMING%的肉棒在你嘴里跳动着达到高潮",
			"%CUMMING%通过传送门假阳具将精液射入你的嘴里",
			"你的嘴巴通过传送门被%CUMMING%温暖的精液填满"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"传送门内裤的肉棒在嘴里跳动着达到高潮",
			"穿戴者通过传送门射精",
			"传送门内裤的使用者强烈高潮"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的肉棒在嘴里跳动着，通过传送门达到高潮",
			"你通过传送门射精",
			"你通过传送门强烈高潮"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到肉棒在你嘴里跳动着达到高潮",
			"温暖的精液通过传送门假阳具射入你的嘴里",
			"你的嘴巴通过传送门被精液填满"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bj1.ogg',
		'modular_zzplurt/sound/interactions/bj2.ogg',
		'modular_zzplurt/sound/interactions/bj3.ogg',
		'modular_zzplurt/sound/interactions/bj4.ogg',
		'modular_zzplurt/sound/interactions/bj5.ogg',
		'modular_zzplurt/sound/interactions/bj6.ogg',
		'modular_zzplurt/sound/interactions/bj7.ogg',
		'modular_zzplurt/sound/interactions/bj8.ogg',
		'modular_zzplurt/sound/interactions/bj9.ogg',
		'modular_zzplurt/sound/interactions/bj10.ogg',
		'modular_zzplurt/sound/interactions/bj11.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 6
	user_arousal = 4
	target_arousal = 8

/datum/interaction/lewd/portal/oral_vagina
	name = "传送门口交（阴道）"
	description = "通过传送门飞机杯舔舐她们的小穴。"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_TARGET = CLIMAX_TARGET_MOUTH)
	message = list(
		"通过传送门飞机杯舔舐%TARGET%的小穴",
		"通过传送门飞机杯用舌头套弄%TARGET%的阴道",
		"通过传送门飞机杯吮吸%TARGET%的阴蒂",
		"通过传送门飞机杯给%TARGET%的小穴口交"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%温暖的小穴贴着你的舌头",
		"%TARGET%阴道的湿润通过传送门涂满你的嘴巴",
		"你通过传送门飞机杯用舌头套弄%TARGET%的小穴"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的舌头舔舐你的小穴",
		"%USER%的嘴巴通过传送门套弄你的阴道",
		"%USER%的舌头通过传送门滑过你的阴蒂"
	)

	hidden_message = list(
		"舔舐传送门飞机杯的小穴",
		"用舌头套弄传送门飞机杯的阴道",
		"吮吸传送门飞机杯的阴蒂",
		"给传送门飞机杯的小穴口交"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到温暖的小穴贴着你的舌头",
		"湿润通过传送门涂满你的嘴巴",
		"你通过传送门飞机杯用舌头套弄小穴"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到舌头舔舐你的小穴",
		"嘴巴通过传送门套弄你的阴道",
		"舌头通过传送门滑过你的阴蒂"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%的小穴在%CAME_IN%的舌头上颤抖着，通过传送门达到高潮",
			"%CUMMING%通过传送门在%CAME_IN%的嘴上强烈高潮",
			"%CUMMING%的阴道通过传送门在%CAME_IN%的舌头周围收缩高潮"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的小穴在%CAME_IN%的舌头上颤抖着，通过传送门达到高潮",
			"你通过传送门在%CAME_IN%的嘴上强烈高潮",
			"你的阴道通过传送门在%CAME_IN%的舌头周围收缩高潮"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到%CUMMING%的小穴在你舌头上颤抖着达到高潮",
			"%CUMMING%通过传送门飞机杯在你的嘴上高潮",
			"传送门飞机杯的小穴在%CUMMING%高潮时收缩着你的舌头"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"传送门内裤的小穴在舌头上颤抖着达到高潮",
			"穿戴者通过传送门强烈高潮",
			"传送门内裤的阴道在高潮中收缩"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的小穴在舌头上颤抖着，通过传送门达到高潮",
			"你通过传送门强烈高潮",
			"你的阴道通过传送门在高潮中收缩"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到小穴在你舌头上颤抖着达到高潮",
			"传送门飞机杯的使用者在你的嘴上高潮",
			"传送门飞机杯的小穴收缩着你的舌头"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 6
	user_arousal = 4
	target_arousal = 8

/datum/interaction/lewd/portal/oral_anus
	name = "传送门口交（肛门）"
	description = "通过传送门飞机杯舔肛他们的屁股。"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_BOTH)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	message = list(
		"通过传送门飞机杯舔舐%TARGET%的屁股",
		"通过传送门飞机杯用舌头套弄%TARGET%的肛门",
		"通过传送门飞机杯舔肛%TARGET%的小穴",
		"通过传送门飞机杯给%TARGET%的屁股口交"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%紧致的屁股贴着你的舌头",
		"%TARGET%肛门的温暖通过传送门包裹着你的舌头",
		"你通过传送门飞机杯用舌头套弄%TARGET%的屁股"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的舌头舔舐你的屁股",
		"%USER%的嘴巴通过传送门套弄你的肛门",
		"%USER%的舌头通过传送门滑过你的小穴"
	)

	hidden_message = list(
		"舔舐传送门飞机杯的屁股",
		"用舌头套弄传送门飞机杯的肛门",
		"舔肛传送门飞机杯的小穴",
		"给传送门飞机杯的屁股口交"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到紧致的屁股贴着你的舌头",
		"温暖通过传送门包裹着你的舌头",
		"你通过传送门飞机杯用舌头套弄屁股"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到舌头舔舐你的屁股",
		"嘴巴通过传送门套弄你的肛门",
		"舌头通过传送门滑过你的小穴"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%的屁股在%CAME_IN%的舌头上收缩着，通过传送门达到高潮",
			"%CUMMING%通过传送门在%CAME_IN%的嘴上强烈高潮",
			"%CUMMING%的肛门通过传送门在%CAME_IN%的舌头周围收缩高潮"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的屁股在%CAME_IN%的舌头上收缩着，通过传送门达到高潮",
			"你通过传送门在%CAME_IN%的嘴上强烈高潮",
			"你的肛门通过传送门在%CAME_IN%的舌头周围收缩高潮"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到%CUMMING%的屁股在你舌头上收缩着达到高潮",
			"%CUMMING%通过传送门飞机杯在你的嘴上高潮",
			"传送门飞机杯的肛门在%CUMMING%高潮时收缩着你的舌头"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"传送门内裤的屁股在舌头上收缩着达到高潮",
			"穿戴者通过传送门强烈高潮",
			"传送门内裤的肛门在高潮中收缩"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的屁股在舌头上收缩着，通过传送门达到高潮",
			"你通过传送门强烈高潮",
			"你的肛门通过传送门在高潮中收缩"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到屁股在你舌头上收缩着达到高潮",
			"传送门飞机杯的使用者在你的嘴上高潮",
			"传送门飞机杯的肛门收缩着你的舌头"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 4
	user_arousal = 4
	target_arousal = 6
	target_pain = 1

/datum/interaction/lewd/portal/oral_mouth
	name = "传送门亲吻"
	description = "通过传送门飞机杯亲吻他们。"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH, INTERACTION_REQUIRE_TARGET_MOUTH)
	message = list(
		"通过传送门飞机杯亲吻%TARGET%",
		"通过传送门飞机杯将嘴唇贴在%TARGET%的唇上",
		"通过传送门飞机杯与%TARGET%热吻",
		"通过传送门飞机杯与%TARGET%分享一个热情的吻"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%温暖的嘴唇贴着你的唇",
		"%TARGET%柔软的嘴巴通过传送门压在你的唇上",
		"你通过传送门飞机杯深深地亲吻%TARGET%"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的嘴唇贴着你的唇",
		"%USER%的嘴巴通过传送门压在你的唇上",
		"%USER%通过传送门深深地亲吻你"
	)

	hidden_message = list(
		"通过传送门飞机杯亲吻",
		"将嘴唇贴在传送门飞机杯上",
		"通过传送门飞机杯热吻",
		"通过传送门飞机杯分享一个热情的吻"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到温暖的嘴唇贴着你的唇",
		"柔软的嘴巴通过传送门压在你的唇上",
		"你通过传送门飞机杯深深地亲吻"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到嘴唇贴着你的唇",
		"嘴巴通过传送门压在你的唇上",
		"有人通过传送门深深地亲吻你"
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/kiss1.ogg',
		'modular_zzplurt/sound/interactions/kiss2.ogg',
		'modular_zzplurt/sound/interactions/kiss3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 1
	target_pleasure = 1
	user_arousal = 2
	target_arousal = 2

/datum/interaction/lewd/portal/oral_mouth/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	// Check if user has TRAIT_KISS_SLUT and increase their lust
	if(HAS_TRAIT(user, TRAIT_KISS_SLUT))
		user.adjust_pleasure(10, target, interaction = src, position = CLIMAX_POSITION_USER)
		user.adjust_arousal(10)
	// Check if target has TRAIT_KISS_SLUT and increase their lust
	if(HAS_TRAIT(target, TRAIT_KISS_SLUT))
		target.adjust_pleasure(10, user, interaction = src, position = CLIMAX_POSITION_TARGET)
		target.adjust_arousal(10)
