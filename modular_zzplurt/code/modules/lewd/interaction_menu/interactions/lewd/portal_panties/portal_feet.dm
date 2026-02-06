/datum/interaction/lewd/portal/feet
	interaction_requires = list(INTERACTION_REQUIRE_SELF_FEET)

/datum/interaction/lewd/portal/feet/show_climax(mob/living/cumming, mob/living/came_in, position)
	var/obj/item/clothing/shoes/worn_shoes = came_in.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || pick("赤脚", "脚趾", "脚底")

	var/list/original_messages = cum_message_text_overrides.Copy()
	var/list/original_self_messages = cum_self_text_overrides.Copy()
	var/list/original_partner_messages = cum_partner_text_overrides.Copy()
	var/list/original_hidden_messages = hidden_cum_message_text_overrides.Copy()
	var/list/original_hidden_self_messages = hidden_cum_self_text_overrides.Copy()
	var/list/original_hidden_partner_messages = hidden_cum_partner_text_overrides.Copy()

	// Replace %FEET% in climax messages for the given position
	if(length(cum_message_text_overrides[position]))
		var/message = pick(cum_message_text_overrides[position])
		message = replacetext(message, "%FEET%", feet_text)
		cum_message_text_overrides[position] = list(message)

	if(length(cum_self_text_overrides[position]))
		var/message = pick(cum_self_text_overrides[position])
		message = replacetext(message, "%FEET%", feet_text)
		cum_self_text_overrides[position] = list(message)

	if(length(cum_partner_text_overrides[position]))
		var/message = pick(cum_partner_text_overrides[position])
		message = replacetext(message, "%FEET%", feet_text)
		cum_partner_text_overrides[position] = list(message)

	if(length(hidden_cum_message_text_overrides[position]))
		var/message = pick(hidden_cum_message_text_overrides[position])
		message = replacetext(message, "%FEET%", feet_text)
		hidden_cum_message_text_overrides[position] = list(message)

	if(length(hidden_cum_self_text_overrides[position]))
		var/message = pick(hidden_cum_self_text_overrides[position])
		message = replacetext(message, "%FEET%", feet_text)
		hidden_cum_self_text_overrides[position] = list(message)

	if(length(hidden_cum_partner_text_overrides[position]))
		var/message = pick(hidden_cum_partner_text_overrides[position])
		message = replacetext(message, "%FEET%", feet_text)
		hidden_cum_partner_text_overrides[position] = list(message)

	. = ..()

	// Restore original messages
	cum_message_text_overrides = original_messages
	cum_self_text_overrides = original_self_messages
	cum_partner_text_overrides = original_partner_messages
	hidden_cum_message_text_overrides = original_hidden_messages
	hidden_cum_self_text_overrides = original_hidden_self_messages
	hidden_cum_partner_text_overrides = original_hidden_partner_messages

/datum/interaction/lewd/portal/feet/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/list/original_user_messages = user_messages.Copy()
	var/list/original_target_messages = target_messages.Copy()
	var/list/original_hidden_messages = hidden_message.Copy()
	var/list/original_hidden_user_messages = hidden_user_messages.Copy()
	var/list/original_hidden_target_messages = hidden_target_messages.Copy()

	var/obj/item/clothing/shoes/worn_shoes = user.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || pick("赤脚", "脚趾", "脚底")

	// Replace %FEET% in messages
	if(length(message))
		var/chosen_message = pick(message)
		message = list(replacetext(chosen_message, "%FEET%", feet_text))

	if(length(user_messages))
		var/chosen_message = pick(user_messages)
		user_messages = list(replacetext(chosen_message, "%FEET%", feet_text))

	if(length(target_messages))
		var/chosen_message = pick(target_messages)
		target_messages = list(replacetext(chosen_message, "%FEET%", feet_text))

	if(length(hidden_message))
		var/chosen_message = pick(hidden_message)
		hidden_message = list(replacetext(chosen_message, "%FEET%", feet_text))

	if(length(hidden_user_messages))
		var/chosen_message = pick(hidden_user_messages)
		hidden_user_messages = list(replacetext(chosen_message, "%FEET%", feet_text))

	if(length(hidden_target_messages))
		var/chosen_message = pick(hidden_target_messages)
		hidden_target_messages = list(replacetext(chosen_message, "%FEET%", feet_text))

	. = ..()

	// Restore original messages
	message = original_messages
	user_messages = original_user_messages
	target_messages = original_target_messages
	hidden_message = original_hidden_messages
	hidden_user_messages = original_hidden_user_messages
	hidden_target_messages = original_hidden_target_messages

