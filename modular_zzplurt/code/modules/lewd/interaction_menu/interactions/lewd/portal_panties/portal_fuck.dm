/datum/interaction/lewd/portal/fuck_vagina
	name = "传送门性交（阴道）"
	description = "通过传送门飞机杯操她们的小穴。"
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_VAGINA, CLIMAX_POSITION_TARGET = ORGAN_SLOT_PENIS)

	message = list(
		"通过传送门飞机杯将阴茎猛烈插入%TARGET%的小穴",
		"通过传送门飞机杯猛烈抽插%TARGET%的阴道",
		"通过传送门飞机杯深深插入%TARGET%湿润的小穴",
		"通过传送门飞机杯操%TARGET%的阴道"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%温暖的阴道紧紧包裹着你的阴茎",
		"%TARGET%阴道的湿润通过传送门包裹你的肉棒",
		"你通过传送门飞机杯深深插入%TARGET%紧致的小穴"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的阴茎插入你的阴道",
		"%USER%的肉棒通过传送门深深滑入你的阴道",
		"%USER%阴茎的温暖通过传送门充满你的小穴"
	)

	hidden_message = list(
		"将阴茎猛烈插入传送门飞机杯的小穴",
		"猛烈抽插传送门飞机杯的阴道",
		"深深插入传送门飞机杯湿润的小穴",
		"操传送门飞机杯的阴道"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到温暖的阴道紧紧包裹着你的阴茎",
		"传送门飞机杯阴道的湿润包裹你的肉棒",
		"你深深插入传送门飞机杯紧致的小穴"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到阴茎插入你的阴道",
		"肉棒通过传送门深深滑入你的阴道",
		"阴茎的温暖通过传送门充满你的小穴"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%通过传送门飞机杯猛烈射入%CAME_IN%的小穴",
			"%CUMMING%通过传送门飞机杯将精液灌满%CAME_IN%的阴道",
			"%CUMMING%通过传送门飞机杯将精液深深射入%CAME_IN%的小穴"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%的阴道在高潮时紧紧包裹%CAME_IN%的阴茎，通过传送门",
			"%CUMMING%通过传送门在%CAME_IN%的肉棒上强烈高潮",
			"%CUMMING%的阴道在高潮时在%CAME_IN%的阴茎周围收缩，通过传送门"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门飞机杯猛烈射入%CAME_IN%的小穴",
			"你通过传送门飞机杯将精液灌满%CAME_IN%的阴道",
			"你通过传送门飞机杯将精液深深射入%CAME_IN%的小穴"
		),
		CLIMAX_POSITION_TARGET = list(
			"你的阴道在高潮时紧紧包裹%CAME_IN%的阴茎，通过传送门",
			"你通过传送门在%CAME_IN%的肉棒上强烈高潮",
			"你的阴道在高潮时在%CAME_IN%的阴茎周围收缩，通过传送门"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门内裤感觉到%CUMMING%的滚烫精液涌入你的小穴",
			"%CUMMING%通过传送门内裤将精液灌满你的阴道",
			"你的小穴通过传送门被%CUMMING%温暖的精液充满"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到%CUMMING%的阴道在你的阴茎上收缩高潮",
			"%CUMMING%通过传送门飞机杯在你的肉棒上高潮",
			"传送门飞机杯的阴道在%CUMMING%高潮时在你的阴茎周围收缩"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"猛烈射入传送门飞机杯的小穴",
			"将精液灌满传送门飞机杯的阴道",
			"将精液深深射入传送门飞机杯的小穴"
		),
		CLIMAX_POSITION_TARGET = list(
			"传送门内裤的阴道在高潮时紧紧包裹阴茎",
			"穿戴者通过传送门内裤强烈高潮",
			"传送门内裤的阴道在高潮时收缩"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你猛烈射入传送门飞机杯的小穴",
			"你将精液灌满传送门飞机杯的阴道",
			"你将精液深深射入传送门飞机杯的小穴"
		),
		CLIMAX_POSITION_TARGET = list(
			"你的阴道在高潮时紧紧包裹阴茎，通过传送门",
			"你通过传送门内裤强烈高潮",
			"你的阴道在高潮时在阴茎周围收缩，通过传送门"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门内裤感觉到滚烫的精液涌入你的小穴",
			"温暖的精液通过传送门内裤充满你的阴道",
			"你的小穴通过传送门被精液充满"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到阴道在你的阴茎上收缩高潮",
			"传送门飞机杯的使用者在你的肉棒上高潮",
			"传送门飞机杯的阴道在你的阴茎周围收缩"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 6
	user_arousal = 8
	target_arousal = 8

/datum/interaction/lewd/portal/fuck_vagina/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(prob(5 + target.arousal))
		var/list/arousal_messages = list(
			"%TARGET%在通过传送门被操时愉悦地呻吟",
			"%TARGET%在阴茎通过传送门深入时喘息",
			"%TARGET%因传送门性交而颤抖",
			"%TARGET%因传送门插入而兴奋地战栗"
		)
		var/target_message = list(pick(arousal_messages))
		target.visible_message(span_lewd(replacetext(target_message, "%TARGET%", target)))

/datum/interaction/lewd/portal/fuck_anus
	name = "传送门性交（肛门）"
	description = "通过传送门飞机杯操他们的屁股。"
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_BOTH)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_ANUS)
	message = list(
		"通过传送门飞机杯将阴茎猛烈插入%TARGET%的屁股",
		"通过传送门飞机杯猛烈抽插%TARGET%的肛门",
		"通过传送门飞机杯深深插入%TARGET%紧致的小穴",
		"通过传送门飞机杯操%TARGET%的屁股"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%紧致的屁股紧紧包裹着你的阴茎",
		"%TARGET%肛门的温暖通过传送门包裹你的肉棒",
		"你通过传送门飞机杯深深插入%TARGET%紧致的屁股"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的阴茎插入你的屁股",
		"%USER%的肉棒通过传送门深深滑入你的肛门",
		"%USER%阴茎的温暖通过传送门充满你的屁股"
	)

	hidden_message = list(
		"将阴茎猛烈插入传送门飞机杯的屁股",
		"猛烈抽插传送门飞机杯的肛门",
		"深深插入传送门飞机杯紧致的小穴",
		"操传送门飞机杯的屁股"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到紧致的屁股紧紧包裹着你的阴茎",
		"传送门飞机杯肛门的温暖包裹你的肉棒",
		"你深深插入传送门飞机杯紧致的屁股"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到阴茎插入你的屁股",
		"肉棒通过传送门深深滑入你的肛门",
		"阴茎的温暖通过传送门充满你的屁股"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%通过传送门飞机杯猛烈射入%CAME_IN%的屁股",
			"%CUMMING%通过传送门飞机杯将精液灌满%CAME_IN%的肛门",
			"%CUMMING%通过传送门飞机杯将精液深深射入%CAME_IN%的屁股"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%的屁股在高潮时紧紧包裹%CAME_IN%的阴茎，通过传送门",
			"%CUMMING%通过传送门在%CAME_IN%的肉棒上强烈高潮",
			"%CUMMING%的肛门在高潮时在%CAME_IN%的阴茎周围收缩，通过传送门"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门飞机杯猛烈射入%CAME_IN%的屁股",
			"你通过传送门飞机杯将精液灌满%CAME_IN%的肛门",
			"你通过传送门飞机杯将精液深深射入%CAME_IN%的屁股"
		),
		CLIMAX_POSITION_TARGET = list(
			"你的屁股在高潮时紧紧包裹%CAME_IN%的阴茎，通过传送门",
			"你通过传送门在%CAME_IN%的肉棒上强烈高潮",
			"你的肛门在高潮时在%CAME_IN%的阴茎周围收缩，通过传送门"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门内裤感觉到%CUMMING%的滚烫精液涌入你的屁股",
			"%CUMMING%通过传送门内裤将精液灌满你的肛门",
			"你的屁股通过传送门被%CUMMING%温暖的精液充满"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到%CUMMING%的屁股在你的阴茎上收缩高潮",
			"%CUMMING%通过传送门飞机杯在你的肉棒上高潮",
			"传送门飞机杯的屁股在%CUMMING%高潮时在你的阴茎周围收缩"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"猛烈射入传送门飞机杯的屁股",
			"将精液灌满传送门飞机杯的肛门",
			"将精液深深射入传送门飞机杯的屁股"
		),
		CLIMAX_POSITION_TARGET = list(
			"传送门内裤的屁股在高潮时紧紧包裹阴茎",
			"穿戴者通过传送门内裤强烈高潮",
			"传送门内裤的肛门在高潮时收缩"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你猛烈射入传送门飞机杯的屁股",
			"你将精液灌满传送门飞机杯的肛门",
			"你将精液深深射入传送门飞机杯的屁股"
		),
		CLIMAX_POSITION_TARGET = list(
			"你的屁股在高潮时紧紧包裹阴茎，通过传送门",
			"你通过传送门内裤强烈高潮",
			"你的肛门在高潮时在阴茎周围收缩，通过传送门"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门内裤感觉到滚烫的精液涌入你的屁股",
			"温暖的精液通过传送门内裤充满你的肛门",
			"你的屁股通过传送门被精液充满"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到屁股在你的阴茎上收缩高潮",
			"传送门飞机杯的使用者在你的肉棒上高潮",
			"传送门飞机杯的屁股在你的阴茎周围收缩"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 4
	user_arousal = 8
	target_arousal = 6
	target_pain = 2

/datum/interaction/lewd/portal/fuck_anus/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(prob(5 + target.arousal))
		var/list/arousal_messages = list(
			"%TARGET%在通过传送门被肛交时呻吟",
			"%TARGET%在阴茎通过传送门深入他们的屁股时喘息",
			"%TARGET%因传送门肛交而颤抖",
			"%TARGET%因传送门插入而兴奋地战栗"
		)
		var/target_message = list(pick(arousal_messages))
		target.visible_message(span_lewd(replacetext(target_message, "%TARGET%", target)))

/datum/interaction/lewd/portal/fuck_mouth
	name = "传送门性交（口交）"
	description = "通过传送门飞机杯操他们的嘴。"
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"通过传送门飞机杯将阴茎猛烈插入%TARGET%的嘴里",
		"通过传送门飞机杯猛烈抽插%TARGET%的喉咙",
		"通过传送门飞机杯深深插入%TARGET%的嘴里",
		"通过传送门飞机杯操%TARGET%的喉咙"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%温暖的嘴巴包裹着你的阴茎",
		"%TARGET%嘴巴的湿润通过传送门包裹你的肉棒",
		"你通过传送门飞机杯深深插入%TARGET%的喉咙"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的阴茎插入你的嘴里",
		"%USER%的肉棒通过传送门深深滑入你的喉咙",
		"%USER%阴茎的温暖通过传送门充满你的嘴巴"
	)

	hidden_message = list(
		"将阴茎猛插进传送门飞机杯的嘴里",
		"猛烈冲击传送门飞机杯的喉咙",
		"深深插入传送门飞机杯的嘴里",
		"狠狠操着传送门飞机杯的喉咙"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到温暖的嘴巴包裹着你的阴茎",
		"传送门飞机杯嘴巴的湿润包裹着你的肉棒",
		"你深深插入传送门飞机杯的喉咙"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到一根阴茎插入你的嘴里",
		"一根肉棒通过传送门深深滑入你的喉咙",
		"一根阴茎的温暖通过传送门充满你的嘴巴"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%通过传送门飞机杯狠狠射进%CAME_IN%的嘴里",
			"%CUMMING%通过传送门飞机杯将精液灌满%CAME_IN%的喉咙",
			"%CUMMING%通过传送门飞机杯将精液深深射入%CAME_IN%的嘴里"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%的嘴巴热切地吸吮着%CAME_IN%通过传送门射精的阴茎",
			"%CUMMING%在%CAME_IN%通过传送门高潮时围绕着肉棒呻吟",
			"%CUMMING%的喉咙在高潮中收缩着%CAME_IN%通过传送门插入的阴茎"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门飞机杯猛烈射进%CAME_IN%的嘴里",
			"你通过传送门飞机杯将精液灌满%CAME_IN%的喉咙",
			"你通过传送门飞机杯将精液深深射入%CAME_IN%的嘴里"
		),
		CLIMAX_POSITION_TARGET = list(
			"你的嘴巴热切地吸吮着%CAME_IN%通过传送门射精的阴茎",
			"你在%CAME_IN%通过传送门高潮时围绕着肉棒呻吟",
			"你的喉咙在高潮中收缩着%CAME_IN%通过传送门插入的阴茎"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门内裤感觉到%CUMMING%的滚烫精液涌入你的嘴里",
			"%CUMMING%通过传送门内裤将精液灌满你的喉咙",
			"你的嘴巴通过传送门被%CUMMING%温暖的精液充满"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到%CUMMING%的嘴巴在你的阴茎上吸吮高潮",
			"%CUMMING%通过传送门飞机杯围绕你的肉棒呻吟",
			"传送门飞机杯的嘴巴在%CUMMING%高潮时收缩着你的阴茎"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"猛烈射入传送门飞机杯的嘴里",
			"将精液灌满传送门飞机杯的喉咙",
			"将精液深深射入传送门飞机杯的嘴里"
		),
		CLIMAX_POSITION_TARGET = list(
			"传送门内裤的嘴巴热切地吸吮着阴茎高潮",
			"穿戴者通过传送门内裤围绕肉棒呻吟",
			"传送门内裤的喉咙在高潮中收缩"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你猛烈射入传送门飞机杯的嘴里",
			"你将精液灌满传送门飞机杯的喉咙",
			"你将精液深深射入传送门飞机杯的嘴里"
		),
		CLIMAX_POSITION_TARGET = list(
			"你的嘴巴热切地吸吮着阴茎，通过传送门高潮",
			"你在通过传送门高潮时围绕肉棒呻吟",
			"你的喉咙在高潮中收缩着阴茎，通过传送门"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门内裤感觉到滚烫的精液涌入你的嘴里",
			"温暖的精液通过传送门内裤充满你的喉咙",
			"你的嘴巴通过传送门被精液充满"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到嘴巴在你的阴茎上吸吮高潮",
			"传送门飞机杯的使用者围绕你的肉棒呻吟",
			"传送门飞机杯的嘴巴收缩着你的阴茎"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 2
	user_arousal = 8
	target_arousal = 4

/datum/interaction/lewd/portal/fuck_mouth/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(prob(5 + target.arousal))
		var/list/arousal_messages = list(
			"%TARGET%围绕嘴里的阴茎通过传送门呻吟",
			"%TARGET%在阴茎通过传送门深入时轻微作呕",
			"%TARGET%因传送门喉交而颤抖",
			"%TARGET%因传送门口交而兴奋地战栗"
		)
		var/target_message = list(pick(arousal_messages))
		target.visible_message(span_lewd(replacetext(target_message, "%TARGET%", target)))

/datum/interaction/lewd/portal/fuck_urethra
	name = "传送门性交（尿道）"
	description = "通过传送门假阳具操他们的尿道。"
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS, CLIMAX_POSITION_TARGET = ORGAN_SLOT_PENIS)
	message = list(
		"通过传送门假阳具将阴茎猛烈插入%TARGET%的尿道",
		"通过传送门假阳具猛烈抽插%TARGET%的尿道口",
		"通过传送门假阳具深深插入%TARGET%的尿道开口",
		"通过传送门假阳具操%TARGET%的尿道"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%紧致的尿道挤压着你的阴茎",
		"%TARGET%尿道口的温暖通过传送门包裹你的肉棒",
		"你通过传送门假阳具深深插入%TARGET%的尿道通道"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的阴茎推入你的尿道",
		"%USER%的肉棒通过传送门深深滑入你的尿道口",
		"%USER%阴茎的温暖通过传送门充满你的尿道"
	)

	hidden_message = list(
		"将阴茎猛烈插入传送门假阳具的尿道",
		"猛烈抽插传送门假阳具的尿道口",
		"深深插入传送门假阳具的尿道开口",
		"操传送门假阳具的尿道"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到紧致的尿道挤压着你的阴茎",
		"传送门假阳具尿道口的温暖包裹你的肉棒",
		"你深深插入传送门假阳具的尿道通道"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到阴茎推入你的尿道",
		"肉棒通过传送门深深滑入你的尿道口",
		"阴茎的温暖通过传送门充满你的尿道"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%通过传送门假阳具猛烈射入%CAME_IN%的尿道",
			"%CUMMING%通过传送门假阳具将精液灌满%CAME_IN%的尿道口",
			"%CUMMING%通过传送门假阳具将精液深深射入%CAME_IN%的尿道"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%的尿道在高潮时紧紧挤压%CAME_IN%通过传送门插入的阴茎",
			"%CUMMING%通过传送门在%CAME_IN%的肉棒上猛烈高潮",
			"%CUMMING%的尿道口在高潮中收缩着%CAME_IN%通过传送门插入的阴茎"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门假阳具猛烈射入%CAME_IN%的尿道",
			"你通过传送门假阳具将精液灌满%CAME_IN%的尿道口",
			"你通过传送门假阳具将精液深深射入%CAME_IN%的尿道"
		),
		CLIMAX_POSITION_TARGET = list(
			"你的尿道在高潮时紧紧挤压%CAME_IN%通过传送门插入的阴茎",
			"你通过传送门在%CAME_IN%的肉棒上猛烈高潮",
			"你的尿道口在高潮中收缩着%CAME_IN%通过传送门插入的阴茎"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门内裤感觉到%CUMMING%的滚烫精液涌入你的尿道",
			"%CUMMING%通过传送门内裤将精液灌满你的尿道口",
			"你的尿道通过传送门被%CUMMING%温暖的精液充满"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到%CUMMING%的尿道在高潮时挤压你的阴茎",
			"%CUMMING%通过传送门假阳具在你的肉棒上高潮",
			"传送门假阳具的尿道口在%CUMMING%高潮时收缩着你的阴茎"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"猛烈射入传送门假阳具的尿道",
			"将精液灌满传送门假阳具的尿道口",
			"将精液深深射入传送门假阳具的尿道"
		),
		CLIMAX_POSITION_TARGET = list(
			"传送门内裤的尿道在高潮时紧紧挤压阴茎",
			"穿戴者通过传送门内裤猛烈高潮",
			"传送门内裤的尿道口在高潮中收缩"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你猛烈射入传送门假阳具的尿道",
			"你将精液灌满传送门假阳具的尿道口",
			"你将精液深深射入传送门假阳具的尿道"
		),
		CLIMAX_POSITION_TARGET = list(
			"你的尿道在高潮时紧紧挤压阴茎，通过传送门",
			"你通过传送门内裤猛烈高潮",
			"你的尿道口在高潮中收缩着阴茎，通过传送门"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门内裤感觉到滚烫的精液涌入你的尿道",
			"温暖的精液通过传送门内裤充满你的尿道口",
			"你的尿道通过传送门被精液充满"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到尿道在高潮时挤压你的阴茎",
			"传送门假阳具的使用者在你的肉棒上高潮",
			"传送门假阳具的尿道口收缩着你的阴茎"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 4
	user_arousal = 8
	target_arousal = 6
	target_pain = 4

/datum/interaction/lewd/portal/fuck_urethra/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(prob(5 + target.arousal))
		var/list/arousal_messages = list(
			"%TARGET%在尿道被通过传送门操时呻吟",
			"%TARGET%在阴茎通过传送门深入尿道口时喘息",
			"%TARGET%因传送门尿道性交而颤抖",
			"%TARGET%因传送门尿道插入而兴奋地战栗"
		)
		var/target_message = list(pick(arousal_messages))
		target.visible_message(span_lewd(replacetext(target_message, "%TARGET%", target)))

/datum/interaction/lewd/portal/vaginal_ride
	name = "传送门阴道骑乘"
	description = "用你的阴道骑乘传送门假阳具。"
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS, CLIMAX_POSITION_TARGET = ORGAN_SLOT_VAGINA)

	message = list(
		"通过传送门假阳具用小穴骑乘%TARGET%的阴茎",
		"通过传送门假阳具在%TARGET%的肉棒上上下起伏",
		"通过传送门假阳具用小穴磨蹭%TARGET%的阴茎",
		"通过传送门假阳具将阴道插入%TARGET%的阴茎"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%的阴茎充满你的小穴",
		"%TARGET%肉棒的温暖通过传送门扩散到你的阴道",
		"你通过传送门假阳具用小穴磨蹭%TARGET%的阴茎"
	)
	target_messages = list(
		"你通过传送门内裤感觉到你的阴茎滑入%USER%的小穴",
		"%USER%的阴道通过传送门挤压你的肉棒",
		"%USER%小穴的温暖通过传送门包裹你的阴茎"
	)

	hidden_message = list(
		"通过传送门假阳具用小穴骑乘阴茎",
		"通过传送门假阳具在肉棒上上下起伏",
		"通过传送门假阳具用小穴磨蹭阴茎",
		"通过传送门假阳具将阴道插入阴茎"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到阴茎充满你的小穴",
		"肉棒的温暖通过传送门扩散到你的阴道",
		"你通过传送门假阳具用小穴磨蹭阴茎"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到你的阴茎滑入小穴",
		"阴道通过传送门挤压你的肉棒",
		"小穴的温暖通过传送门包裹你的阴茎"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%在小穴被通过传送门假阳具充满时猛烈高潮",
			"%CUMMING%在通过传送门假阳具骑乘阴茎时达到高潮",
			"%CUMMING%的阴道在通过传送门高潮时紧紧收缩"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%通过传送门假阳具将精液灌满%CAME_IN%的小穴",
			"%CUMMING%通过传送门假阳具将精液深深射入%CAME_IN%的阴道",
			"%CUMMING%通过传送门猛烈射在%CAME_IN%的小穴里"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你在小穴被通过传送门假阳具充满时猛烈高潮",
			"你在通过传送门假阳具骑乘阴茎时达到高潮",
			"你的阴道在通过传送门高潮时紧紧收缩"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门假阳具将精液灌满%CAME_IN%的小穴",
			"你通过传送门假阳具将精液深深射入%CAME_IN%的阴道",
			"你通过传送门猛烈射在%CAME_IN%的小穴里"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门感觉到%CUMMING%的小穴在高潮时挤压你的阴茎",
			"%CUMMING%通过传送门假阳具在你的肉棒上高潮",
			"传送门假阳具的小穴在%CUMMING%高潮时收缩着你的阴茎"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门内裤感觉到%CUMMING%的滚烫精液涌入你的小穴",
			"%CUMMING%通过传送门内裤将精液灌满你的阴道",
			"你的小穴通过传送门被%CUMMING%温暖的精液充满"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 6
	user_arousal = 8
	target_arousal = 8

/datum/interaction/lewd/portal/anal_ride
	name = "传送门肛门骑乘"
	description = "用你的屁股骑乘传送门假阳具。"
	user_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_BOTH, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_TARGET = ORGAN_SLOT_ANUS)

	message = list(
		"通过传送门假阳具用屁股骑乘%TARGET%的阴茎",
		"通过传送门假阳具在%TARGET%的肉棒上上下起伏",
		"通过传送门假阳具用屁股磨蹭%TARGET%的阴茎",
		"通过传送门假阳具将肛门插入%TARGET%的阴茎"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%的阴茎充满你的屁股",
		"%TARGET%肉棒的温暖通过传送门扩散到你的肛门",
		"你通过传送门假阳具用屁股磨蹭%TARGET%的阴茎"
	)
	target_messages = list(
		"你通过传送门内裤感觉到你的阴茎滑入%USER%的屁股",
		"%USER%的肛门通过传送门挤压你的肉棒",
		"%USER%屁股的温暖通过传送门包裹你的阴茎"
	)

	hidden_message = list(
		"通过传送门假阳具用屁股骑乘阴茎",
		"通过传送门假阳具在肉棒上上下起伏",
		"通过传送门假阳具用屁股磨蹭阴茎",
		"通过传送门假阳具将肛门插入阴茎"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到阴茎充满你的屁股",
		"肉棒的温暖通过传送门扩散到你的肛门",
		"你通过传送门假阳具用屁股磨蹭阴茎"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到你的阴茎滑入屁股",
		"肛门通过传送门挤压你的肉棒",
		"屁股的温暖通过传送门包裹你的阴茎"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%在屁股被通过传送门假阳具充满时猛烈高潮",
			"%CUMMING%在通过传送门假阳具骑乘阴茎时达到高潮",
			"%CUMMING%的肛门在通过传送门高潮时紧紧收缩"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%通过传送门假阳具将精液灌满%CAME_IN%的屁股",
			"%CUMMING%通过传送门假阳具将精液深深射入%CAME_IN%的肛门",
			"%CUMMING%通过传送门猛烈射在%CAME_IN%的屁股里"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你在屁股被通过传送门假阳具充满时猛烈高潮",
			"你在通过传送门假阳具骑乘阴茎时达到高潮",
			"你的肛门在通过传送门高潮时紧紧收缩"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门假阳具将精液灌满%CAME_IN%的屁股",
			"你通过传送门假阳具将精液深深射入%CAME_IN%的肛门",
			"你通过传送门猛烈射在%CAME_IN%的屁股里"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门感觉到%CUMMING%的屁股在高潮时挤压你的阴茎",
			"%CUMMING%通过传送门假阳具在你的肉棒上高潮",
			"传送门假阳具的屁股在%CUMMING%高潮时收缩着你的阴茎"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门内裤感觉到%CUMMING%的滚烫精液涌入你的屁股",
			"%CUMMING%通过传送门内裤将精液灌满你的肛门",
			"你的屁股通过传送门被%CUMMING%温暖的精液充满"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 6
	user_arousal = 8
	target_arousal = 8


/datum/interaction/lewd/portal/urethral_ride
	name = "传送门尿道骑乘"
	description = "让他们通过传送门假阳具操你的尿道。"
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS)

	message = list(
		"通过传送门假阳具将%TARGET%的阴茎纳入尿道",
		"通过传送门假阳具用尿道口骑乘%TARGET%的肉棒",
		"通过传送门假阳具让%TARGET%插入尿道",
		"通过传送门假阳具让%TARGET%操尿道口"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%的阴茎滑入你的尿道",
		"%TARGET%肉棒的温暖通过传送门充满你的尿道口",
		"你通过传送门假阳具让%TARGET%插入你的尿道"
	)
	target_messages = list(
		"你通过传送门内裤感觉到你的阴茎滑入%USER%的尿道",
		"%USER%的尿道口通过传送门挤压你的肉棒",
		"%USER%尿道的温暖通过传送门包裹你的阴茎"
	)

	hidden_message = list(
		"通过传送门假阳具将阴茎纳入尿道",
		"通过传送门假阳具用尿道口骑乘肉棒",
		"通过传送门假阳具让人插入尿道",
		"通过传送门假阳具让人操尿道口"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到阴茎滑入你的尿道",
		"肉棒的温暖通过传送门充满你的尿道口",
		"你通过传送门假阳具让人插入你的尿道"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到你的阴茎滑入尿道",
		"尿道口通过传送门挤压你的肉棒",
		"尿道的温暖通过传送门包裹你的阴茎"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%在尿道被通过传送门假阳具充满时猛烈高潮",
			"%CUMMING%在尿道口被通过传送门假阳具插入时射精",
			"%CUMMING%因通过传送门假阳具的尿道插入而达到高潮"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%通过传送门假阳具将精液灌满%CAME_IN%的尿道",
			"%CUMMING%通过传送门假阳具将精液深深射入%CAME_IN%的尿道口",
			"%CUMMING%通过传送门假阳具猛烈射在%CAME_IN%的尿道里"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"在尿道被通过传送门假阳具充满时猛烈高潮",
			"在尿道口被通过传送门假阳具插入时射精",
			"因通过传送门假阳具的尿道插入而达到高潮"
		),
		CLIMAX_POSITION_TARGET = list(
			"将精液灌满传送门假阳具的尿道",
			"将精液深深射入传送门假阳具的尿道口",
			"猛烈射在传送门假阳具的尿道里"
		)
	)

	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你在尿道被通过传送门假阳具充满时猛烈高潮",
			"你在尿道口被通过传送门假阳具插入时射精",
			"你因通过传送门假阳具的尿道插入而达到高潮"
		),
		CLIMAX_POSITION_TARGET = list(
			"你将精液灌满传送门假阳具的尿道",
			"你将精液深深射入传送门假阳具的尿道口",
			"你猛烈射在传送门假阳具的尿道里"
		)
	)

	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门内裤感觉到滚烫的精液涌入你的尿道",
			"温暖的精液通过传送门内裤充满你的尿道口",
			"你的尿道通过传送门被精液充满"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到尿道在高潮时挤压你的阴茎",
			"传送门假阳具的使用者在你的肉棒上高潮",
			"传送门假阳具的尿道口收缩着你的阴茎"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 6
	user_arousal = 6
	target_arousal = 8
	user_pain = 4

