/datum/interaction/lewd/facefuck_vagina
	name = "骑脸（阴道）"
	description = "用你的小穴在对方脸上摩擦."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"用小穴在%TARGET%的脸上研磨.",
		"抓住%TARGET%的后脑勺,强迫对方贴上自己的小穴.",
		"用小穴在%TARGET%的舌头上摩擦.",
		"将%TARGET%的嘴滑入自己的双腿之间.",
		"看着%TARGET%的眼睛,将小穴压在对方等待的舌头上.",
		"摇摆臀部,将下体压在%TARGET%的脸上."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 5
	user_arousal = 8
	target_pleasure = 0
	target_arousal = 3

/datum/interaction/lewd/facefuck_penis
	name = "口交（阴茎）"
	description = "用你的肉棒操对方的嘴."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"粗暴地操%TARGET%的嘴.",
		"将肉棒强行插入%TARGET%的喉咙.",
		"顶着%TARGET%的舌头深入,直到发出紧绷的呛咳声.",
		"抓住%TARGET%的头发,将对方拉到自己肉棒的根部.",
		"看着%TARGET%的眼睛,将肉棒压在对方等待的舌头上.",
		"用力摆动臀部,深深插入%TARGET%的嘴里."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 5
	target_pleasure = 0
	user_arousal = 8
	target_arousal = 3

/datum/interaction/lewd/throatfuck
	name = "深喉"
	description = "操对方的喉咙.（警告:会造成窒息伤害）"
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"残忍地将肉棒插入%TARGET%的喉咙,让对方作呕.",
		"用肉棒让%TARGET%窒息,深入到根部.",
		"猛烈地在%TARGET%的嘴里进出,睾丸拍打着对方的脸."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 7
	target_pleasure = 0
	user_arousal = 10
	target_arousal = 2
	target_pain = 5

/datum/interaction/lewd/throatfuck/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	var/stat_before = target.stat
	target.adjust_oxy_loss(3)
	if(target.stat == UNCONSCIOUS && stat_before != UNCONSCIOUS)
		message = list("%TARGET%被%USER%的肉棒操晕了.")
