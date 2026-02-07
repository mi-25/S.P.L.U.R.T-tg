// .35 Sol pistol magazines

/obj/item/ammo_box/magazine/c35sol_pistol
	name = "\improper Sol手枪弹匣"
	desc = "TerraGov手枪的标准尺寸弹匣，可容纳十二发子弹。"
	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "pistol_35_standard"
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	ammo_type = /obj/item/ammo_casing/c35sol
	caliber = CALIBER_SOL35SHORT
	max_ammo = 12

/obj/item/ammo_box/magazine/c35sol_pistol/starts_empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/c35sol_pistol/stendo
	name = "\improper Sol扩展手枪弹匣"
	desc = "TerraGov手枪的扩展弹匣，可容纳二十四发子弹。"
	icon_state = "pistol_35_stended"
	max_ammo = 24

/obj/item/ammo_box/magazine/c35sol_pistol/stendo/starts_empty
	start_empty = TRUE

// .40 Sol rifle magazines

/obj/item/ammo_box/magazine/c40sol_rifle
	name = "\improper Sol步枪短弹匣"
	desc = "TerraGov步枪的缩短弹匣，可容纳十五发子弹。"
	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "rifle_short"
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	ammo_type = /obj/item/ammo_casing/c40sol
	caliber = CALIBER_SOL40LONG
	max_ammo = 15

/obj/item/ammo_box/magazine/c40sol_rifle/starts_empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/c40sol_rifle/standard
	name = "\improper Sol步枪弹匣"
	desc = "TerraGov步枪的标准尺寸弹匣，可容纳三十发子弹。"
	icon_state = "rifle_standard"
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 30

/obj/item/ammo_box/magazine/c40sol_rifle/standard/starts_empty
	start_empty = TRUE


/obj/item/ammo_box/magazine/c40sol_rifle/drum
	name = "\improper Sol步枪弹鼓"
	desc = "TerraGov步枪的大型弹鼓，可容纳六十发子弹。"
	icon_state = "rifle_drum"
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 60

/obj/item/ammo_box/magazine/c40sol_rifle/drum/starts_empty
	start_empty = TRUE

// .980 grenade magazines

/obj/item/ammo_box/magazine/c980_grenade
	name = "\improper Kiboko榴弹盒"
	desc = "标准尺寸的.980榴弹盒，可容纳四发榴弹。"
	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "granata_standard"
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	w_class = WEIGHT_CLASS_NORMAL
	ammo_type = /obj/item/ammo_casing/c980grenade
	caliber = CALIBER_980TYDHOUER
	max_ammo = 4

/obj/item/ammo_box/magazine/c980_grenade/starts_empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/c980_grenade/drum
	name = "\improper Kiboko榴弹鼓"
	desc = ".980榴弹的弹鼓，可容纳六发榴弹。"
	icon_state = "granata_drum"
	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 6

/obj/item/ammo_box/magazine/c980_grenade/drum/starts_empty
	start_empty = TRUE

// .40 Sol Long
// 步枪口径无壳弹药，杀敌效果出色

/obj/item/ammo_casing/c40sol
	name = ".40 Sol Long致命子弹弹壳"
	desc = "TerraGov标准的无壳致命步枪子弹。"

	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40sol"

	caliber = CALIBER_SOL40LONG
	projectile_type = /obj/projectile/bullet/c40sol


/obj/item/ammo_casing/c40sol/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)


/obj/projectile/bullet/c40sol
	name = ".40 Sol Long子弹"
	damage = 35

	wound_bonus = -30
	exposed_wound_bonus = -35


/obj/item/ammo_box/c40sol
	name = "弹药盒 (.40 Sol Long致命)"
	desc = "一盒.40 Sol Long步枪子弹，内含三十发子弹。"

	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL

	caliber = CALIBER_SOL40LONG
	ammo_type = /obj/item/ammo_casing/c40sol
	max_ammo = 30


// .40 Sol fragmentation rounds, embeds shrapnel in the target almost every time at close to medium range. Teeeechnically less lethals.

/obj/item/ammo_casing/c40sol/fragmentation
	name = ".40 Sol Long破片子弹弹壳"
	desc = "TerraGov标准的无壳破片步枪子弹。撞击时会碎裂，射出锋利的破片，可能使目标丧失行动能力。"

	icon_state = "40sol_disabler"

	projectile_type = /obj/projectile/bullet/c40sol/fragmentation

	advanced_print_req = TRUE

	harmful = FALSE


