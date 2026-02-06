#define URETHRA_TOP "urethra_top"
#define URETHRA_BOTTOM "urethra_bottom"

/obj/item/clothing/sextoy/portal_fleshlight
	name = "传送门飞机杯"
	desc = "银色之爱™传送门飞机杯，采用蓝空间技术让恋人们能够远距离亲热。使用前需要与传送门内裤配对。"
	icon = 'modular_zzplurt/icons/obj/lewd/fleshlight.dmi'
	icon_state = "unpaired"
	w_class = WEIGHT_CLASS_SMALL

	/// The linked portal panties
	var/obj/item/clothing/sextoy/portal_panties/linked_panties = null
	/// Whether the fleshlight is useable (has valid configuration)
	var/useable = FALSE
	/// The current target organ for the fleshlight
	var/current_target = ORGAN_SLOT_PENIS
	/// Whether the fleshlight's user is anonymous
	var/anonymous = FALSE

	/// Dictionary mapping panty target and fleshlight target to interaction names
	var/static/list/interaction_map = list(
		ORGAN_SLOT_VAGINA = list(
			ORGAN_SLOT_PENIS = /datum/interaction/lewd/portal/fuck_vagina::name,
			ORGAN_SLOT_VAGINA = /datum/interaction/lewd/portal/tribadism::name,
			ORGAN_SLOT_ANUS = null,
			URETHRA_TOP = null,
			URETHRA_BOTTOM = null,
			BODY_ZONE_PRECISE_MOUTH = /datum/interaction/lewd/portal/oral_vagina::name,
			BODY_ZONE_R_ARM = /datum/interaction/lewd/portal/finger_vagina::name,
			BODY_ZONE_L_ARM = /datum/interaction/lewd/portal/finger_vagina::name,
			BODY_ZONE_R_LEG = /datum/interaction/lewd/portal/feet/footgrind_vagina::name,
			BODY_ZONE_L_LEG = /datum/interaction/lewd/portal/feet/footgrind_vagina::name
		),
		ORGAN_SLOT_ANUS = list(
			ORGAN_SLOT_PENIS = /datum/interaction/lewd/portal/fuck_anus::name,
			ORGAN_SLOT_VAGINA = null,
			ORGAN_SLOT_ANUS = null,
			URETHRA_TOP = null,
			URETHRA_BOTTOM = null,
			BODY_ZONE_PRECISE_MOUTH = /datum/interaction/lewd/portal/oral_anus::name,
			BODY_ZONE_R_ARM = /datum/interaction/lewd/portal/finger_anus::name,
			BODY_ZONE_L_ARM = /datum/interaction/lewd/portal/finger_anus::name,
			BODY_ZONE_R_LEG = /datum/interaction/lewd/portal/feet/footgrind_anus::name,
			BODY_ZONE_L_LEG = /datum/interaction/lewd/portal/feet/footgrind_anus::name
		),
		ORGAN_SLOT_PENIS = list(
			ORGAN_SLOT_PENIS = /datum/interaction/lewd/portal/frotting::name,
			ORGAN_SLOT_VAGINA = /datum/interaction/lewd/portal/vaginal_ride::name,
			ORGAN_SLOT_ANUS = /datum/interaction/lewd/portal/anal_ride::name,
			URETHRA_TOP = /datum/interaction/lewd/portal/fuck_urethra::name,
			URETHRA_BOTTOM = /datum/interaction/lewd/portal/urethral_ride::name,
			BODY_ZONE_PRECISE_MOUTH = /datum/interaction/lewd/portal/oral_penis::name,
			BODY_ZONE_R_ARM = /datum/interaction/lewd/portal/handjob::name,
			BODY_ZONE_L_ARM = /datum/interaction/lewd/portal/handjob::name,
			BODY_ZONE_R_LEG = /datum/interaction/lewd/portal/feet/footjob::name,
			BODY_ZONE_L_LEG = /datum/interaction/lewd/portal/feet/footjob::name
		),
		BODY_ZONE_PRECISE_MOUTH = list(
			ORGAN_SLOT_PENIS = /datum/interaction/lewd/portal/fuck_mouth::name,
			ORGAN_SLOT_VAGINA = null,
			ORGAN_SLOT_ANUS = null,
			URETHRA_TOP = null,
			URETHRA_BOTTOM = null,
			BODY_ZONE_PRECISE_MOUTH = /datum/interaction/lewd/portal/oral_mouth::name,
			BODY_ZONE_R_ARM = /datum/interaction/lewd/portal/finger_mouth::name,
			BODY_ZONE_L_ARM = /datum/interaction/lewd/portal/finger_mouth::name,
			BODY_ZONE_R_LEG = null,
			BODY_ZONE_L_LEG = null
		)
	)

/obj/item/clothing/sextoy/portal_fleshlight/Initialize(mapload)
	. = ..()
	update_appearance()
	register_context()

