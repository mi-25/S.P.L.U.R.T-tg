/datum/interaction/lewd/clothesplosion
	name = "爆衣"
	description = "从衣服中爆裂而出。"
	usage = INTERACTION_SELF
	interaction_requires = list(
		INTERACTION_REQUIRE_SELF_HUMAN
	)
	message = list(
		"从衣服中爆裂而出!",
		"从服装中爆炸而出!",
		"戏剧性地撕破衣服挣脱出来!"
	)
	sound_range = 1
	sound_use = FALSE
	user_pleasure = 0
	user_arousal = 0

/datum/interaction/lewd/clothesplosion/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!istype(user))
		return
	user.clothing_burst(FALSE)
