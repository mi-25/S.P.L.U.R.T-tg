/datum/interaction/lewd/rimjob
	name = "舔肛"
	description = "舔对方的肛门."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_BOTH)
	message = list(
		"舔舐%TARGET%的肛门.",
		"深深地舔%TARGET%的后穴.",
		"将舌头埋进%TARGET%的肛门.",
		"将舌头压在%TARGET%的菊花上.",
		"热情地舔舐%TARGET%的肛门."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 4
	user_arousal = 3
	target_arousal = 6

/datum/interaction/lewd/lickfeet
	name = "舔脚"
	description = "舔对方的脚."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH, INTERACTION_REQUIRE_TARGET_FEET)
	message = list(
		"舔舐%TARGET%的赤脚.",
		"用舌头滑过%TARGET%的脚底.",
		"舔舐%TARGET%的脚趾.",
		"品尝%TARGET%的赤脚."
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

/datum/interaction/lewd/lickfeet/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/obj/item/clothing/shoes/shoes = target.get_item_by_slot(ITEM_SLOT_FEET)

	if(shoes)
		message = list(
			"舔舐%TARGET%的[shoes.name].",
			"用舌头滑过%TARGET%的[shoes.name].",
			"用舌头拖过%TARGET%的[shoes.name].",
			"品尝%TARGET%的[shoes.name]."
		)
	. = ..()
	message = original_messages

/datum/interaction/lewd/lick_sweat
	name = "舔汗"
	description = "舔对方的汗水."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	message = list(
		"舔掉%TARGET%皮肤上的汗水",
		"品尝%TARGET%咸咸的汗水",
		"用舌头滑过%TARGET%满是汗水的身体",
		"品味%TARGET%的汗液"
	)
	user_messages = list(
		"你品尝到%TARGET%咸咸的汗水",
		"%TARGET%汗水的味道充满你的嘴",
		"你品味%TARGET%皮肤上咸咸的味道"
	)
	target_messages = list(
		"你感受到%USER%的舌头舔舐你的汗水",
		"%USER%湿润的舌头滑过你满是汗水的皮肤",
		"%USER%温热的口腔让你湿润的皮肤感到酥麻"
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

/datum/interaction/lewd/lick_nuts
	name = "舔睾丸"
	description = "舔对方的睾丸."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_TESTICLES = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	message = list(
		"舔舐%TARGET%的睾丸",
		"吮吸%TARGET%的睾丸",
		"用舌头舔%TARGET%的阴囊",
		"用舌头崇拜%TARGET%的睾丸"
	)
	user_messages = list(
		"你感受到%TARGET%的睾丸贴着你的舌头",
		"%TARGET%阴囊的味道充满你的嘴",
		"你热情地关注%TARGET%的睾丸"
	)
	target_messages = list(
		"%USER%的舌头在你的睾丸上游走",
		"你感受到%USER%温热的嘴含着你的阴囊",
		"%USER%温热的舌头让你的睾丸感到酥麻"
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
	target_pleasure = 3
	user_arousal = 3
	target_arousal = 5