/obj/projectile/bullet/c40sol/fragmentation
	name = ".40 Sol Long破片子弹"
	damage = 15
	stamina = 30

	weak_against_armour = TRUE

	sharpness = SHARP_EDGED
	wound_bonus = 0
	exposed_wound_bonus = 20

	shrapnel_type = /obj/item/shrapnel/stingball
	embed_type = /datum/embedding/c40sol_fragmentation

	embed_falloff_tile = -5

/datum/embedding/c40sol_fragmentation
	embed_chance = 50
	fall_chance = 5
	jostle_chance = 5
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.4
	pain_mult = 2
	jostle_pain_mult = 3
	rip_time = 0.5 SECONDS

/obj/item/ammo_box/c40sol/fragmentation
	name = "弹药盒 (.40 Sol Long破片)"
	desc = "一盒.40 Sol Long步枪子弹，内含三十发子弹。蓝色条纹表示此盒应装填低致命性弹药。"

	icon_state = "40box_disabler"

	ammo_type = /obj/item/ammo_casing/c40sol/fragmentation


// .40 Sol match grade, bounces a lot, and if there's less than 20 bullet armor on wherever these hit, it'll go completely through the target and out the other side

/obj/item/ammo_casing/c40sol/pierce
	name = ".40 Sol Long竞赛弹弹壳"
	desc = "TerraGov标准的无壳竞赛级步枪子弹。以更高的压力发射，因此射出的弹头速度稍快。 \
		传言说你可以用这些子弹玩出酷炫的墙壁反弹技巧射击，但官方建议是直接射击目标， \
		而不是射击他们旁边的墙壁。"

	icon_state = "40sol_pierce"

	projectile_type = /obj/projectile/bullet/c40sol/pierce

	custom_materials = AMMO_MATS_AP
	advanced_print_req = TRUE


/obj/projectile/bullet/c40sol/pierce
	name = ".40 Sol竞赛弹"

	icon_state = "gaussphase"

	speed = 2

	damage = 25
	armour_penetration = 20

	wound_bonus = -30
	exposed_wound_bonus = -10

	ricochets_max = 2
	ricochet_chance = 80
	ricochet_auto_aim_range = 4
	ricochet_incidence_leeway = 65

	projectile_piercing = PASSMOB


/obj/projectile/bullet/c40sol/pierce/on_hit(atom/target, blocked = 0, pierce_hit)
	if(isliving(target))
		var/mob/living/poor_sap = target

		// If the target mob has enough armor to stop the bullet, or the bullet has already gone through two people, stop it on this hit
		if((poor_sap.run_armor_check(def_zone, BULLET, "", "", silent = TRUE) > 20) || (pierces > 2))
			projectile_piercing = NONE

			if(damage > 10) // Lets just be safe with this one
				damage -= 5
			armour_penetration -= 10

	return ..()


/obj/item/ammo_box/c40sol/pierce
	name = "弹药盒 (.40 Sol Long竞赛弹)"
	desc = "一盒.40 Sol Long步枪子弹，内含三十发子弹。黄色条纹表示此盒应装填高性能弹药。"

	icon_state = "40box_pierce"

	ammo_type = /obj/item/ammo_casing/c40sol/pierce


// .40 Sol incendiary

/obj/item/ammo_casing/c40sol/incendiary
	name = ".40 Sol Long燃烧弹弹壳"
	desc = "TerraGov标准的无壳燃烧步枪子弹。不会留下火焰轨迹，只在撞击时点燃目标。"

	icon_state = "40sol_flame"

	projectile_type = /obj/projectile/bullet/c40sol/incendiary

	custom_materials = AMMO_MATS_TEMP
	advanced_print_req = TRUE


/obj/projectile/bullet/c40sol/incendiary
	name = ".40 Sol Long燃烧弹"
	icon_state = "redtrac"

	damage = 25

	/// How many firestacks the bullet should impart upon a target when impacting
	var/firestacks_to_give = 1


/obj/projectile/bullet/c40sol/incendiary/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()

	if(iscarbon(target))
		var/mob/living/carbon/gaslighter = target
		gaslighter.adjust_fire_stacks(firestacks_to_give)
		gaslighter.ignite_mob()


/obj/item/ammo_box/c40sol/incendiary
	name = "弹药盒 (.40 Sol Long燃烧弹)"
	desc = "一盒.40 Sol Long步枪子弹，内含三十发子弹。橙色条纹表示此盒应装填燃烧弹药。"

	icon_state = "40box_flame"

	ammo_type = /obj/item/ammo_casing/c40sol/incendiary
