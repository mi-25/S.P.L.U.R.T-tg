/datum/interaction/lewd/oral_vagina_self
	name = "Lick pussy (Self)"
	description = "Lick your own pussy."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	usage = INTERACTION_SELF
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"舔舐自己的小穴.",
		"用舌头取悦自己.",
		"为自己口交.",
		"急切地舔舐自己的阴蒂."
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
	user_pleasure = 5
	user_arousal = 7

/datum/interaction/lewd/oral_vagina_self/act(mob/living/user, mob/living/target)
	var/default_sounds = sound_possible.Copy()
	if(user.gender == FEMALE)
		sound_possible += list(
			'modular_zzplurt/sound/interactions/girlmouth (1).ogg',
			'modular_zzplurt/sound/interactions/girlmouth (2).ogg'
		)
	else
		sound_possible += list(
			'modular_zzplurt/sound/interactions/guymouth (1).ogg',
			'modular_zzplurt/sound/interactions/guymouth (2).ogg',
			'modular_zzplurt/sound/interactions/guymouth (3).ogg',
			'modular_zzplurt/sound/interactions/guymouth (4).ogg',
			'modular_zzplurt/sound/interactions/guymouth (5).ogg'
		)
	. = ..()
	sound_possible = default_sounds

/datum/interaction/lewd/oral_self
	name = "Selfsuck"
	description = "Suck yourself off."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	usage = INTERACTION_SELF
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"用嘴唇包裹自己的肉棒.",
		"用嘴取悦自己.",
		"急切地吮吸自己的肉棒.",
		"为自己口交."
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
	user_pleasure = 5
	user_arousal = 7

/datum/interaction/lewd/oral_self/act(mob/living/user, mob/living/target)
	var/default_sounds = sound_possible.Copy()
	if(user.gender == FEMALE)
		sound_possible += list(
			'modular_zzplurt/sound/interactions/girlmouth (1).ogg',
			'modular_zzplurt/sound/interactions/girlmouth (2).ogg'
		)
	else
		sound_possible += list(
			'modular_zzplurt/sound/interactions/guymouth (1).ogg',
			'modular_zzplurt/sound/interactions/guymouth (2).ogg',
			'modular_zzplurt/sound/interactions/guymouth (3).ogg',
			'modular_zzplurt/sound/interactions/guymouth (4).ogg',
			'modular_zzplurt/sound/interactions/guymouth (5).ogg'
		)
	. = ..()
	sound_possible = default_sounds
