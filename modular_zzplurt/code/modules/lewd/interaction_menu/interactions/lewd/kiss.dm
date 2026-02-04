/datum/interaction/lewd/kiss
	name = "接吻"
	description = "深深地吻对方."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH, INTERACTION_REQUIRE_TARGET_MOUTH)
	message = list(
		"给%TARGET%一个热烈而持久的吻.",
		"深深地吻%TARGET%.",
		"将舌头滑入%TARGET%的嘴里.",
		"将嘴唇压在%TARGET%的嘴唇上.",
		"给%TARGET%一个充满激情的吻."
	)
	user_messages = list(
		"你感受到%TARGET%温暖的嘴唇贴着你的嘴唇.",
		"你的舌头与%TARGET%的舌头交缠.",
		"%TARGET%嘴里的味道留在你的唇上."
	)
	target_messages = list(
		"%USER%的舌头在你的嘴里探索.",
		"你感受到%USER%的嘴唇压在你的嘴唇上.",
		"%USER%温暖的吻让你脊背发颤."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/kiss1.ogg',
		'modular_zzplurt/sound/interactions/kiss2.ogg',
		'modular_zzplurt/sound/interactions/kiss3.ogg',
		'modular_zzplurt/sound/interactions/kiss4.ogg',
		'modular_zzplurt/sound/interactions/kiss5.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 2
	target_arousal = 2

/datum/interaction/lewd/kiss/post_interaction(mob/living/user, mob/living/target)
	. = ..()

	// 检查用户是否有TRAIT_KISS_SLUT并增加他们的欲望
	if(HAS_TRAIT(user, TRAIT_KISS_SLUT))
		user.adjust_pleasure(10, target, interaction = src, position = CLIMAX_POSITION_USER)
		user.adjust_arousal(10)
	// 检查目标是否有TRAIT_KISS_SLUT并增加他们的欲望
	if(HAS_TRAIT(target, TRAIT_KISS_SLUT))
		target.adjust_pleasure(10, user, interaction = src, position = CLIMAX_POSITION_TARGET)
		target.adjust_arousal(10)
