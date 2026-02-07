// Low caliber grenade launcher (fun & games)

/obj/item/gun/ballistic/automatic/sol_grenade_launcher
	name = "\improper 基博科榴弹发射器"
	desc = "一种发射.980榴弹的独特榴弹发射器。激光瞄准系统允许用户指定发射的榴弹在特定距离引爆。"

	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/guns48x.dmi'
	icon_state = "kiboko"

	worn_icon = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_worn.dmi'
	worn_icon_state = "kiboko"

	lefthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_lefthand.dmi'
	righthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_righthand.dmi'
	inhand_icon_state = "kiboko"

	SET_BASE_PIXEL(-8, 0)

	special_mags = TRUE

	bolt_type = BOLT_TYPE_LOCKING

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	accepted_magazine_type = /obj/item/ammo_box/magazine/c980_grenade

	fire_sound = 'modular_skyrat/modules/modular_weapons/sounds/grenade_launcher.ogg'

	can_suppress = FALSE

	burst_size = 1
	fire_delay = 5
	actions_types = list()

	/// The currently stored range to detonate shells at
	var/target_range = 14
	/// The maximum range we can set grenades to detonate at, just to be safe
	var/maximum_target_range = 14

/obj/item/gun/ballistic/automatic/sol_grenade_launcher/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_CARWO)

/obj/item/gun/ballistic/automatic/sol_grenade_launcher/examine(mob/user)
	. = ..()
	. += span_notice("你可以<b>仔细检查</b>以了解更多关于此武器的信息。")

/obj/item/gun/ballistic/automatic/sol_grenade_launcher/examine_more(mob/user)
	. = ..()

	. += "基博科是卡沃提供的最奇怪的武器之一。一款榴弹发射器，\
		但并非标准榴弹尺寸。为该武器开发的更轻的.980泰德霍尔榴弹\
		相比标准榴弹发射弹药提供了许多优势。首先，它明显更轻，\
		更容易携带大量弹药。然而，它提供的另一个优势，\
		也是TerraGov资助该项目的原因：可变时间引信。\
		使用发射器上昂贵的大型测距瞄准镜，\
		用户可以设置榴弹自爆的精确距离。\
		军方几十年的梦想终于实现。然而，较小的弹壳\
		并没有使武器射击更加愉快。得益于前端的大型枪口制退器，\
		后坐力才勉强可控。"

	return .

/obj/item/gun/ballistic/automatic/sol_grenade_launcher/examine(mob/user)
	. = ..()

	. += span_notice("使用<b>右键点击</b>可以设置弹壳引爆距离。")
	. += span_notice("瞄准器中的小指示器显示当前引爆距离为：<b>[target_range]</b>。")

/obj/item/gun/ballistic/automatic/sol_grenade_launcher/ranged_interact_with_atom_secondary(atom/interacting_with, mob/living/user, list/modifiers)
	if(!interacting_with || !user)
		return ITEM_INTERACT_BLOCKING

	var/distance_ranged = get_dist(user, interacting_with)
	if(distance_ranged > maximum_target_range)
		user.balloon_alert(user, "超出范围")
		return ITEM_INTERACT_BLOCKING

	target_range = distance_ranged
	user.balloon_alert(user, "范围设置：[target_range]")
	return ITEM_INTERACT_SUCCESS

/obj/item/gun/ballistic/automatic/sol_grenade_launcher/no_mag
	spawnwithmagazine = FALSE

// fun & games but evil this time

/obj/item/gun/ballistic/automatic/sol_grenade_launcher/evil
	icon_state = "kiboko_evil"
	worn_icon_state = "kiboko_evil"
	inhand_icon_state = "kiboko_evil"

	spawn_magazine_type = /obj/item/ammo_box/magazine/c980_grenade/drum

/obj/item/gun/ballistic/automatic/sol_grenade_launcher/evil/no_mag
	spawnwithmagazine = FALSE