/obj/item/clothing/sextoy/portal_fleshlight/add_context(atom/source, list/context, obj/item/held_item, mob/user)
	if(isnull(held_item))
		context[SCREENTIP_CONTEXT_LMB] = "拾取"
		context[SCREENTIP_CONTEXT_RMB] = "切换匿名模式"
		context[SCREENTIP_CONTEXT_ALT_LMB] = linked_panties ? "解除内裤绑定" : "未绑定内裤"
		return CONTEXTUAL_SCREENTIP_SET

	if(istype(held_item, /obj/item/clothing/sextoy/portal_panties))
		context[SCREENTIP_CONTEXT_LMB] = "绑定内裤"
		return CONTEXTUAL_SCREENTIP_SET

	if(linked_panties?.loc && ishuman(linked_panties.loc))
		context[SCREENTIP_CONTEXT_LMB] = "对目标使用"
		return CONTEXTUAL_SCREENTIP_SET

	return NONE

/obj/item/clothing/sextoy/portal_fleshlight/update_appearance(updates)
	if(linked_panties && linked_panties.current_target == ORGAN_SLOT_PENIS)
		icon = 'modular_zzplurt/icons/obj/lewd/dildo.dmi'
	else
		icon = 'modular_zzplurt/icons/obj/lewd/fleshlight.dmi'
	. = ..()
	updatesleeve()

/obj/item/clothing/sextoy/portal_fleshlight/examine(mob/user)
	. = ..()
	if(!linked_panties)
		. += span_notice("状态灯熄灭。设备需要与传送门内裤配对。")
		return

	. += span_notice("状态灯[useable ? "亮起" : "熄灭"]。传送门[useable ? "已开启" : "已关闭"]。")
	. += span_notice("当前目标设置为：[current_target]")

/obj/item/clothing/sextoy/portal_fleshlight/attack_self(mob/user)
	. = ..()
	switch(current_target)
		if(ORGAN_SLOT_PENIS)
			current_target = ORGAN_SLOT_VAGINA
		if(ORGAN_SLOT_VAGINA)
			current_target = ORGAN_SLOT_ANUS
		if(ORGAN_SLOT_ANUS)
			current_target = URETHRA_TOP
		if(URETHRA_TOP)
			current_target = URETHRA_BOTTOM
		if(URETHRA_BOTTOM)
			current_target = BODY_ZONE_PRECISE_MOUTH
		if(BODY_ZONE_PRECISE_MOUTH)
			current_target = ORGAN_SLOT_PENIS
	to_chat(user, span_notice("当前目标：[current_target]"))

/obj/item/clothing/sextoy/portal_fleshlight/attack(mob/living/target, mob/living/user, params)
	. = ..()
	if(!istype(linked_panties?.loc, /mob/living/carbon/human))
		to_chat(user, span_warning("传送门飞机杯未与任何已穿戴的传送门内裤绑定！"))
		return

	var/mob/living/carbon/human/target_wearer = linked_panties.loc

	// Get the panty target and fleshlight target
	var/panty_target = linked_panties.current_target
	var/fleshlight_target

	// Determine fleshlight target based on where it's being used
	if(user.zone_selected == BODY_ZONE_PRECISE_GROIN)
		fleshlight_target = current_target
	else
		fleshlight_target = user.zone_selected

	perform_interaction(user, target, target_wearer, panty_target, fleshlight_target)

/obj/item/clothing/sextoy/portal_fleshlight/attackby(obj/item/W, mob/user, list/modifiers, list/attack_modifiers)
	. = ..()

	// Handle portal fleshlight interaction
	if(istype(W, /obj/item/clothing/sextoy/portal_fleshlight))
		var/obj/item/clothing/sextoy/portal_fleshlight/other_fleshlight = W

		// Check if both fleshlights have linked panties
		if(!linked_panties || !other_fleshlight.linked_panties)
			to_chat(user, span_warning("两个传送门飞机杯都需要与传送门内裤绑定！"))
			return

		// Check if both panties are being worn
		if(!istype(linked_panties.loc, /mob/living/carbon/human) || !istype(other_fleshlight.linked_panties.loc, /mob/living/carbon/human))
			to_chat(user, span_warning("两条传送门内裤都需要有人穿着！"))
			return

		var/mob/living/carbon/human/target = linked_panties.loc
		var/mob/living/carbon/human/wearer = other_fleshlight.linked_panties.loc

		// Get panty target from the other fleshlight's panties
		var/panty_target = other_fleshlight.linked_panties.current_target

		// Determine fleshlight target based on conditions
		var/fleshlight_target
		if(linked_panties.current_target == ORGAN_SLOT_PENIS && (other_fleshlight.current_target == URETHRA_TOP || other_fleshlight.current_target == URETHRA_BOTTOM))
			fleshlight_target = other_fleshlight.current_target
		else
			fleshlight_target = linked_panties.current_target

		perform_interaction(user, target, wearer, panty_target, fleshlight_target)
		return

	// Handle portal panties linking
	if(istype(W, /obj/item/clothing/sextoy/portal_panties))
		link_panties(W, user)
		return

