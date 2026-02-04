/datum/interaction/lewd/unholy/faceshit
	name = "Face Shit"
	description = "对着他们的脸拉屎."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_ANY)
	message = list(
		"蹲在%TARGET%的脸上并释放肠道",
		"直接对着%TARGET%的脸排便",
		"对着%TARGET%的脸释放污秽",
		"强迫%TARGET%体验自己的排泄物"
	)
	user_messages = list(
		"你对着%TARGET%的脸释放时感到一阵轻松",
		"你对着%TARGET%的脸排空肠道",
		"你让%TARGET%处理你的排泄物"
	)
	target_messages = list(
		"%USER%直接对着你的脸释放污秽",
		"你被迫体验%USER%的排泄物",
		"%USER%的排泄物覆盖了你的脸"
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 2
	target_arousal = 2

/datum/interaction/lewd/unholy/faceshit/New()
	sound_possible = GLOB.asscrap_noises // GLOB.asscrap_noises: expected a constant expression
	. = ..()

/datum/interaction/lewd/unholy/faceshit/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	conditional_pref_sound(user, pick('modular_zzplurt/sound/interactions/crapjob.ogg',
			'modular_zzplurt/sound/interactions/crapjob1.ogg'), 80, TRUE, falloff_distance = sound_range, pref_to_check = /datum/preference/toggle/erp/sounds) // interaction with the mouth

/datum/interaction/lewd/unholy/crotchshit
	name = "Crotch Shit"
	description = "对着他们的胯部拉屎."
	user_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_ANY)
	message = list(
		"蹲在%TARGET%的胯部并释放肠道",
		"对着%TARGET%的腹股沟排便",
		"对着%TARGET%的生殖器释放污秽",
		"强迫%TARGET%感受自己的排泄物"
	)
	user_messages = list(
		"你对着%TARGET%的胯部释放时感到一阵轻松",
		"你对着%TARGET%的腹股沟排空肠道",
		"你让%TARGET%处理你的排泄物"
	)
	target_messages = list(
		"%USER%直接对着你的胯部释放污秽",
		"你感受到%USER%的排泄物在你的腹股沟上",
		"%USER%的排泄物覆盖了你的生殖器"
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 2
	target_arousal = 2

/datum/interaction/lewd/unholy/crotchshit/New()
	sound_possible = GLOB.asscrap_noises // GLOB.asscrap_noises: expected a constant expression
	. = ..()

/datum/interaction/lewd/unholy/shitfuck
	name = "Shit Fuck"
	description = "操他们的屁眼 + 拉屎."
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
		"猛烈冲击%TARGET%的屁眼,同时他们释放肠道",
		"操着%TARGET%的后穴,同时他们排便",
		"插入%TARGET%的屁眼,同时他们制造混乱",
		"用肉棒填满%TARGET%,同时他们排空自己"
	)
	user_messages = list(
		"你操着%TARGET%时感受到他们在释放",
		"你猛烈冲击%TARGET%的屁眼,同时他们制造混乱",
		"你让%TARGET%在排空自己的同时感到充实"
	)
	target_messages = list(
		"你在%USER%操你时释放肠道",
		"你感受到%USER%的肉棒,同时制造混乱",
		"你在%USER%填满你时排空自己"
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

/datum/interaction/lewd/unholy/shitfuck/New()
	sound_possible = GLOB.asscrap_noises // GLOB.asscrap_noises: expected a constant expression
	. = ..()

/datum/interaction/lewd/unholy/shitfuck/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	conditional_pref_sound(user, pick('modular_zzplurt/sound/interactions/bang1.ogg',
						'modular_zzplurt/sound/interactions/bang2.ogg',
						'modular_zzplurt/sound/interactions/bang3.ogg'), 80, TRUE, falloff_distance = sound_range, pref_to_check = /datum/preference/toggle/erp/sounds)

/datum/interaction/lewd/unholy/suck_shit
	name = "Suck Shit"
	description = "从他们的屁眼吸出屎."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(
		CLIMAX_POSITION_TARGET = CLIMAX_BOTH
	)
	message = list(
		"将脸埋在%TARGET%的屁股之间并吸出他们的污秽",
		"急切地直接从源头吞食%TARGET%的排泄物",
		"急切地吞食%TARGET%的排泄物",
		"将嘴贴在%TARGET%的菊花上品尝他们的排泄物"
	)
	user_messages = list(
		"你直接从源头吞食%TARGET%的排泄物",
		"你从%TARGET%的屁眼吸出污秽",
		"你用舌头品尝%TARGET%的排泄物"
	)
	target_messages = list(
		"%USER%直接从你的屁眼吸出你的排泄物",
		"你感受到%USER%的嘴从你的菊花拉出排泄物",
		"%USER%急切地吞食你的排泄物"
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 3
	user_arousal = 4
	target_arousal = 5

/datum/interaction/lewd/unholy/suck_shit/New()
	sound_possible = GLOB.asscrap_noises // GLOB.asscrap_noises: expected a constant expression
	sound_possible = GLOB.assswallow_noises // interaction with the mouth
	. = ..()

/datum/interaction/lewd/unholy/suck_shit/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	conditional_pref_sound(user, pick('modular_zzplurt/sound/interactions/crapjob.ogg',
			'modular_zzplurt/sound/interactions/crapjob1.ogg'), 80, TRUE, falloff_distance = sound_range, pref_to_check = /datum/preference/toggle/erp/sounds) // interaction with the mouth
