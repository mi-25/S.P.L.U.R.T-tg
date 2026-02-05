#define CANDLE_LUMINOSITY 2
#define PAIN_DEFAULT 9

/obj/item/bdsm_candle
	name = "大豆蜡烛"
	desc = "一支低熔点的蜡烛。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'
	icon_state = "candle_pink_off"
	base_icon_state = "candle"
	inhand_icon_state = "candle_pink_off"
	w_class = WEIGHT_CLASS_TINY
	light_color = LIGHT_COLOR_FIRE
	heat = 600
	/// Current color of the candle, can be changed and affects sprite
	var/current_color = "pink"
	/// If the color has been changed before
	var/color_changed = FALSE
	/// If the candle is on
	var/lit = FALSE
	/// If the candle should spawn lit
	var/start_lit = FALSE
	/// Static list used for displaying colors in the radial selection menu
	var/static/list/candle_designs
	/// Static list of possible colors for the candle
	var/static/list/candlelights = list(
		"pink" = LIGHT_COLOR_FIRE,
		"teal" = COLOR_CYAN,
	)

//to change color of candle
//create radial menu
/obj/item/bdsm_candle/proc/populate_candle_designs()
	candle_designs = list(
		"pink" = image(icon = src.icon, icon_state = "candle_pink_lit"),
		"teal" = image(icon = src.icon, icon_state = "candle_teal_lit"),
	)

/obj/item/bdsm_candle/proc/update_brightness()
	set_light_on(lit)
	update_light()

/obj/item/bdsm_candle/proc/check_menu(mob/living/user)
	if(!istype(user))
		return FALSE
	if(user.incapacitated)
		return FALSE
	return TRUE

/obj/item/bdsm_candle/Initialize(mapload)
	. = ..()
	update_icon()
	update_icon_state()
	if(start_lit)
		light()
	if(!length(candle_designs))
		populate_candle_designs()

/obj/item/bdsm_candle/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]_[current_color]_[lit ? "lit" : "off"]"
	inhand_icon_state = "[base_icon_state]_[current_color]_[lit ? "lit" : "off"]"

/obj/item/bdsm_candle/attackby(obj/item/object, mob/user, params)
	var/msg = object.ignition_effect(src, user)
	update_brightness()
	if(msg)
		light(msg)
	else
		return ..()

/obj/item/bdsm_candle/fire_act(exposed_temperature, exposed_volume)
	if(!lit)
		light()
		update_brightness()
	return ..()

/obj/item/bdsm_candle/get_temperature()
	return lit * heat

/obj/item/bdsm_candle/proc/light(show_message)
	if(lit)
		return
	lit = TRUE
	if(show_message)
		usr.visible_message(show_message)
	set_light(CANDLE_LUMINOSITY)
	START_PROCESSING(SSobj, src)
	update_icon()
	update_brightness()

/obj/item/bdsm_candle/proc/put_out_candle()
	if(!lit)
		return
	lit = FALSE
	update_icon()
	set_light(0)
	return TRUE

/obj/item/bdsm_candle/extinguish()
	put_out_candle()
	return ..()

/obj/item/bdsm_candle/process(seconds_per_tick)
	if(!lit)
		return PROCESS_KILL
	open_flame()
	update_brightness()

/obj/item/bdsm_candle/examine(mob/user)
	. = ..()
	if(!color_changed && !lit)
		. += span_notice("按住Alt点击以更改其颜色。")
	else if(lit)
		. += span_notice("按住Alt点击以熄灭火焰。")

/obj/item/bdsm_candle/click_alt(mob/user)
	if(!lit && !color_changed)
		var/choice = show_radial_menu(user, src, candle_designs, custom_check = CALLBACK(src, PROC_REF(check_menu), user), radius = 36, require_near = TRUE)
		if(!choice)
			return CLICK_ACTION_BLOCKING
		current_color = choice
		light_color = candlelights[choice]
		update_icon()
		update_brightness()
		color_changed = TRUE
		return CLICK_ACTION_SUCCESS
	else
		if(!put_out_candle())
			return CLICK_ACTION_BLOCKING
		user.visible_message(span_notice("[user] snuffs [src]."))
		return CLICK_ACTION_SUCCESS

/*
*	WAX DROPPING
*/

