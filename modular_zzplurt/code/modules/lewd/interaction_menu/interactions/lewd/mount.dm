/datum/interaction/lewd/mount_vagina
	name = "骑乘（阴道）"
	description = "用你的小穴骑乘对方."
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS, CLIMAX_POSITION_TARGET = ORGAN_SLOT_VAGINA)
	message = list(
		"骑乘%TARGET%的肉棒.",
		"将%TARGET%的肉棒强行插入自己的小穴.",
		"将小穴滑到%TARGET%的肉棒上.",
		"将自己插在%TARGET%的肉棒上."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 7
	target_pleasure = 7
	user_arousal = 10
	target_arousal = 10

/datum/interaction/lewd/mount_anus
	name = "骑乘（肛门）"
	description = "用你的肛门骑乘对方."
	user_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_BOTH, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = null, CLIMAX_POSITION_TARGET = ORGAN_SLOT_ANUS)
	message = list(
		"用肛门骑乘%TARGET%的肉棒.",
		"将%TARGET%的肉棒强行插入自己的肛门.",
		"将肛门滑到%TARGET%的肉棒上.",
		"将自己的肛门插在%TARGET%的肉棒上."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 7
	user_arousal = 8
	target_arousal = 10
	user_pain = 3

/datum/interaction/lewd/mount_face
	name = "坐脸"
	description = "坐在对方的脸上."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	message = list(
		"用屁股在%TARGET%的脸上研磨.",
		"将屁股压在%TARGET%的脸上.",
		"将屁股直接坐在%TARGET%的脸上.",
		"抓住%TARGET%的后脑勺,强迫对方埋进自己的臀瓣."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/squelch1.ogg',
		'modular_zzplurt/sound/interactions/squelch2.ogg',
		'modular_zzplurt/sound/interactions/squelch3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 3
	target_pleasure = 0
	user_arousal = 5
	target_arousal = 3
