/datum/interaction/lewd/oral_vagina
	name = "舔阴"
	description = "为对方口交."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_TARGET = CLIMAX_TARGET_MOUTH)
	message = list(
		"将脸埋进%TARGET%的小穴.",
		"蹭着%TARGET%湿润的私处.",
		"发现自己的脸被夹在%TARGET%的大腿之间.",
		"跪在%TARGET%的双腿之间.",
		"抓住%TARGET%的双腿,将它们分开.",
		"将脸埋进%TARGET%的大腿之间."
	)
	user_messages = list(
		"你感受到%TARGET%温暖的湿润贴着你的脸.",
		"%TARGET%的欲望气息充满你的感官.",
		"你将舌头更深地探入%TARGET%的花瓣."
	)
	target_messages = list(
		"%USER%的舌头探索你的小穴.",
		"你感受到%USER%炽热的呼吸吹在你的私处.",
		"%USER%嘴巴的温暖让你脊背发颤."
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
	user_pleasure = 0
	target_pleasure = 5
	user_arousal = 3
	target_arousal = 7

/datum/interaction/lewd/oral_vagina/act(mob/living/user, mob/living/target)
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

/datum/interaction/lewd/oral_penis
	name = "口交"
	description = "为对方口交."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_TARGET = CLIMAX_TARGET_MOUTH)
	message = list(
		"将%TARGET%的肉棒含入嘴里.",
		"用嘴唇包裹%TARGET%的肉棒.",
		"发现自己的脸在%TARGET%的大腿之间.",
		"跪在%TARGET%的双腿之间.",
		"抓住%TARGET%的双腿,亲吻对方肉棒的顶端.",
		"为%TARGET%口交."
	)
	user_messages = list(
		"你感受到%TARGET%的肉棒在你嘴里跳动.",
		"%TARGET%前列腺液的味道留在你的舌头上.",
		"你将%TARGET%更深地含入喉咙."
	)
	target_messages = list(
		"%USER%的舌头在你的肉棒上打转.",
		"你感受到%USER%炽热的嘴包裹着你.",
		"%USER%喉咙的温暖让你颤抖."
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
	user_pleasure = 0
	target_pleasure = 5
	user_arousal = 3
	target_arousal = 7

/datum/interaction/lewd/oral_penis/act(mob/living/user, mob/living/target)
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

/datum/interaction/lewd/oral_penis/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!ishuman(target))
		return
	if(prob((target.dna.features["sexual_potency"] * 10) + 15))
		user.adjust_oxy_loss(3)
		target.adjust_arousal(10)
		target.adjust_pleasure(10, user, interaction = src, position = CLIMAX_POSITION_TARGET)
