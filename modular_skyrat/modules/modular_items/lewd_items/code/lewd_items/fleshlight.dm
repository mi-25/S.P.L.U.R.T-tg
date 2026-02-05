/obj/item/clothing/sextoy/fleshlight
	name = "飞机杯"
	desc = "一个奇怪的手电筒。"
	icon_state = "fleshlight_pink"
	base_icon_state = "fleshlight"
	inhand_icon_state = "fleshlight_pink"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'
	w_class = WEIGHT_CLASS_SMALL
	/// Current color of the toy, can be changed, affects sprite
	var/current_color = "pink"
	/// If the color of the toy has been changed before
	var/color_changed = FALSE
	/// A list of toy designs for use in the radial color choice menu
	var/static/list/fleshlight_designs
	slot_flags = NONE
	clothing_flags = INEDIBLE_CLOTHING

/// Generates a list of toy colors (or designs) for use in the radial color choice menu
/obj/item/clothing/sextoy/fleshlight/proc/populate_fleshlight_designs()
	fleshlight_designs = list(
		"green" = image(icon = src.icon, icon_state = "[base_icon_state]_green"),
		"pink" = image(icon = src.icon, icon_state = "[base_icon_state]_pink"),
		"teal" = image(icon = src.icon, icon_state = "[base_icon_state]_teal"),
		"red" = image(icon = src.icon, icon_state = "[base_icon_state]_red"),
		"yellow" = image(icon = src.icon, icon_state = "[base_icon_state]_yellow"),
	)

/obj/item/clothing/sextoy/fleshlight/examine(mob/user)
	. = ..()
	if(!color_changed)
		. += span_notice("按住Alt点击以更改其颜色。")

/obj/item/clothing/sextoy/fleshlight/Initialize(mapload)
	. = ..()
	update_icon()
	update_icon_state()
	if(!length(fleshlight_designs))
		populate_fleshlight_designs()

/obj/item/clothing/sextoy/fleshlight/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]_[current_color]"
	inhand_icon_state = "[base_icon_state]_[current_color]"

/obj/item/clothing/sextoy/fleshlight/click_alt(mob/user)
	if(color_changed)
		return CLICK_ACTION_BLOCKING
	var/choice = show_radial_menu(user, src, fleshlight_designs, custom_check = CALLBACK(src, PROC_REF(check_menu), user), radius = 36, require_near = TRUE)
	if(!choice)
		return CLICK_ACTION_BLOCKING
	current_color = choice
	update_icon()
	color_changed = TRUE
	return CLICK_ACTION_SUCCESS

/obj/item/clothing/sextoy/fleshlight/attack(mob/living/carbon/human/target, mob/living/carbon/human/user)
	. = ..()
	if(!istype(target))
		return
	if(target.stat == DEAD)
		return

	if(!target.check_erp_prefs(/datum/preference/toggle/erp/sex_toy, user, src))
		to_chat(user, span_danger("[target]不想让你这么做！"))
		return

	var/obj/item/organ/genital/penis = target.get_organ_slot(ORGAN_SLOT_PENIS)
	if(!penis?.is_exposed())
		to_chat(user, span_danger("看起来[target]的下体被遮住了！"))
		return

	var/message = (user == target) ? pick("在狂喜中呻吟着用[src]自慰",
			"缓慢地在[target]的阴茎上上下移动[src]，让[target.p_them()]在快感中弯下腰",
			"在快感中颤抖着在[target.p_their()]阴茎上移动[src]") \
		: pick("用[src]套弄[target]的阴茎",
			"用[src]抽插[target]",
			"用[src]给[target]打飞机，让[target.p_them()]在狂喜中呻吟")

	if(prob(70))
		target.try_lewd_autoemote(pick("twitch_s", "moan", "blush"))
	target.adjust_arousal(6)
	target.adjust_pleasure(9)
	target.plug13_genital_emote(penis, PLUG13_STRENGTH_HIGH, PLUG13_DURATION_SHORT)
	user.visible_message(span_purple("[user] [message]!"))
	conditional_pref_sound(loc, pick('modular_skyrat/modules/modular_items/lewd_items/sounds/bang1.ogg',
						'modular_skyrat/modules/modular_items/lewd_items/sounds/bang2.ogg',
						'modular_skyrat/modules/modular_items/lewd_items/sounds/bang3.ogg',
						'modular_skyrat/modules/modular_items/lewd_items/sounds/bang4.ogg',
						'modular_skyrat/modules/modular_items/lewd_items/sounds/bang5.ogg',
						'modular_skyrat/modules/modular_items/lewd_items/sounds/bang6.ogg'), 70, 1, -1)

