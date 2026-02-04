// 温馨的基于尾巴的社交互动,适用于有尾巴的玩家
// 这些需要 REQUIRE_GENITAL_ANY 标志,适用于所有尾巴类型

/datum/interaction/tail_hug
	name = "Tail Hug"
	description = "用尾巴拥抱某人."
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY)
	message = list("用尾巴拥抱%TARGET%.")
	category = "Miscellaneous"
	sound_use = TRUE
	sound_possible = list('sound/items/weapons/thudswoosh.ogg')

/datum/interaction/tail_pet
	name = "Tail Pet"
	description = "用尾巴抚摸某人."
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY)
	message = list("用尾巴抚摸%TARGET%.")
	category = "Miscellaneous"
	sound_use = TRUE
	sound_possible = list('sound/items/weapons/thudswoosh.ogg')

/datum/interaction/tail_weave
	name = "Tail Intertwine"
	description = "将你的尾巴与他们的尾巴缠绕在一起."
	message = list("将尾巴与%TARGET%的尾巴缠绕在一起.")
	category = "Miscellaneous"
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY)
	target_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY)
	sound_use = TRUE
	sound_possible = list('sound/items/weapons/thudswoosh.ogg')

/datum/interaction/selfhugtail
	name = "Self-Tail Hug"
	description = "拥抱自己的尾巴以获得安慰."
	category = "Miscellaneous"
	message = list("拥抱自己的尾巴.")
	usage = INTERACTION_SELF
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY)
	sound_use = TRUE
	sound_possible = list('sound/items/weapons/thudswoosh.ogg')
