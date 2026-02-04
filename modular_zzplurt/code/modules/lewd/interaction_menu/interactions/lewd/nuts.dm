/datum/interaction/lewd/nuts
	name = "用睾丸蹭脸"
	description = "把你的睾丸压在对方脸上."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_TESTICLES = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"抓住%TARGET%的后脑勺,将对方的脸拉向自己的胯部.",
		"将阴囊直接压在%TARGET%的脸上.",
		"粗暴地用肥硕的阴囊在%TARGET%的嘴上研磨.",
		"从%TARGET%被侵犯的嘴里拔出沾满唾液的睾丸,然后将黏液抹在对方脸上.",
		"用手指撬开%TARGET%的下颚,然后用另一只手将整个阴囊塞进去!",
		"站在距离%TARGET%脸部几英寸的地方,然后向前挺胯,用沉重的阴囊闷住%TARGET%的整张脸."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 3
	target_pleasure = 0
	user_arousal = 5
	target_arousal = 2

/datum/interaction/lewd/nut_smack
	name = "打睾丸"
	description = "打对方的睾丸."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_TESTICLES = REQUIRE_GENITAL_EXPOSED)
	message = list(
		"打了%TARGET%的睾丸!",
		"拍打%TARGET%的睾丸!",
		"给%TARGET%的睾丸来了一巴掌!",
		"直接打在%TARGET%的睾丸上!"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/slap.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = -10
	target_pain = 15
	user_arousal = 2
	target_arousal = 0

/datum/interaction/lewd/nut_smack/act(mob/living/user, mob/living/target)
	var/original_pleasure = target_pleasure
	if(HAS_TRAIT(target, TRAIT_MASOCHISM))
		target_pleasure = abs(original_pleasure) * 1.5 // 受虐狂从疼痛中获得50%额外快感
	. = ..()
	target_pleasure = original_pleasure
