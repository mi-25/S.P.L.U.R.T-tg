
/datum/interaction/lewd/ears_rub
	name = "抚摸耳朵"
	description = "轻柔地抚摸对方的耳朵."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	message = list("抚摸%TARGET%的耳朵.")
	sound_use = TRUE
	sound_possible = list('sound/items/weapons/thudswoosh.ogg')

/datum/interaction/lewd/ears_lick
	name = "舔舐耳朵"
	description = "舔舐对方的耳朵."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	message = list("舔舐%TARGET%的耳朵.")
	sound_use = TRUE
	sound_possible = list('sound/items/weapons/thudswoosh.ogg')