/datum/interaction/lewd/portal/urethral_ride/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(prob(5 + user.arousal))
		var/list/arousal_messages = list(
			"%USER%在通过传送门用尿道骑乘时呻吟",
			"%USER%在尿道口被通过传送门深入插入时喘息",
			"%USER%因通过传送门的尿道插入而颤抖",
			"%USER%在尿道被通过传送门充满时兴奋地战栗"
		)
		var/target_message = list(pick(arousal_messages))
		user.visible_message(span_lewd(replacetext(target_message, "%USER%", user)))



/datum/interaction/lewd/portal/frotting
	name = "传送门摩擦"
	description = "通过传送门假阳具用你的阴茎摩擦他们的阴茎。"
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = null, CLIMAX_POSITION_TARGET = null)
	message = list(
		"通过传送门假阳具用阴茎摩擦%TARGET%的阴茎",
		"通过传送门假阳具用肉棒磨蹭%TARGET%的阴茎",
		"通过传送门假阳具将阴茎压在%TARGET%的阴茎上",
		"通过传送门假阳具与%TARGET%的阴茎摩擦"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%的阴茎摩擦你的阴茎",
		"%TARGET%肉棒的温暖通过传送门压在你的阴茎上",
		"你通过传送门假阳具用阴茎磨蹭%TARGET%的阴茎"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的阴茎摩擦你的阴茎",
		"%USER%的肉棒通过传送门磨蹭你的阴茎",
		"%USER%阴茎的温暖通过传送门压在你的阴茎上"
	)

	hidden_message = list(
		"用阴茎摩擦传送门假阳具的阴茎",
		"用肉棒磨蹭传送门假阳具的阴茎",
		"将阴茎压在传送门假阳具的阴茎上",
		"与传送门假阳具的阴茎摩擦"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到另一根阴茎摩擦你的阴茎",
		"另一根肉棒的温暖通过传送门压在你的阴茎上",
		"你通过传送门假阳具用阴茎磨蹭另一根阴茎"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到阴茎摩擦你的阴茎",
		"肉棒通过传送门磨蹭你的阴茎",
		"另一根阴茎的温暖通过传送门压在你的阴茎上"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%通过传送门假阳具在%CAME_IN%的阴茎上猛烈高潮",
			"%CUMMING%通过传送门假阳具将精液射在%CAME_IN%的肉棒上",
			"%CUMMING%通过传送门假阳具在%CAME_IN%的阴茎上达到高潮"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%的阴茎在高潮时通过传送门贴着%CAME_IN%的肉棒跳动",
			"%CUMMING%通过传送门在%CAME_IN%的阴茎上猛烈高潮",
			"%CUMMING%的阴茎在高潮中通过传送门贴着%CAME_IN%的阴茎脉动"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门假阳具在%CAME_IN%的阴茎上猛烈高潮",
			"你通过传送门假阳具将精液射在%CAME_IN%的肉棒上",
			"你通过传送门假阳具在%CAME_IN%的阴茎上达到高潮"
		),
		CLIMAX_POSITION_TARGET = list(
			"你的阴茎在高潮时通过传送门贴着%CAME_IN%的肉棒跳动",
			"你通过传送门在%CAME_IN%的阴茎上猛烈高潮",
			"你的阴茎在高潮中通过传送门贴着%CAME_IN%的阴茎脉动"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门内裤感觉到%CUMMING%的滚烫精液溅在你的阴茎上",
			"%CUMMING%通过传送门内裤将精液涂满你的肉棒",
			"你的阴茎通过传送门被%CUMMING%温暖的精液覆盖"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到%CUMMING%的阴茎在高潮时贴着你的阴茎跳动",
			"%CUMMING%通过传送门假阳具在你的肉棒上高潮",
			"传送门假阳具的阴茎在%CUMMING%高潮时贴着你的阴茎脉动"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"在传送门假阳具的阴茎上猛烈高潮",
			"将精液射在传送门假阳具的肉棒上",
			"在传送门假阳具的阴茎上达到高潮"
		),
		CLIMAX_POSITION_TARGET = list(
			"传送门内裤的阴茎在高潮时贴着肉棒跳动",
			"穿戴者通过传送门内裤猛烈高潮",
			"传送门内裤的阴茎在高潮中脉动"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你在传送门假阳具的阴茎上猛烈高潮",
			"你将精液射在传送门假阳具的肉棒上",
			"你在传送门假阳具的阴茎上达到高潮"
		),
		CLIMAX_POSITION_TARGET = list(
			"你的阴茎在高潮时通过传送门贴着肉棒跳动",
			"你通过传送门内裤猛烈高潮",
			"你的阴茎在高潮中通过传送门贴着阴茎脉动"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你通过传送门内裤感觉到滚烫的精液溅在你的阴茎上",
			"温暖的精液通过传送门内裤涂满你的肉棒",
			"你的阴茎通过传送门被精液覆盖"
		),
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到阴茎在高潮时贴着你的阴茎跳动",
			"传送门假阳具的使用者在你的肉棒上高潮",
			"传送门假阳具的阴茎贴着你的阴茎脉动"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 4
	user_arousal = 6
	target_arousal = 6

