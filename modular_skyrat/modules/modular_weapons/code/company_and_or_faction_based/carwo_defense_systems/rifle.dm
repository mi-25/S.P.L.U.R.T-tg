// Base Sol rifle

/obj/item/gun/ballistic/automatic/sol_rifle
	name = "\improper 卡沃-卡维尔战斗步枪"
	desc = "一支发射.40 Sol的重型战斗步枪。常见于TerraGov军方人员手中。接受任何标准TerraGov步枪弹匣。"

	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/guns48x.dmi'
	icon_state = "infanterie"

	worn_icon = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_worn.dmi'
	worn_icon_state = "infanterie"

	lefthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_lefthand.dmi'
	righthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_righthand.dmi'
	inhand_icon_state = "infanterie"

	SET_BASE_PIXEL(-8, 0)

	special_mags = TRUE

	bolt_type = BOLT_TYPE_LOCKING

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	accepted_magazine_type = /obj/item/ammo_box/magazine/c40sol_rifle
	spawn_magazine_type = /obj/item/ammo_box/magazine/c40sol_rifle/standard

	fire_sound = 'modular_skyrat/modules/modular_weapons/sounds/rifle_heavy.ogg'
	suppressed_sound = 'modular_skyrat/modules/modular_weapons/sounds/suppressed_rifle.ogg'
	can_suppress = TRUE

	suppressor_x_offset = 12

	burst_size = 1
	fire_delay = 0.45 SECONDS
	actions_types = list()

	spread = 7.5
	projectile_wound_bonus = -10

/obj/item/gun/ballistic/automatic/sol_rifle/Initialize(mapload)
	. = ..()

	give_autofire()

/// Separate proc for handling auto fire just because one of these subtypes isn't otomatica
/obj/item/gun/ballistic/automatic/sol_rifle/proc/give_autofire()
	AddComponent(/datum/component/automatic_fire, fire_delay)

/obj/item/gun/ballistic/automatic/sol_rifle/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_CARWO)

/obj/item/gun/ballistic/automatic/sol_rifle/examine(mob/user)
	. = ..()
	. += span_notice("你可以<b>仔细检查</b>以了解更多关于此武器的信息。")

/obj/item/gun/ballistic/automatic/sol_rifle/examine_more(mob/user)
	. = ..()

	. += "卡沃-卡维尔步枪由卡沃公司制造，供TerraGov各步兵部队使用。\
		遵循相当合理的军事要求，使用相同的几种弹药和弹匣，\
		各地后勤协调员和军需官的寿命因此延长了数年。\
		虽然过去通常只供军方销售，但最近某些未具名武器制造商的倒闭\
		促使卡沃公司将其许多军用武器向民用市场开放，\
		其中包括这一款。"

	return .

/obj/item/gun/ballistic/automatic/sol_rifle/no_mag
	spawnwithmagazine = FALSE

// Sol marksman rifle

/obj/item/gun/ballistic/automatic/sol_rifle/marksman
	name = "\improper 卡维尔精确射手步枪"
	desc = "一支重型精确射手步枪，常见于TerraGov军方人员手中。接受任何标准TerraGov步枪弹匣。"

	icon_state = "elite"
	worn_icon_state = "elite"
	inhand_icon_state = "elite"

	spawn_magazine_type = /obj/item/ammo_box/magazine/c40sol_rifle

	fire_delay = 0.75 SECONDS

	spread = 0
	projectile_damage_multiplier = 1.2
	projectile_wound_bonus = 10

/obj/item/gun/ballistic/automatic/sol_rifle/marksman/Initialize(mapload)
	. = ..()

	AddComponent(/datum/component/scope, range_modifier = 2)

/obj/item/gun/ballistic/automatic/sol_rifle/marksman/give_autofire()
	return

/obj/item/gun/ballistic/automatic/sol_rifle/marksman/examine_more(mob/user)
	. = ..()

	. += "这个特定变体是一款精确射手步枪。\
		为了半自动设置、更合适的枪托和通常配备的瞄准镜，\
		自动射击功能被舍弃。通常也配备较小的弹匣以方便射手，\
		但与其他Sol步枪一样，所有标准弹匣类型都适用。"

	return .

/obj/item/gun/ballistic/automatic/sol_rifle/marksman/no_mag
	spawnwithmagazine = FALSE

// Machinegun based on the base Sol rifle

/obj/item/gun/ballistic/automatic/sol_rifle/machinegun
	name = "\improper 卡拉德轻机枪"
	desc = "一挺重型机枪，常见于TerraGov军方人员手中。接受任何标准TerraGov步枪弹匣。"

	icon_state = "outomaties"
	worn_icon_state = "outomaties"
	inhand_icon_state = "outomaties"

	bolt_type = BOLT_TYPE_OPEN

	spawn_magazine_type = /obj/item/ammo_box/magazine/c40sol_rifle/drum

	fire_delay = 0.1 SECONDS

	recoil = 1
	spread = 12.5
	projectile_wound_bonus = -20

/obj/item/gun/ballistic/automatic/sol_rifle/machinegun/examine_more(mob/user)
	. = ..()

	. += "你现在看到的步枪'卡拉德'变体，\
		是一种将武器改造为合格（即使不是最优）轻机枪的改装。\
		为了支持机枪角色，内部结构被转换为开放式枪机，实现更快的射速。\
		这些改进，加上本就不太适合全自动使用的战斗步枪，\
		造就了一款相对笨重的武器。然而，机枪终究是机枪，\
		无论保持瞄准有多困难。"

	return .

/obj/item/gun/ballistic/automatic/sol_rifle/machinegun/no_mag
	spawnwithmagazine = FALSE

// Evil version of the rifle (nothing different its just black)

/obj/item/gun/ballistic/automatic/sol_rifle/evil
	desc = "一支重型战斗步枪，这把似乎被涂成了战术酷黑色。接受任何标准TerraGov步枪弹匣。"

	icon_state = "infanterie_evil"
	worn_icon_state = "infanterie_evil"
	inhand_icon_state = "infanterie_evil"

/obj/item/gun/ballistic/automatic/sol_rifle/evil/no_mag
	spawnwithmagazine = FALSE