/obj/item/bdsm_candle/attack(mob/living/carbon/human/attacked, mob/living/carbon/human/user)
	. = ..()
	if(attacked.stat == DEAD)
		return
	if(!istype(attacked))
		return

	var/message = ""
	if(!attacked.check_erp_prefs(/datum/preference/toggle/erp/sex_toy, user, src))
		to_chat(user, span_danger("看起来[attacked]不想让你这么做。"))
		return
	if(!lit)
		to_chat(user, span_danger("[src]需要点燃才能产生蜡油！"))
		return
	switch(user.zone_selected) //to let code know what part of body we gonna wax
		if(BODY_ZONE_PRECISE_GROIN)
			var/obj/item/organ/genital/penis = attacked.get_organ_slot(ORGAN_SLOT_PENIS)
			var/obj/item/organ/genital/vagina = attacked.get_organ_slot(ORGAN_SLOT_VAGINA)
			var/penis_message = (user == attacked) ? pick("在[attacked.p_their()]的阴茎上滴了一些蜡，让[attacked.p_them()]愉悦地呻吟起来。",
						"在[attacked.p_them()]自己身上滴了一些蜡，让蜡油流到[attacked.p_their()]的阴茎上。") \
					: pick("直接在[attacked]的阴茎上滴蜡。有点痒。",
						"从[src]上滴下热蜡到[attacked]的阴茎上，[attacked.p_they()]微微颤抖。",
						"倾斜蜡烛。从[src]滴下的蜡油落在[attacked]的阴茎上，让[attacked.p_them()]呻吟起来。")

			var/vagina_message = (user == attacked) ? pick("在[attacked.p_them()]自己身上滴了一些蜡，让蜡油流到[attacked.p_their()]的阴道上。",
						"在[attacked.p_their()]的小穴上滴了一些蜡，[attacked.p_they()]愉悦地呻吟起来") \
					: pick("在[attacked]的阴道上滴了一些蜡。",
						"倾斜蜡烛，蜡油缓缓滴下，流到[attacked]的阴道上。",
						"倾斜蜡烛。从[src]滴下的蜡油落在[attacked]的小穴上，让[attacked.p_them()]呻吟起来。")

			if(vagina?.is_exposed() && penis?.is_exposed())
				message = pick(penis_message, vagina_message)
			else if(penis?.is_exposed())
				message = penis_message
			else if(vagina?.is_exposed())
				message = vagina_message
			else if(attacked.is_bottomless())
				message = (user == attacked) ? pick("在[attacked.p_them()]自己身上滴了一些蜡，让蜡油流到[attacked.p_their()]的肚子上，[attacked.p_they()]愉悦地呻吟起来。",
						"在[attacked]的肚子上滴了一些蜡") \
					: pick("在[attacked]的肚子上滴了一些蜡",
						"倾斜蜡烛，蜡油缓缓滴下，流到[attacked]的肚子上。",
						"倾斜蜡烛。从[src]滴下的蜡油落在[attacked]的下腹上，让[attacked.p_them()]呻吟起来。")
			else
				to_chat(user, span_danger("看起来[attacked]的下体被遮住了！"))
				return
			attacked.adjust_pain(PAIN_DEFAULT)
			attacked.client?.plug13.send_emote(PLUG13_EMOTE_MASOCHISM, PAIN_DEFAULT, PLUG13_DURATION_SHORT) // SPLURT EDIT - Plug13 - Torture Candle

		if(BODY_ZONE_CHEST)
			var/obj/item/organ/genital/breasts = attacked.get_organ_slot(ORGAN_SLOT_BREASTS)
			if(breasts?.is_exposed())
				var/breasts_or_nipples = breasts ? ORGAN_SLOT_BREASTS : ORGAN_SLOT_NIPPLES
				message = (user == attacked) ? pick("在[attacked.p_their()]的[breasts_or_nipples]上滴了一些蜡，释放出[attacked.p_their()]所有的欲望",
						"直接在[attacked.p_their()]的[breasts ? "乳房" : "胸部"]上滴了一些蜡，让[attacked.p_their()]感到晕眩。") \
					: pick("将从[src]缓缓滴下的蜡油倒在[attacked]的[breasts_or_nipples]上，[attacked.p_they()]露出纯粹的享受。",
						"倾斜蜡烛。就在蜡油滴在[attacked]的[breasts_or_nipples]上的那一刻，[attacked.p_they()]颤抖起来",
						"倾斜蜡烛。就在热蜡滴落在[attacked]的[breasts_or_nipples]上时，[attacked.p_they()]轻声愉悦地呻吟起来")
				attacked.adjust_pain(PAIN_DEFAULT * 0.66)
				attacked.client?.plug13.send_emote(PLUG13_EMOTE_MASOCHISM, PAIN_DEFAULT * 0.66, PLUG13_DURATION_SHORT) // SPLURT EDIT - Plug13 - Torture Candle

			else
				to_chat(user, span_danger("看起来[attacked]的胸部被遮住了！"))
				return
		else
			return
	attacked.do_jitter_animation()
	if(prob(50))
		attacked.try_lewd_autoemote(pick("twitch_s" , "gasp", "shiver"))
	user.visible_message(span_purple("[user] [message]!"))
	conditional_pref_sound(loc, pick('modular_zubbers/sound/lewd/vax1.ogg',
						'modular_zubbers/sound/lewd/vax2.ogg'), 70, TRUE)

#undef CANDLE_LUMINOSITY
#undef PAIN_DEFAULT