/obj/item/clothing/sextoy/portal_fleshlight/proc/perform_interaction(mob/living/user, mob/living/target, mob/living/wearer, panty_target, fleshlight_target)
	// Get the interaction name from the map
	var/interaction_name = interaction_map[panty_target]?[fleshlight_target]
	if(!interaction_name)
		to_chat(user, span_warning("你不能这样使用传送门飞机杯！"))
		return

	// Find the interaction in SSinteractions
	var/datum/interaction/lewd/portal/interaction_to_try = SSinteractions.interactions[interaction_name]

	if(!interaction_to_try?.allow_act(target, wearer))
		to_chat(user, span_warning("你不能这样使用传送门飞机杯！"))
		return

	interaction_to_try.act(target, wearer)
	wearer.do_jitter_animation()

/obj/item/clothing/sextoy/portal_fleshlight/proc/link_panties(obj/item/clothing/sextoy/portal_panties/panties, mob/living/user)
	if(!istype(panties))
		return FALSE

	if(panties.linked_fleshlight)
		to_chat(user, span_warning("[panties]已经与另一个传送门飞机杯绑定了！"))
		return FALSE

	if(linked_panties)
		to_chat(user, span_warning("[src]已经与另一条传送门内裤绑定了！"))
		return FALSE

	linked_panties = panties
	panties.linked_fleshlight = src
	useable = TRUE
	icon_state = "paired"

	playsound(src, 'sound/machines/ping.ogg', 50, FALSE)
	to_chat(user, span_notice("你将[src]与[panties]绑定了。"))

	update_appearance()
	return TRUE

/obj/item/clothing/sextoy/portal_fleshlight/click_alt(mob/user)
	if(!linked_panties)
		to_chat(user, span_warning("[src]未与任何传送门内裤绑定！"))
		return CLICK_ACTION_BLOCKING

	var/choice = tgui_alert(user, "确定要解除传送门内裤的绑定吗？", "解除传送门内裤绑定", list("是", "否"))
	if(choice != "是")
		return CLICK_ACTION_BLOCKING

	to_chat(user, span_notice("你解除了[src]与传送门内裤的绑定。"))
	unlink_panties()
	return CLICK_ACTION_SUCCESS

/obj/item/clothing/sextoy/portal_fleshlight/proc/unlink_panties()
	if(isliving(loc))
		audible_message("[icon2html(src, hearers(linked_panties))] *哔* *哔* *哔*")
		playsound(linked_panties, 'sound/machines/beep/triple_beep.ogg', ASSEMBLY_BEEP_VOLUME, TRUE)
		to_chat(loc, span_notice("内裤发出哔哔声，与[src]的连接已断开。"))

	if(isliving(linked_panties?.loc))
		linked_panties.audible_message("[icon2html(linked_panties, hearers(linked_panties))] *哔* *哔* *哔*")
		playsound(linked_panties, 'sound/machines/beep/triple_beep.ogg', ASSEMBLY_BEEP_VOLUME, TRUE)
		to_chat(linked_panties.loc, span_notice("内裤发出哔哔声，与[src]的连接已断开。"))

	linked_panties.linked_fleshlight = null
	linked_panties = null

	icon_state = "unpaired"
	update_appearance()

/obj/item/clothing/sextoy/portal_fleshlight/Destroy(force)
	if(linked_panties)
		unlink_panties()
	. = ..()

