/datum/interaction/lewd/slap
	name = "打屁股"
	description = "打对方的屁股."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_BUTT = REQUIRE_GENITAL_EXPOSED)
	message = list(
		"直接打在%TARGET%的屁股上!",
		"拍打%TARGET%的屁股!",
		"给%TARGET%的屁股来了一记响亮的巴掌!",
		"在%TARGET%的屁股上留下一个火辣辣的巴掌印!"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/slap.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	target_pain = 10
	user_arousal = 2
	target_arousal = 0

/datum/interaction/lewd/slap/act(mob/living/user, mob/living/target)
	var/original_pleasure = target_pleasure
	if(HAS_TRAIT(target, TRAIT_MASOCHISM))
		target_pleasure = 2
	. = ..()
	target_pleasure = original_pleasure
