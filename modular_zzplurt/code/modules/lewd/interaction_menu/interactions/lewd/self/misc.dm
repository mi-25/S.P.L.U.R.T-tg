/datum/interaction/lewd/clothesplosion
	name = "爆衣"
	description = "脱光所有的衣物。"
	usage = INTERACTION_SELF
	interaction_requires = list(
		INTERACTION_REQUIRE_SELF_HUMAN
	)
	message = list(
		"瞬间脱掉了所有衣服!",
		"身上的衣物瞬间飞散!",
		"戏剧性地脱光了全身!"
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
