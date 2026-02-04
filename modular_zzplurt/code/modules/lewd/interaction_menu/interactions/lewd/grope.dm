/datum/interaction/lewd/grope_ass
	name = "揉捏屁股"
	description = "揉捏对方的屁股."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	message = list(
		"揉捏%TARGET%的屁股",
		"挤压%TARGET%的臀部",
		"抚摸%TARGET%的后臀",
		"抓住%TARGET%的臀瓣"
	)
	user_messages = list(
		"你感受到%TARGET%柔软的屁股在你的手中",
		"%TARGET%紧实的臀部在你的手掌中感觉很舒服",
		"你挤压%TARGET%丰满的后臀"
	)
	target_messages = list(
		"你感受到%USER%的手揉捏你的屁股",
		"%USER%的手指挤压你的臀瓣",
		"%USER%温暖的手掌压在你的后臀上"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions//thudswoosh.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3
