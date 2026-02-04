/datum/interaction/lewd/grindface
	name = "踩脸"
	description = "用脚踩对方的脸."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_FEET, INTERACTION_REQUIRE_TARGET_MOUTH)
	message = list(
		"用%FEET%在%TARGET%的脸上研磨.",
		"用力将%FEET%压在%TARGET%的脸上.",
		"将%FEET%上的污垢蹭到%TARGET%的脸上.",
		"将%FEET%踩在%TARGET%的脸上.",
		"将%FEET%放在%TARGET%的脸上并用力压下.",
		"粗暴地将%FEET%放在%TARGET%的脸上."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/foot_dry1.ogg',
		'modular_zzplurt/sound/interactions/foot_dry2.ogg',
		'modular_zzplurt/sound/interactions/foot_dry3.ogg',
		'modular_zzplurt/sound/interactions/foot_dry4.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3

/datum/interaction/lewd/grindface/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	// 获取鞋子或赤脚文本
	var/obj/item/clothing/shoes/worn_shoes = user.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || pick("赤脚", "脚底")

	var/chosen_message = pick(message)
	chosen_message = replacetext(chosen_message, "%FEET%", feet_text)
	message = list(chosen_message)
	. = ..()
	message = original_messages

/datum/interaction/lewd/grindmouth
	name = "踩嘴"
	description = "用脚踩对方的嘴."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_FEET, INTERACTION_REQUIRE_TARGET_MOUTH)
	message = list(
		"粗暴地将%FEET%更深地塞进%TARGET%的嘴里.",
		"强行将%FEET%再深入%TARGET%的嘴里一英寸.",
		"用体重压下,%FEET%撬开%TARGET%的嘴更深入.",
		"强行将%FEET%深深塞进%TARGET%的嘴里.",
		"将%FEET%的尖端抵在%TARGET%的嘴唇上并向内推.",
		"准备好后,一个迅速的动作将%FEET%塞进%TARGET%的嘴里."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_wet2.ogg',
		'modular_zzplurt/sound/interactions/foot_wet3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3

/datum/interaction/lewd/grindmouth/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/obj/item/clothing/shoes/worn_shoes = user.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || pick("赤脚", "脚趾", "脚底")

	var/chosen_message = pick(message)
	chosen_message = replacetext(chosen_message, "%FEET%", feet_text)
	message = list(chosen_message)
	. = ..()
	message = original_messages

/datum/interaction/lewd/footjob
	name = "足交"
	description = "用你的脚为对方手淫."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_FEET)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	message = list(
		"用%FEET%为%TARGET%手淫.",
		"用%FEET%摩擦%TARGET%的阴茎.",
		"用%FEET%在%TARGET%的肉棒上上下套弄."
	)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%射在了%CAME_IN%的%FEET%上.",
			"%CUMMING%的精液覆盖了%CAME_IN%的%FEET%.",
			"%CUMMING%将精液射到了%CAME_IN%的%FEET%上."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你射在了%CAME_IN%的%FEET%上.",
			"你的精液覆盖了%CAME_IN%的%FEET%.",
			"你将精液射到了%CAME_IN%的%FEET%上."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%射在了你的%FEET%上.",
			"%CUMMING%的精液覆盖了你的%FEET%.",
			"%CUMMING%将精液射到了你的%FEET%上."
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
	target_pleasure = 4
	user_pleasure = 0
	user_arousal = 3
	target_arousal = 6

/datum/interaction/lewd/footjob/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/obj/item/clothing/shoes/worn_shoes = user.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || pick("脚", "脚底")

	var/chosen_message = pick(message)
	chosen_message = replacetext(chosen_message, "%FEET%", feet_text)
	message = list(chosen_message)
	. = ..()
	message = original_messages

/datum/interaction/lewd/footjob/show_climax(mob/living/cumming, mob/living/came_in, position)
	var/obj/item/clothing/shoes/worn_shoes = cumming.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || pick("脚", "脚底")

	// 存储原始列表,带空值检查
	var/list/original_message_overrides = cum_message_text_overrides[position]
	var/list/original_self_overrides = cum_self_text_overrides[position]
	var/list/original_partner_overrides = cum_partner_text_overrides[position]
	original_message_overrides = original_message_overrides?.Copy()
	original_self_overrides = original_self_overrides?.Copy()
	original_partner_overrides = original_partner_overrides?.Copy()

	// 从每个列表中选择并修改一条消息
	var/message_override = replacetext(pick(cum_message_text_overrides[position]), "%FEET%", feet_text)
	var/self_override = replacetext(pick(cum_self_text_overrides[position]), "%FEET%", feet_text)
	var/partner_override = replacetext(pick(cum_partner_text_overrides[position]), "%FEET%", feet_text)

	// 设置单条消息列表
	cum_message_text_overrides[position] = list(message_override)
	cum_self_text_overrides[position] = list(self_override)
	cum_partner_text_overrides[position] = list(partner_override)

	. = ..()

	// 恢复原始列表
	cum_message_text_overrides[position] = original_message_overrides
	cum_self_text_overrides[position] = original_self_overrides
	cum_partner_text_overrides[position] = original_partner_overrides

/datum/interaction/lewd/footjob/double
	name = "双足交"
	description = "用你的双脚为对方手淫."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_FEET)
	message = list(
		"用%FEET%为%TARGET%手淫.",
		"用%FEET%摩擦%TARGET%的阴茎.",
		"用%FEET%在%TARGET%的肉棒上上下套弄."
	)
	user_pleasure = 0
	target_pleasure = 5
	user_arousal = 4
	target_arousal = 7

/datum/interaction/lewd/footjob/double/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/obj/item/clothing/shoes/worn_shoes = user.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || "双脚"

	var/chosen_message = pick(message)
	chosen_message = replacetext(chosen_message, "%FEET%", feet_text)
	message = list(chosen_message)
	. = ..()
	message = original_messages

/datum/interaction/lewd/footjob/vagina
	name = "阴部足交"
	description = "用你的脚摩擦对方的阴部."
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	message = list(
		"用%FEET%摩擦%TARGET%的阴蒂.",
		"用%FEET%摩擦%TARGET%的小穴.",
		"用%FEET%摩擦%TARGET%的阴部.",
		"用脚在%TARGET%的小穴上上下摩擦."
	)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%喷在了%CAME_IN%的%FEET%上.",
			"%CUMMING%在%CAME_IN%的%FEET%上高潮了.",
			"%CUMMING%的淫液涂满了%CAME_IN%的%FEET%."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"你喷在了%CAME_IN%的%FEET%上.",
			"你在%CAME_IN%的%FEET%上高潮了.",
			"你的淫液涂满了%CAME_IN%的%FEET%."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%喷在了你的%FEET%上.",
			"%CUMMING%在你的%FEET%上高潮了.",
			"%CUMMING%的淫液涂满了你的%FEET%."
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
	user_pleasure = 4
	target_pleasure = 0
	user_arousal = 6
	target_arousal = 2
