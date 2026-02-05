#define TIGHT_SLOWDOWN 2

/obj/item/clothing/suit/corset
	name = "紧身胸衣"
	desc = "一件紧身的乳胶胸衣。怎么会有人能穿得下这个？"
	icon_state = "corset"
	inhand_icon_state = null
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_clothing/lewd_suits.dmi'
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_suit/lewd_suits.dmi'
	worn_icon_digi = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_suit/lewd_suits-digi.dmi'
	worn_icon_taur_snake = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_suit/lewd_suits-snake.dmi'
	worn_icon_taur_paw = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_suit/lewd_suits-paw.dmi'
	worn_icon_taur_hoof = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_suit/lewd_suits-hoof.dmi'
	body_parts_covered = CHEST
	slowdown = 1 // You can't run with that thing literally squeezing your chest

	/// Has it been laced tightly?
	var/laced_tight = FALSE

/obj/item/clothing/suit/corset/click_alt(mob/user)
	laced_tight = !laced_tight
	to_chat(user, span_notice("你[laced_tight ? "收紧" : "放松"]了紧身胸衣，让呼吸变得[laced_tight ? "更加困难" : "更加容易"]。"))
	conditional_pref_sound(user, laced_tight ? get_sfx(SFX_CLOTH_PICKUP) : get_sfx(SFX_CLOTH_DROP), 40, TRUE)
	. = CLICK_ACTION_SUCCESS
	if(laced_tight)
		slowdown = TIGHT_SLOWDOWN
		return
	slowdown = initial(slowdown)

/obj/item/clothing/suit/corset/equipped(mob/living/carbon/human/user, slot)
	. = ..()
	if(laced_tight && src == user.wear_suit)
		to_chat(user, span_purple("紧身胸衣紧紧地挤压着你的肋骨！呼吸突然变得困难多了。"))

/obj/item/clothing/suit/corset/dropped(mob/living/carbon/human/user)
	. = ..()
	if(laced_tight && src == user.wear_suit)
		to_chat(user, span_purple("呼。现在你可以正常呼吸了。"))

#undef TIGHT_SLOWDOWN