/obj/item/toy/plush/fleshlight/screws
	name = "螺丝总工程师毛绒玩具"
	desc = "一个可爱的蓝色蜥蜴人毛绒玩具，穿着总工程师的制服...她翘起的裙子露出了一个紧致、预先润滑的小穴。"
	icon = 'modular_zubbers/icons/obj/toys/plushes.dmi'
	icon_state = "cescrewsplush"
	base_icon_state = "cescrewsplush"

/obj/item/toy/plush/fleshlight/screws/examine(mob/user)
	. = ..()
	. += span_notice("按住Alt点击以遮住她。")

/obj/item/toy/plush/fleshlight/screws/click_alt(mob/user)
	user.visible_message(span_notice("[user]转动[src]，将下面的洞藏起来。"), span_notice("你转动[src]，用她的小裙子遮住她。"))
	playsound(user, 'sound/effects/blob/blobattack.ogg', 50, TRUE)
	var/obj/item/toy/plush/cescrewsplush/plushie = new(null)
	qdel(src)
	user.put_in_hands(plushie)
	return TRUE

/obj/item/toy/plush/fleshlight/attack(mob/living/carbon/human/target, mob/living/carbon/human/user)
	. = ..()
	if(!istype(target))
		return
	if(target.stat == DEAD)
		return

	if(!target.check_erp_prefs(/datum/preference/toggle/erp/sex_toy, user, src))
		to_chat(user, span_danger("[target]不想让你这么做！"))
		return

	var/obj/item/organ/genital/penis = target.get_organ_slot(ORGAN_SLOT_PENIS)
	if(!penis?.is_exposed())
		to_chat(user, span_danger("看起来[target]的下体被遮住了！"))
		return

	var/message = (user == target) ? pick("在狂喜中呻吟着用[src]自慰",
			"缓慢地在[target]的阴茎上上下移动[src]，让[target.p_them()]在快感中弯下腰",
			"在快感中颤抖着在自己的阴茎上移动[src]") \
		: pick("用[src]套弄[target]的阴茎",
			"用[src]抽插[target]",
			"用[src]给[target]打飞机，让[target.p_them()]在狂喜中呻吟")

	if(prob(70))
		target.try_lewd_autoemote(pick("twitch_s", "moan", "blush"))
	target.adjust_arousal(6)
	target.adjust_pleasure(9)
	target.plug13_genital_emote(penis, PLUG13_STRENGTH_HIGH, PLUG13_DURATION_SHORT) // SPLURT EDIT - Plug13 - Fleshlight
	user.visible_message(span_purple("[user] [message]!"))
	conditional_pref_sound(loc, pick('modular_skyrat/modules/modular_items/lewd_items/sounds/bang1.ogg',
						'modular_skyrat/modules/modular_items/lewd_items/sounds/bang2.ogg',
						'modular_skyrat/modules/modular_items/lewd_items/sounds/bang3.ogg',
						'modular_skyrat/modules/modular_items/lewd_items/sounds/bang4.ogg',
						'modular_skyrat/modules/modular_items/lewd_items/sounds/bang5.ogg',
						'modular_skyrat/modules/modular_items/lewd_items/sounds/bang6.ogg'), 70, 1, -1)