/obj/item/clothing/sextoy/portal_fleshlight/proc/updatesleeve()
	cut_overlays() // Remove current overlays

	var/mob/living/carbon/human/target_wearer = null
	if(linked_panties && ishuman(linked_panties.loc))
		target_wearer = linked_panties.loc
	else
		useable = FALSE
		return

	var/obj/item/organ/genital/target_organ

	// Get the appropriate genital based on panties target
	if(linked_panties.current_target == ORGAN_SLOT_VAGINA)
		target_organ = target_wearer.get_organ_slot(ORGAN_SLOT_VAGINA)
		if(!target_organ || !istype(target_organ, /obj/item/organ/genital/vagina))
			useable = FALSE
			return
	else if(linked_panties.current_target == ORGAN_SLOT_PENIS)
		target_organ = target_wearer.get_organ_slot(ORGAN_SLOT_PENIS)
		if(!target_organ || !istype(target_organ, /obj/item/organ/genital/penis))
			useable = FALSE
			return
	else if(linked_panties.current_target == ORGAN_SLOT_ANUS)
		target_organ = target_wearer.get_organ_slot(ORGAN_SLOT_ANUS)
		if(!target_organ || !istype(target_organ, /obj/item/organ/genital/anus))
			useable = FALSE
			return

	if(target_wearer) // If the portal panties are worn
		if(!linked_panties.equipped_slot) // Check if panties are actually equipped
			useable = FALSE
			return

		// Add the appropriate sleeve overlay based on species
		var/mutable_appearance/sleeve
		if(linked_panties.current_target == ORGAN_SLOT_VAGINA || linked_panties.current_target == ORGAN_SLOT_ANUS || linked_panties.current_target == BODY_ZONE_PRECISE_MOUTH)
			sleeve = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_sleeve_normal")

			if(islizard(target_wearer))
				sleeve = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_sleeve_lizard")
			else if(isunathi(target_wearer))
				sleeve = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_sleeve_lizard")
			else if(isakula(target_wearer))
				sleeve = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_sleeve_akula")
			else if(isslimeperson(target_wearer))
				sleeve = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_sleeve_slime")
			else if(ismammal(target_wearer))
				sleeve = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_sleeve_fluff")
			else if(isvulpkanin(target_wearer))
				sleeve = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_sleeve_fluff")
			else if(istajaran(target_wearer))
				sleeve = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_sleeve_fluff")
			else if(isshadekin(target_wearer))
				sleeve = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_sleeve_fluff")
			else if(isteshari(target_wearer))
				sleeve = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_sleeve_fluff")
			else if(isvox(target_wearer))
				sleeve = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_sleeve_fluff")

			sleeve.color = linked_panties.current_target == ORGAN_SLOT_ANUS && LAZYFIND(list(/datum/sprite_accessory/genital/anus/donut::name, /datum/sprite_accessory/genital/anus/squished::name), target_organ.genital_name) ? target_organ.color : target_wearer.dna.features["mcolor"]
			add_overlay(sleeve)

		// Add the appropriate organ overlay
		var/mutable_appearance/organ
		switch(linked_panties.current_target)
			if(ORGAN_SLOT_VAGINA)
				var/obj/item/organ/genital/vagina/vag = target_organ
				organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag")
				switch(vag.genital_name)
					if("Human")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag")
					if("Puffy")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag_puffy")
					if("Gaping")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag_gaping")
					if("Spade")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag_spade")
					if("Feline")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag_feline")
					if("Equine")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag_equine")
					if("Cervine")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag_cervine")
					if("Sergal")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag_sergal")
					if("Cloaca")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag_cloacal")
					if("Hemi")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag_hemi")
				if(vag.uses_skin_color)
					organ.color = target_wearer.dna.features["mcolor"]
				else
					organ.color = vag.color
				if(vag.aroused == AROUSAL_FULL)
					add_overlay(mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_vag_drip"))
			if(ORGAN_SLOT_ANUS)
				organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_anus")
				organ.color = target_organ.color
			if(ORGAN_SLOT_PENIS)
				var/obj/item/organ/genital/penis/penis = target_organ
				organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/dildo.dmi', "penis")
				switch(penis.genital_name)
					if("Human")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/dildo.dmi', "penis")
					if("Knotted", "Barbed, Knotted")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/dildo.dmi', "knotted")
					if("Flared")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/dildo.dmi', "flared")
					if("Tapered")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/dildo.dmi', "tapered")
					if("Tentacled")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/dildo.dmi', "tentacle")
					if("Hemi", "Knotted Hemi")
						organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/dildo.dmi', "hemi")
				if(penis.uses_skin_color)
					organ.color = target_wearer.dna.features["mcolor"]
				else
					organ.color = penis.color
				if(penis.aroused == AROUSAL_FULL && penis.sheath != SHEATH_NONE)
					add_overlay(mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_penis_drip"))
			if(BODY_ZONE_PRECISE_MOUTH)
				add_overlay(mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_mouth"))
				organ = mutable_appearance('modular_zzplurt/icons/obj/lewd/fleshlight.dmi', "portal_mouth_lips")
				organ.color = target_wearer.lip_style == "lipstick" ? target_wearer.lip_color : "#[target_wearer.dna.features["mcolor"]]"

		// Update name based on target
		name = linked_panties.current_target == ORGAN_SLOT_PENIS ? "传送门假阳具" : "传送门飞机杯"

		useable = TRUE
		add_overlay(organ)
	else
		useable = FALSE

/obj/item/clothing/sextoy/portal_fleshlight/attack_hand_secondary(mob/user, list/modifiers)
	. = ..()
	if(. == SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN)
		return .

	anonymous = !anonymous
	playsound(src, 'sound/machines/ping.ogg', 50, FALSE)
	balloon_alert(user, "匿名模式：[anonymous ? "开启" : "关闭"]")
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

#undef URETHRA_TOP
#undef URETHRA_BOTTOM
