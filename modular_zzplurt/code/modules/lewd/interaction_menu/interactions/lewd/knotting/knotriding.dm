/datum/interaction/lewd/knotting/knotfucking/knotride_pussy
	name = "Knotride (Vagina)"
	description = "Ride their knot with your pussy."
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS, CLIMAX_POSITION_TARGET = ORGAN_SLOT_VAGINA)
	message = list(
		"骑乘%TARGET%的%KNOT%.",
		"将%TARGET%的%KNOT%强行插入自己的小穴.",
		"让%TARGET%的%KNOT%在小穴里进出.",
		"将自己插在%TARGET%的肉棒上."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 9
	target_pleasure = 9
	user_arousal = 12
	target_arousal = 12
	user_pain = 2

/datum/interaction/lewd/knotting/knotfucking/knotride_anus
	name = "Knotride (Anus)"
	description = "Ride their knot with your ass."
	user_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_TARGET = ORGAN_SLOT_ANUS)
	message = list(
		"用肛门骑乘%TARGET%的%KNOT%.",
		"将%TARGET%的%KNOT%强行插入自己的肛门.",
		"让%TARGET%的%KNOT%在肛门里进出.",
		"将肛门插在%TARGET%的肉棒上."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 5
	target_pleasure = 8
	user_arousal = 9
	target_arousal = 11
	user_pain = 4