/datum/interaction/lewd/portal/frotting/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(prob(5 + target.arousal))
		var/list/arousal_messages = list(
			"%TARGET%在阴茎被通过传送门摩擦时呻吟",
			"%TARGET%在肉棒通过传送门磨蹭时喘息",
			"%TARGET%因传送门摩擦而颤抖",
			"%TARGET%因通过传送门的阴茎接触而兴奋地战栗"
		)
		var/target_message = list(pick(arousal_messages))
		target.visible_message(span_lewd(replacetext(target_message, "%TARGET%", target)))


/datum/interaction/lewd/portal/tribadism
	name = "传送门磨豆"
	description = "通过传送门用你的小穴磨蹭她们的小穴。"
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA, CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_VAGINA, CLIMAX_POSITION_TARGET = ORGAN_SLOT_VAGINA)
	message = list(
		"通过传送门飞机杯用小穴磨蹭%TARGET%的小穴",
		"通过传送门飞机杯用小穴摩擦%TARGET%的小穴",
		"通过传送门飞机杯顶弄%TARGET%的小穴",
		"蹭%TARGET%，小穴通过传送门飞机杯磨蹭在一起"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%的小穴磨蹭你的小穴",
		"%TARGET%小穴的温暖通过传送门摩擦你的小穴",
		"你通过传送门飞机杯用小穴顶弄%TARGET%的小穴"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的小穴磨蹭你的小穴",
		"%USER%的小穴通过传送门摩擦你的小穴",
		"%USER%的小穴通过传送门顶弄你的小穴"
	)

	hidden_message = list(
		"用小穴磨蹭传送门飞机杯的小穴",
		"用小穴摩擦传送门飞机杯的小穴",
		"顶弄传送门飞机杯的小穴",
		"蹭传送门飞机杯，磨蹭着它"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到小穴磨蹭你的小穴",
		"小穴的温暖通过传送门摩擦你的小穴",
		"你通过传送门飞机杯用小穴顶弄另一个小穴"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到小穴磨蹭你的小穴",
		"小穴通过传送门摩擦你的小穴",
		"小穴通过传送门顶弄你的小穴"
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



