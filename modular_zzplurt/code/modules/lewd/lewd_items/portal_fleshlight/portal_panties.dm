/obj/item/clothing/sextoy/portal_panties
	name = "传送门内裤"
	desc = "一条采用蓝空间技术的内裤，让恋人们能够远距离亲热。使用前需要与传送门飞机杯配对。"
	icon = 'modular_zzplurt/icons/obj/lewd/fleshlight.dmi'
	icon_state = "portal_panties"
	worn_icon = 'modular_zzplurt/icons/mob/clothing/underwear.dmi' //TODO: Add a worn icon for this item
	w_class = WEIGHT_CLASS_SMALL
	slot_flags = ITEM_SLOT_MASK
	extra_slot_flags = ITEM_SLOT_UNDERWEAR
	lewd_slot_flags = LEWD_SLOT_PENIS | LEWD_SLOT_VAGINA | LEWD_SLOT_ANUS
	var/obj/item/clothing/sextoy/portal_fleshlight/linked_fleshlight = null
	var/current_target = null
	var/equipped_slot = null
	/// Whether the panties' wearer is anonymous
	var/anonymous = FALSE

/obj/item/clothing/sextoy/portal_panties/Initialize(mapload)
	. = ..()
	register_context()

/obj/item/clothing/sextoy/portal_panties/add_context(atom/source, list/context, obj/item/held_item, mob/user)
	if(isnull(held_item))
		context[SCREENTIP_CONTEXT_LMB] = "拾取"
		context[SCREENTIP_CONTEXT_RMB] = "切换匿名模式"
		context[SCREENTIP_CONTEXT_ALT_LMB] = linked_fleshlight ? "解除飞机杯绑定" : "未绑定飞机杯"
		return CONTEXTUAL_SCREENTIP_SET

	if(istype(held_item, /obj/item/clothing/sextoy/portal_fleshlight))
		context[SCREENTIP_CONTEXT_LMB] = "绑定飞机杯"
		return CONTEXTUAL_SCREENTIP_SET

	return NONE

/obj/item/clothing/sextoy/portal_panties/examine(mob/user)
	. = ..()
	if(!linked_fleshlight)
		. += span_notice("状态灯熄灭。设备需要与传送门飞机杯配对。")
		return

	. += span_notice("状态灯[equipped_slot ? "亮起" : "熄灭"]。传送门[equipped_slot ? "已开启" : "已关闭"]。")
	if(equipped_slot)
		. += span_notice("当前目标为：[current_target]")

	. += span_notice("作为内裤穿着可自动检测生殖器")
	. += span_notice("作为面罩穿着可连接到嘴部")
	. += span_notice("穿戴在生殖器槽位可连接到特定生殖器")

/obj/item/clothing/sextoy/portal_panties/attackby(obj/item/W, mob/user, list/modifiers, list/attack_modifiers)
	. = ..()
	var/obj/item/clothing/sextoy/portal_fleshlight/portal_toy = W
	if(!istype(portal_toy))
		return
	portal_toy.link_panties(src, user)

/obj/item/clothing/sextoy/portal_panties/lewd_equipped(mob/living/carbon/human/user, slot, initial)
	. = ..()
	update_target(user, slot)

/obj/item/clothing/sextoy/portal_panties/equipped(mob/living/carbon/human/user, slot)
	. = ..()
	update_target(user, slot)

/obj/item/clothing/sextoy/portal_panties/dropped(mob/living/carbon/human/user)
	. = ..()
	update_target(user)

/obj/item/clothing/sextoy/portal_panties/proc/update_target(mob/living/carbon/human/user, slot)
	if(!istype(user))
		return

	equipped_slot = slot

	switch(slot)
		if(ITEM_SLOT_UNDERWEAR)
			if(ismob(loc))
				var/mob/living/carbon/human/H = loc
				if(H.has_vagina())
					current_target = ORGAN_SLOT_VAGINA
				else if(H.has_penis())
					current_target = ORGAN_SLOT_PENIS
				else
					current_target = ORGAN_SLOT_ANUS
		if(ITEM_SLOT_MASK)
			current_target = BODY_ZONE_PRECISE_MOUTH
		if(ORGAN_SLOT_PENIS)
			current_target = ORGAN_SLOT_PENIS
		if(ORGAN_SLOT_VAGINA)
			current_target = ORGAN_SLOT_VAGINA
		if(ORGAN_SLOT_ANUS)
			current_target = ORGAN_SLOT_ANUS
		else
			current_target = null

	if(linked_fleshlight)
		linked_fleshlight.update_appearance()
	else if(slot in list(ITEM_SLOT_UNDERWEAR, ITEM_SLOT_MASK, ORGAN_SLOT_PENIS, ORGAN_SLOT_VAGINA, ORGAN_SLOT_ANUS))
		audible_message("[icon2html(src, hearers(src))] *哔* *哔* *哔*")
		playsound(src, 'sound/machines/beep/triple_beep.ogg', ASSEMBLY_BEEP_VOLUME, TRUE)
		to_chat(user, span_notice("内裤未与传送门飞机杯绑定。"))

/obj/item/clothing/sextoy/portal_panties/attack_hand_secondary(mob/user, list/modifiers)
	. = ..()
	if(. == SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN)
		return .

	anonymous = !anonymous
	playsound(src, 'sound/machines/ping.ogg', 50, FALSE)
	balloon_alert(user, "匿名模式：[anonymous ? "开启" : "关闭"]")
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/item/clothing/sextoy/portal_panties/click_alt(mob/user)
	if(!linked_fleshlight)
		to_chat(user, span_warning("[src]未与任何传送门飞机杯绑定！"))
		return CLICK_ACTION_BLOCKING

	var/choice = tgui_alert(user, "确定要解除传送门飞机杯的绑定吗？", "解除传送门飞机杯绑定", list("是", "否"))
	if(choice != "是")
		return CLICK_ACTION_BLOCKING

	to_chat(user, span_notice("你解除了[src]与传送门飞机杯的绑定。"))
	linked_fleshlight.unlink_panties()

/obj/item/clothing/sextoy/portal_panties/Destroy()
	if(linked_fleshlight)
		linked_fleshlight.unlink_panties()
		linked_fleshlight = null
	return ..()
