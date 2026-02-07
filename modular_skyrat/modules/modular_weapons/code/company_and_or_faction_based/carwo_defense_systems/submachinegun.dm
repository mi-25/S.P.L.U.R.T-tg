// Base Sol SMG

/obj/item/gun/ballistic/automatic/sol_smg
	name = "\improper 辛达诺冲锋枪"
	desc = "一把发射.35 Sol的小型冲锋枪。常见于私人军事公司和其他令人不快的公司人员手中。接受任何标准Sol手枪弹匣。"

	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/guns32x.dmi'
	icon_state = "sindano"

	lefthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_lefthand.dmi'
	righthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_righthand.dmi'
	inhand_icon_state = "sindano"

	special_mags = TRUE

	bolt_type = BOLT_TYPE_OPEN

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BELT

	accepted_magazine_type = /obj/item/ammo_box/magazine/c35sol_pistol
	spawn_magazine_type = /obj/item/ammo_box/magazine/c35sol_pistol/stendo

	fire_sound = 'modular_skyrat/modules/modular_weapons/sounds/smg_light.ogg'
	can_suppress = TRUE

	suppressor_x_offset = 11

	burst_size = 3
	fire_delay = 0.2 SECONDS

	spread = 7.5

/obj/item/gun/ballistic/automatic/sol_smg/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_CARWO)

/obj/item/gun/ballistic/automatic/sol_smg/examine(mob/user)
	. = ..()
	. += span_notice("你可以<b>仔细检查</b>以了解更多关于此武器的信息。")

/obj/item/gun/ballistic/automatic/sol_smg/examine_more(mob/user)
	. = ..()

	. += "辛达诺冲锋枪最初为军事合同生产。\
		这些枪出现在从医疗兵、舰船技师、后勤官员到穿梭机飞行员等任何人手中，\
		后者经常携带好几把只是为了炫耀。由于TerraGov致力于延长\
		其后勤官员和军需官的寿命，这款武器使用与其他大多数小口径\
		军事武器相同的标准手枪弹药。这使得手枪和冲锋枪之间的\
		弹匣可以互换，真不错！"

	return .

/obj/item/gun/ballistic/automatic/sol_smg/no_mag
	spawnwithmagazine = FALSE

// Sindano (evil)

/obj/item/gun/ballistic/automatic/sol_smg/evil
	desc = "一把小型冲锋枪，这把被涂成了战术酷黑色。接受任何标准Sol手枪弹匣。"

	icon_state = "sindano_evil"
	inhand_icon_state = "sindano_evil"

/obj/item/gun/ballistic/automatic/sol_smg/evil/no_mag
	spawnwithmagazine = FALSE
