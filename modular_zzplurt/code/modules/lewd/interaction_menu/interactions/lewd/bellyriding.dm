// 腹部骑乘组件内部使用的互动
/datum/interaction/lewd/bellyriding
	category = INTERACTION_CAT_HIDE
	user_required_parts = list(ORGAN_SLOT_PENIS)
	usage = INTERACTION_OTHER
	sound_range = 2

/datum/interaction/lewd/bellyriding/groin_rub
	// 这些不会显示在互动菜单中,但我们需要在定义中包含名称和描述（populate_interaction_instances）
	name = "腹部骑乘时肉棒摩擦腹股沟"
	description = "腹部骑乘时肉棒摩擦腹股沟"

	sound_use = TRUE
	sound_possible = list('sound/items/weapons/throwtap.ogg')
	target_required_parts = list()
	target_pleasure = 0
	target_arousal = 2
	user_pleasure = 1
	user_arousal = 2

	message = list(
		"的肉棒在%TARGET%的腹股沟研磨.",
		"的阴茎摩擦着%TARGET%的腹股沟.",
		"的肉棒在%TARGET%的身体上摩擦.",
		"的龟头顶着%TARGET%的腹股沟."
	)
	user_messages = list(
		span_lewd("你的肉棒在%TARGET%的腹股沟研磨."),
		span_lewd("你感受到自己的阴茎摩擦着%TARGET%的腹股沟."),
		span_lewd("你感受到自己的肉棒在%TARGET%的身体上摩擦."),
		span_lewd("你的龟头顶着%TARGET%的腹股沟."),
		span_lewd("%TARGET%的身体因惯性在你的肉棒上研磨.")
	)
	target_messages = list(
		span_lewd("%USER%的肉棒在你的腹股沟研磨."),
		span_lewd("%USER%的阴茎挤进你的双腿之间."),
		span_lewd("%USER%的肉棒在你的身体上摩擦."),
		span_lewd("%USER%的龟头顶着你的腹股沟."),
		span_lewd("你的身体因惯性在%USER%的阴茎上研磨.")
	)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = null)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS, CLIMAX_POSITION_TARGET = null)

/datum/interaction/lewd/bellyriding/frot
	name = "腹部骑乘时肉棒摩擦"
	description = "腹部骑乘时肉棒摩擦"

	sound_use = TRUE
	sound_possible = list('sound/items/weapons/throwtap.ogg')
	target_required_parts = list(ORGAN_SLOT_PENIS)
	target_pleasure = 1
	target_arousal = 2
	user_pleasure = 1
	user_arousal = 2

	message = list(
		"的肉棒与%TARGET%的肉棒研磨.",
		"的阴茎强行与%TARGET%的肉棒摩擦.",
		"的肉棒在%TARGET%的阴茎上摩擦.",
		"的龟头在%TARGET%的阴茎上研磨."
	)
	user_messages = list(
		span_lewd("你的肉棒与%TARGET%的肉棒研磨."),
		span_lewd("你感受到自己的阴茎与%TARGET%的肉棒摩擦."),
		span_lewd("你感受到自己的肉棒在%TARGET%的身体上摩擦."),
		span_lewd("你的龟头强行压在%TARGET%的肉棒上."),
		span_lewd("%TARGET%的肉棒在你的肉棒上研磨.")
	)
	target_messages = list(
		span_lewd("%USER%的肉棒在你的腹股沟研磨."),
		span_lewd("%USER%的阴茎与你的肉棒相互摩擦."),
		span_lewd("%USER%的肉棒在你的肉棒上摩擦."),
		span_lewd("%USER%的龟头强行压在你的阴茎上."),
		span_lewd("你的肉棒因惯性在%USER%的阴茎上研磨.")
	)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = null)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS, CLIMAX_POSITION_TARGET = null)

/datum/interaction/lewd/bellyriding/anus
	name = "腹部骑乘时肉棒插入肛门"
	description = "腹部骑乘时肉棒插入肛门"

	sound_use = TRUE
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	target_required_parts = list(ORGAN_SLOT_ANUS)
	target_pleasure = 3
	target_arousal = 1
	target_pain = 3
	user_pleasure = 3
	user_arousal = 2
	user_pain = 0

	message = list(
		"的肉棒强行插入%TARGET%的肛门.",
		"用阴茎强行撑开%TARGET%的肛门.",
		"用阴茎蹂躏%TARGET%的后穴.",
		"的阴茎以%TARGET%为代价取悦自己."
	)
	user_messages = list(
		span_lewd("你的肉棒强行插入%TARGET%的肛门."),
		span_lewd("你用阴茎强行撑开%TARGET%的肛门."),
		span_lewd("%TARGET%的肛门被强行撑开以容纳你的阴茎."),
		span_lewd("你的阴茎以%TARGET%为代价取悦自己.")
	)
	target_messages = list(
		span_lewd("%USER%的肉棒强行插入你的肛门."),
		span_lewd("你的后穴被%USER%的阴茎强行撑开."),
		span_lewd("你的肛门被强行撑开以容纳%USER%的阴茎."),
		span_lewd("%USER%的阴茎以你的后穴为代价取悦自己.")
	)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = null)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS, CLIMAX_POSITION_TARGET = ORGAN_SLOT_ANUS)

/datum/interaction/lewd/bellyriding/vagina
	name = "腹部骑乘时肉棒插入阴道"
	description = "腹部骑乘时肉棒插入阴道"

	sound_use = TRUE
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	target_required_parts = list(ORGAN_SLOT_VAGINA)
	target_pleasure = 4
	target_arousal = 2
	target_pain = 3
	user_pleasure = 1
	user_arousal = 2
	user_pain = 0

	message = list(
		"的肉棒强行插入%TARGET%的阴道内壁.",
		"用阴茎强行撑开%TARGET%的阴唇.",
		"用阴茎蹂躏%TARGET%的小穴.",
		"的阴茎以%TARGET%为代价取悦自己."
	)
	user_messages = list(
		span_lewd("你的肉棒强行插入%TARGET%的小穴."),
		span_lewd("你用阴茎强行撑开%TARGET%的阴唇."),
		span_lewd("%TARGET%的小穴被撑开以容纳你的肉棒."),
		span_lewd("你的阴茎以%TARGET%为代价取悦自己.")
	)
	target_messages = list(
		span_lewd("%USER%的肉棒强行插入你的小穴."),
		span_lewd("你的阴道张开以容纳%USER%的阴茎."),
		span_lewd("当%USER%的阴茎滑入时,你的小穴被撑开."),
		span_lewd("%USER%的阴茎以你的小穴为代价取悦自己.")
	)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = null)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS, CLIMAX_POSITION_TARGET = ORGAN_SLOT_VAGINA)
