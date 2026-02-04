/datum/interaction/lewd/fuck
	name = "性交"
	description = "操对方的小穴."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_VAGINA, CLIMAX_POSITION_TARGET = ORGAN_SLOT_PENIS)
	message = list(
		"猛烈地抽插%TARGET%的小穴.",
		"将肉棒深深插入%TARGET%的小穴.",
		"在%TARGET%的阴部进出抽插.",
		"一次又一次地深入%TARGET%的小穴到根部."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ1.ogg',
		'modular_zzplurt/sound/interactions/champ2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 8
	target_pleasure = 8
	user_arousal = 12
	target_arousal = 12

/datum/interaction/lewd/fuck/anal
	name = "肛交"
	description = "操对方的肛门."
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_BOTH)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_ANUS, CLIMAX_POSITION_TARGET = ORGAN_SLOT_PENIS)
	message = list(
		"在%TARGET%的肛门进出抽插.",
		"猛烈地抽插%TARGET%的肛门.",
		"用力将臀部撞向%TARGET%的屁股.",
		"一次又一次地深入%TARGET%的肛门到根部."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_use = TRUE
	user_pleasure = 8
	target_pleasure = 4
	user_arousal = 12
	target_arousal = 8
	target_pain = 3

/datum/interaction/lewd/breastfuck
	name = "乳交抽插"
	description = "操对方的乳房."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_BREASTS)
	message = list(
		"操%TARGET%的乳房.",
		"用肉棒在%TARGET%的乳房之间研磨.",
		"在%TARGET%的乳房之间抽插.",
		"抓住%TARGET%的乳房挤在一起,将肉棒压在中间."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 0
	user_arousal = 8
	target_arousal = 3

/datum/interaction/lewd/footfuck
	name = "足部摩擦"
	description = "用你的肉棒在对方的脚上摩擦."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_FEET)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%射在了%CAME_IN%的脚上.",
			"%CUMMING%将精液射到了%CAME_IN%的脚底.",
			"%CUMMING%的精液覆盖了%CAME_IN%的脚趾."
		),
		CLIMAX_POSITION_TARGET = list()
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你射在了%CAME_IN%的脚上.",
			"你将精液射到了%CAME_IN%的脚底.",
			"你的精液覆盖了%CAME_IN%的脚趾."
		),
		CLIMAX_POSITION_TARGET = list()
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%射在了你的脚上.",
			"%CUMMING%将精液射到了你的脚底.",
			"%CUMMING%的精液覆盖了你的脚趾."
		),
		CLIMAX_POSITION_TARGET = list()
	)
	message = list(
		"操%TARGET%的脚.",
		"用肉棒在%TARGET%的脚上摩擦.",
		"用肉棒在%TARGET%的脚上研磨."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/foot_dry1.ogg',
		'modular_zzplurt/sound/interactions/foot_dry3.ogg',
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_wet2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 3
	target_pleasure = 0
	user_arousal = 6
	target_arousal = 2

/datum/interaction/lewd/footfuck/double
	name = "双足摩擦"
	description = "用你的肉棒在对方的双脚之间摩擦."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_FEET)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%射在了%CAME_IN%的双脚上.",
			"%CUMMING%将精液射到了%CAME_IN%的脚底.",
			"%CUMMING%的精液覆盖了%CAME_IN%的脚趾."
		),
		CLIMAX_POSITION_TARGET = list()
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你射在了%CAME_IN%的双脚上.",
			"你将精液射到了%CAME_IN%的脚底.",
			"你的精液覆盖了%CAME_IN%的脚趾."
		),
		CLIMAX_POSITION_TARGET = list()
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%射在了你的双脚上.",
			"%CUMMING%将精液射到了你的脚底.",
			"%CUMMING%的精液覆盖了你的脚趾."
		),
		CLIMAX_POSITION_TARGET = list()
	)
	message = list(
		"操%TARGET%的双脚.",
		"用肉棒在%TARGET%的双脚之间摩擦.",
		"将肉棒在%TARGET%的双脚之间抽插.",
		"用肉棒在%TARGET%的双脚之间研磨."
	)
	user_arousal = 15
	target_arousal = 5

/datum/interaction/lewd/footfuck/vag
	name = "阴部足部摩擦"
	description = "用你的阴部在对方的脚上摩擦."
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%喷在了%CAME_IN%的脚上.",
			"%CUMMING%在%CAME_IN%的脚底高潮了.",
			"%CUMMING%的淫液涂满了%CAME_IN%的脚趾."
		),
		CLIMAX_POSITION_TARGET = list()
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"你喷在了%CAME_IN%的脚上.",
			"你在%CAME_IN%的脚底高潮了.",
			"你的淫液涂满了%CAME_IN%的脚趾."
		),
		CLIMAX_POSITION_TARGET = list()
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING%喷在了你的脚上.",
			"%CUMMING%在你的脚底高潮了.",
			"%CUMMING%的淫液涂满了你的脚趾."
		),
		CLIMAX_POSITION_TARGET = list()
	)
	message = list(
		"用小穴在%TARGET%的脚上研磨.",
		"用阴蒂在%TARGET%的脚上摩擦.",
		"在%TARGET%的脚上蹭动."
	)
	sound_use = TRUE
	user_pleasure = 15
	target_pleasure = 0
	user_arousal = 20
	target_arousal = 5

/datum/interaction/lewd/cockfuck
	name = "尿道交"
	description = "操对方的肉棒."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(
		CLIMAX_POSITION_USER = CLIMAX_PENIS,
		CLIMAX_POSITION_TARGET = CLIMAX_PENIS
	)
	cum_target = list(
		CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS,
		CLIMAX_POSITION_TARGET = ORGAN_SLOT_PENIS
	)
	message = list(
		"将肉棒插入%TARGET%的尿道",
		"用自己的肉棒插入%TARGET%的肉棒",
		"深深插入%TARGET%的尿道",
		"从内部操%TARGET%的肉棒"
	)
	user_messages = list(
		"你感受到%TARGET%的肉棒紧紧包裹着你的肉棒",
		"%TARGET%温暖的尿道包裹着你的阴茎",
		"当你深入时,%TARGET%的肉棒紧紧夹住你的肉棒"
	)
	target_messages = list(
		"你感受到%USER%的肉棒撑开你的尿道",
		"%USER%的阴茎深深插入你的肉棒内部",
		"%USER%温热的肉棒从内部充满你的阴茎"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 6
	user_arousal = 8
	target_arousal = 8
	target_pain = 4
