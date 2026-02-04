/datum/interaction/lewd/unholy/facefart
	name = "Face Fart"
	description = "对着他们的脸放屁."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_ANY)
	message = list(
		"将屁股压在%TARGET%的脸上并放了个屁",
		"直接对着%TARGET%的脸释放气体",
		"对着%TARGET%的脸放了个恶臭的屁",
		"强迫%TARGET%闻自己的屁"
	)
	user_messages = list(
		"你对着%TARGET%的脸释放气体,感到一阵轻松",
		"你直接对着%TARGET%的脸放了个屁",
		"你让%TARGET%闻你的屁"
	)
	target_messages = list(
		"%USER%直接对着你的脸释放气体",
		"你被迫闻%USER%的屁",
		"%USER%的屁充满了你的鼻孔"
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 2
	target_arousal = 2

/datum/interaction/lewd/unholy/facefart/New()
	sound_possible = GLOB.assbrap_noises // GLOB.assbrap_noises: expected a constant expression
	. = ..()

/datum/interaction/lewd/unholy/facefart/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	conditional_pref_sound(user, pick('modular_zzplurt/sound/interactions/crapjob.ogg',
			'modular_zzplurt/sound/interactions/crapjob1.ogg'), 80, TRUE, falloff_distance = sound_range, pref_to_check = /datum/preference/toggle/erp/sounds) // interaction with the mouth

/datum/interaction/lewd/unholy/crotchfart
	name = "Crotch Fart"
	description = "对着他们的胯部放屁."
	user_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_ANY)
	message = list(
		"将屁股压在%TARGET%的胯部并放了个屁",
		"对着%TARGET%的腹股沟释放气体",
		"对着%TARGET%的生殖器放了个恶臭的屁",
		"强迫%TARGET%感受自己的屁"
	)
	user_messages = list(
		"你对着%TARGET%的胯部释放气体,感到一阵轻松",
		"你直接对着%TARGET%的腹股沟放了个屁",
		"你让%TARGET%感受你的屁"
	)
	target_messages = list(
		"%USER%直接对着你的胯部释放气体",
		"你感受到%USER%的屁在你的腹股沟上",
		"%USER%的屁笼罩着你的生殖器"
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 2
	user_arousal = 3
	target_arousal = 4

/datum/interaction/lewd/unholy/crotchfart/New()
	sound_possible = GLOB.assbrap_noises // GLOB.assbrap_noises: expected a constant expression
	. = ..()

/datum/interaction/lewd/unholy/fartfuck
	name = "Fart Fuck"
	description = "操他们的屁眼 + 放屁."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(
		CLIMAX_POSITION_USER = CLIMAX_PENIS,
		CLIMAX_POSITION_TARGET = CLIMAX_BOTH
	)
	cum_target = list(
		CLIMAX_POSITION_USER = ORGAN_SLOT_ANUS
	)
	message = list(
		"猛烈冲击%TARGET%的屁眼,同时他们对着肉棒释放气体",
		"操着%TARGET%的后穴,同时他们不断放屁",
		"插入%TARGET%的屁眼,同时他们释放屁",
		"操着%TARGET%的同时被他们的屁熏到肉棒"
	)
	user_messages = list(
		"你操着%TARGET%时感受到他们的屁笼罩着你的肉棒",
		"你猛烈冲击%TARGET%的屁眼,同时他们对着你的肉棒放屁",
		"每次抽插都被%TARGET%的屁熏到"
	)
	target_messages = list(
		"你对着体内%USER%的肉棒释放气体",
		"你在%USER%抽插的肉棒周围放屁",
		"你的屁包裹着%USER%操你的肉棒"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 4
	user_arousal = 8
	target_arousal = 6

/datum/interaction/lewd/unholy/fartfuck/New()
	sound_possible = GLOB.assbrap_noises // GLOB.assbrap_noises: expected a constant expression
	. = ..()

/datum/interaction/lewd/unholy/fartfuck/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	conditional_pref_sound(user, pick('modular_zzplurt/sound/interactions/bang1.ogg',
						'modular_zzplurt/sound/interactions/bang2.ogg',
						'modular_zzplurt/sound/interactions/bang3.ogg'), 80, TRUE, falloff_distance = sound_range, pref_to_check = /datum/preference/toggle/erp/sounds)

/datum/interaction/lewd/unholy/suck_fart
	name = "Suck Fart"
	description = "从他们的屁眼吸出屁."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(
		CLIMAX_POSITION_TARGET = CLIMAX_BOTH
	)
	message = list(
		"将脸埋在%TARGET%的屁股之间并吸入他们的屁",
		"直接从%TARGET%的屁眼吸出气体",
		"深深吸入%TARGET%的屁",
		"将嘴贴在%TARGET%的菊花上品尝他们的屁"
	)
	user_messages = list(
		"你直接从源头吸入%TARGET%的屁",
		"你从%TARGET%的屁眼吸出气体",
		"你用舌头品尝%TARGET%的屁"
	)
	target_messages = list(
		"%USER%直接从你的屁眼吸出你的屁",
		"你感受到%USER%的嘴从你的菊花吸出气体",
		"%USER%急切地吸入你的屁"
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 3
	user_arousal = 4
	target_arousal = 5

/datum/interaction/lewd/unholy/suck_fart/New()
	sound_possible = GLOB.assbrap_noises // GLOB.assbrap_noises: expected a constant expression
	. = ..()

/datum/interaction/lewd/unholy/suck_fart/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	conditional_pref_sound(user, pick('modular_zzplurt/sound/interactions/crapjob.ogg',
			'modular_zzplurt/sound/interactions/crapjob1.ogg'), 80, TRUE, falloff_distance = sound_range, pref_to_check = /datum/preference/toggle/erp/sounds) // interaction with the mouth