/datum/interaction/lewd/portal/feet/footjob
	name = "传送门足交"
	description = "通过传送门假阳具给他们足交。"
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	message = list(
		"通过传送门假阳具用%FEET%摩擦%TARGET%的阴茎",
		"通过传送门假阳具用%FEET%套弄%TARGET%的肉棒",
		"通过传送门假阳具用%FEET%磨蹭%TARGET%的阴茎",
		"通过传送门假阳具给%TARGET%的肉棒足交"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%的阴茎在你的%FEET%上跳动",
		"%TARGET%的肉棒的温暖通过传送门在你的%FEET%上脉动",
		"你通过传送门假阳具用%FEET%套弄%TARGET%的阴茎"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的%FEET%摩擦你的阴茎",
		"%USER%的%FEET%通过传送门压在你的肉棒上",
		"%USER%的%FEET%通过传送门套弄你的阴茎"
	)

	hidden_message = list(
		"用%FEET%摩擦传送门假阳具的阴茎",
		"用%FEET%套弄传送门假阳具的肉棒",
		"用%FEET%磨蹭传送门假阳具的阴茎",
		"给传送门假阳具的肉棒足交"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到阴茎在你的%FEET%上跳动",
		"肉棒的温暖通过传送门在你的%FEET%上脉动",
		"你通过传送门假阳具用%FEET%套弄阴茎"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到%FEET%摩擦你的阴茎",
		"%FEET%通过传送门压在你的肉棒上",
		"%FEET%通过传送门套弄你的阴茎"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%的阴茎在%CAME_IN%的%FEET%上跳动，通过传送门射精",
			"%CUMMING%通过传送门将精液射在%CAME_IN%的%FEET%上",
			"%CUMMING%通过传送门在%CAME_IN%的%FEET%上强烈高潮"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的阴茎在%CAME_IN%的%FEET%上跳动，通过传送门射精",
			"你通过传送门将精液射在%CAME_IN%的%FEET%上",
			"你通过传送门在%CAME_IN%的%FEET%上强烈高潮"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到%CUMMING%的阴茎在你的%FEET%上跳动射精",
			"%CUMMING%通过传送门假阳具将精液射在你的%FEET%上",
			"你的%FEET%通过传送门被%CUMMING%温暖的精液覆盖"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"传送门内裤的阴茎在%FEET%上跳动射精",
			"穿戴者通过传送门将精液射在%FEET%上",
			"传送门内裤的使用者在%FEET%上强烈高潮"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的阴茎在%FEET%上跳动，通过传送门射精",
			"你通过传送门将精液射在%FEET%上",
			"你通过传送门在%FEET%上强烈高潮"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到阴茎在你的%FEET%上跳动射精",
			"温暖的精液通过传送门假阳具射在你的%FEET%上",
			"你的%FEET%通过传送门被精液覆盖"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/foot_dry1.ogg',
		'modular_zzplurt/sound/interactions/foot_dry3.ogg',
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_wet2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 3
	user_arousal = 2
	target_arousal = 4

/datum/interaction/lewd/portal/feet/footgrind_vagina
	name = "传送门足部摩擦（阴道）"
	description = "通过传送门飞机杯用你的脚摩擦他们的阴部。"
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	message = list(
		"通过传送门飞机杯用%FEET%磨蹭%TARGET%的阴部",
		"通过传送门飞机杯用%FEET%摩擦%TARGET%的阴道",
		"通过传送门飞机杯用%FEET%套弄%TARGET%湿润的小穴",
		"通过传送门飞机杯将%FEET%压入%TARGET%的阴部"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%温暖的阴部贴着你的%FEET%",
		"%TARGET%阴道的湿润在你通过传送门磨蹭时涂满你的%FEET%",
		"你通过传送门飞机杯用%FEET%套弄%TARGET%的阴部"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的%FEET%磨蹭你的阴部",
		"%USER%的%FEET%通过传送门摩擦你的阴道",
		"%USER%的%FEET%通过传送门套弄你的阴部"
	)

	hidden_message = list(
		"用%FEET%磨蹭传送门飞机杯的阴部",
		"用%FEET%摩擦传送门飞机杯的阴道",
		"用%FEET%套弄传送门飞机杯湿润的小穴",
		"将%FEET%压入传送门飞机杯的阴部"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到温暖的阴部贴着你的%FEET%",
		"湿润在你通过传送门磨蹭时涂满你的%FEET%",
		"你通过传送门飞机杯用%FEET%套弄阴道"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到%FEET%磨蹭你的阴部",
		"%FEET%通过传送门摩擦你的阴道",
		"%FEET%通过传送门套弄你的阴部"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%的阴部在%CAME_IN%的%FEET%上颤抖，通过传送门高潮",
			"%CUMMING%通过传送门在%CAME_IN%的%FEET%上强烈高潮",
			"%CUMMING%的阴道通过传送门在%CAME_IN%的%FEET%周围收缩高潮"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的阴部在%CAME_IN%的%FEET%上颤抖，通过传送门高潮",
			"你通过传送门在%CAME_IN%的%FEET%上强烈高潮",
			"你的阴道通过传送门在%CAME_IN%的%FEET%周围收缩高潮"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到%CUMMING%的阴部在你的%FEET%上颤抖高潮",
			"%CUMMING%通过传送门飞机杯在你的%FEET%上高潮",
			"传送门飞机杯的阴部在%CUMMING%高潮时在你的%FEET%周围收缩"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"传送门内裤的阴部在%FEET%上颤抖高潮",
			"穿戴者通过传送门在%FEET%上强烈高潮",
			"传送门内裤的阴道收缩高潮"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的阴部在%FEET%上颤抖，通过传送门高潮",
			"你通过传送门在%FEET%上强烈高潮",
			"你的阴道通过传送门在%FEET%周围收缩高潮"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到阴部在你的%FEET%上颤抖高潮",
			"传送门飞机杯的使用者在你的%FEET%上高潮",
			"传送门飞机杯的阴部在你的%FEET%周围收缩"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_wet2.ogg',
		'modular_zzplurt/sound/interactions/foot_wet3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 3
	user_arousal = 2
	target_arousal = 4

/datum/interaction/lewd/portal/feet/footgrind_anus
	name = "传送门足部摩擦（肛门）"
	description = "通过传送门飞机杯用你的脚摩擦他们的屁股。"
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_ANY)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_BOTH)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	message = list(
		"通过传送门飞机杯用%FEET%磨蹭%TARGET%的屁股",
		"通过传送门飞机杯用%FEET%摩擦%TARGET%的肛门",
		"通过传送门飞机杯用%FEET%套弄%TARGET%紧致的小穴",
		"通过传送门飞机杯将%FEET%压入%TARGET%的屁股"
	)
	user_messages = list(
		"你通过传送门感觉到%TARGET%紧致的屁股贴着你的%FEET%",
		"%TARGET%肛门的温暖在你通过传送门磨蹭时包裹你的%FEET%",
		"你通过传送门飞机杯用%FEET%套弄%TARGET%的屁股"
	)
	target_messages = list(
		"你通过传送门内裤感觉到%USER%的%FEET%磨蹭你的屁股",
		"%USER%的%FEET%通过传送门摩擦你的肛门",
		"%USER%的%FEET%通过传送门套弄你的屁股"
	)

	hidden_message = list(
		"用%FEET%磨蹭传送门飞机杯的屁股",
		"用%FEET%摩擦传送门飞机杯的肛门",
		"用%FEET%套弄传送门飞机杯紧致的小穴",
		"将%FEET%压入传送门飞机杯的屁股"
	)
	hidden_user_messages = list(
		"你通过传送门感觉到紧致的屁股贴着你的%FEET%",
		"温暖在你通过传送门磨蹭时包裹你的%FEET%",
		"你通过传送门飞机杯用%FEET%套弄肛门"
	)
	hidden_target_messages = list(
		"你通过传送门内裤感觉到%FEET%磨蹭你的屁股",
		"%FEET%通过传送门摩擦你的肛门",
		"%FEET%通过传送门套弄你的屁股"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%的屁股在%CAME_IN%的%FEET%上收缩，通过传送门高潮",
			"%CUMMING%通过传送门在%CAME_IN%的%FEET%上强烈高潮",
			"%CUMMING%的肛门在高潮时在%CAME_IN%的%FEET%周围收缩，通过传送门"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的屁股在%CAME_IN%的%FEET%上收缩，通过传送门高潮",
			"你通过传送门在%CAME_IN%的%FEET%上强烈高潮",
			"你的肛门在高潮时在%CAME_IN%的%FEET%周围收缩，通过传送门"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到%CUMMING%的屁股在你的%FEET%上收缩高潮",
			"%CUMMING%通过传送门飞机杯在你的%FEET%上高潮",
			"传送门飞机杯的肛门在%CUMMING%高潮时在你的%FEET%周围收缩"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"传送门内裤的屁股在%FEET%上收缩高潮",
			"穿戴者通过传送门在%FEET%上强烈高潮",
			"传送门内裤的肛门在高潮时收缩"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你的屁股在%FEET%上收缩，通过传送门高潮",
			"你通过传送门在%FEET%上强烈高潮",
			"你的肛门在高潮时在%FEET%周围收缩，通过传送门"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你通过传送门感觉到屁股在你的%FEET%上收缩高潮",
			"传送门飞机杯的使用者在你的%FEET%上高潮",
			"传送门飞机杯的肛门在你的%FEET%周围收缩"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_wet2.ogg',
		'modular_zzplurt/sound/interactions/foot_wet3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 2
	user_arousal = 2
	target_arousal = 3
	target_pain = 1
