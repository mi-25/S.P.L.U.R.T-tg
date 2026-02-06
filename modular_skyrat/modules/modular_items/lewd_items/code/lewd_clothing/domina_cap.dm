/obj/item/clothing/head/domina_cap
	name = "支配者帽"
	desc = "用于特殊类型的检查。"
	icon_state = "dominacap"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_clothing/lewd_hats.dmi'
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_hats.dmi'
	supports_variations_flags = NONE

//message when equipping that thing
/obj/item/clothing/head/domina_cap/equipped(mob/living/carbon/user, slot)
	. = ..()
	if(src == user.head)
		to_chat(user, span_purple("你感到更加坚定了。"))

//message when unequipping that thing
/obj/item/clothing/head/domina_cap/dropped(mob/living/carbon/user)
	. = ..()
	if(src == user.head)
		to_chat(user, span_purple("BDSM环节结束了吗？"))
