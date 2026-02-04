/datum/interaction/lewd/bellyfuck
	name = "腹部摩擦"
	description = "在对方的腹部摩擦."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_TOPLESS)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%射在了%CAME_IN%的腹部",
		"%CUMMING%将精液射到了%CAME_IN%的肚子上",
		"%CUMMING%的精液覆盖了%CAME_IN%的肚脐"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"你射在了%CAME_IN%的腹部",
		"你将精液射到了%CAME_IN%的肚子上",
		"你的精液覆盖了%CAME_IN%的肚脐"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%CUMMING%射在了你的腹部",
		"%CUMMING%将精液射到了你的肚子上",
		"%CUMMING%的精液覆盖了你的肚脐"
	))
	message = list(
		"用肉棒在%TARGET%的腹部摩擦",
		"用肉棒顶弄%TARGET%的肚脐",
		"用肉棒在%TARGET%的肚子上研磨",
		"在%TARGET%的腹部抽插"
	)
	user_messages = list(
		"你感受到%TARGET%温暖的肌肤贴着你的肉棒",
		"%TARGET%柔软的腹部紧贴着你的阴茎,感觉很舒服",
		"%TARGET%的腹部让你的肉棒感觉美妙"
	)
	target_messages = list(
		"你感受到%USER%的肉棒在你的腹部摩擦",
		"%USER%的阴茎在你的肚子上滑动",
		"%USER%温热的肉棒紧贴着你的肚脐"
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

/datum/interaction/lewd/nuzzle_belly
	name = "蹭蹭肚子"
	description = "用脸蹭蹭对方的肚子."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_TOPLESS)
	message = list(
		"用脸蹭蹭%TARGET%的肚子",
		"用脸贴着%TARGET%的腹部摩擦",
		"将脸颊贴在%TARGET%的肚脐上",
		"依偎在%TARGET%的肚子上"
	)
	user_messages = list(
		"你感受到%TARGET%温暖的肌肤贴着你的脸",
		"%TARGET%柔软的腹部贴着你的脸颊,感觉很舒服",
		"%TARGET%的肚子温暖而诱人"
	)
	target_messages = list(
		"你感受到%USER%的脸蹭着你的肚子",
		"%USER%的脸颊轻柔地摩擦着你的腹部",
		"%USER%温暖的脸贴在你的肚脐上"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/thudswoosh.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 2
	target_arousal = 3

/datum/interaction/lewd/deflate_belly
	name = "缩小肚子"
	description = "让肚子变小."
	user_required_parts = list(ORGAN_SLOT_BELLY = REQUIRE_GENITAL_ANY)
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HUMAN)
	usage = INTERACTION_SELF
	message = list(
		"让自己的肚子变小",
		"从肚子里排出空气",
		"收缩自己的腹部"
	)
	sound_range = 1
	sound_use = FALSE
	user_pleasure = 0
	user_arousal = 0

/datum/interaction/lewd/deflate_belly/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	var/obj/item/organ/genital/belly/gut = user.get_organ_slot(ORGAN_SLOT_BELLY)
	if(gut)
		gut.set_size(max(gut.genital_size - 1, BELLY_MIN_SIZE))
		user.update_body()

/datum/interaction/lewd/inflate_belly
	name = "膨胀肚子"
	description = "让肚子变大."
	user_required_parts = list(ORGAN_SLOT_BELLY = REQUIRE_GENITAL_ANY)
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HUMAN)
	usage = INTERACTION_SELF
	message = list(
		"让自己的肚子膨胀",
		"让自己的肚子变大",
		"扩张自己的腹部"
	)
	sound_range = 1
	sound_use = FALSE
	user_pleasure = 0
	user_arousal = 0

/datum/interaction/lewd/inflate_belly/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	var/obj/item/organ/genital/belly/gut = user.get_organ_slot(ORGAN_SLOT_BELLY)
	if(gut)
		gut.set_size(min(gut.genital_size + 1, BELLY_MAX_SIZE))
		user.update_body()
