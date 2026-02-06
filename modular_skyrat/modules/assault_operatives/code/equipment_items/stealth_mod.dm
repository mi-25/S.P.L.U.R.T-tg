/datum/mod_theme/covert
	name = "隐秘型"
	desc = "一种罕见的MOD设计，来源未知，覆盖着光滑的装甲，面板坚固而威严。"
	extended_desc = "关于这种被大多数人称为'隐秘型'的装甲，人们所知甚少。\
		其构造是由成型的质钛合金和复合陶瓷组成的流线型分层结构，而内衬则是\
		由轻质凯夫拉和耐久纤维混合编织而成，在装甲板未覆盖的地方为使用者提供充足的保护，\
		并配备了非法的机载电动消融护盾模块，以抵抗常规能量武器。此外，它还内置了变色龙系统，\
		允许你在未展开时伪装装甲。除此之外，找不到任何制造商标记或标签，\
		甚至配色方案对于大多数已知的MOD生产商来说也很陌生。"
	default_skin = "stealth"
	armor_type = /datum/armor/mod_theme_covert
	resistance_flags = FIRE_PROOF | ACID_PROOF
	atom_flags = PREVENT_CONTENTS_EXPLOSION_1
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	siemens_coefficient = 0
	complexity_max = DEFAULT_MAX_COMPLEXITY + 5
	slowdown_deployed = 0
	ui_theme = "hackerman"
	slot_flags = ITEM_SLOT_BELT
	inbuilt_modules = list(
		/obj/item/mod/module/storage/belt,
		/obj/item/mod/module/chameleon/contractor,
		/obj/item/mod/module/welding/camera_vision,
		/obj/item/mod/module/stealth,
	)
	allowed_suit_storage = list(
		/obj/item/flashlight,
		/obj/item/tank/internals,
		/obj/item/ammo_box,
		/obj/item/ammo_casing,
		/obj/item/restraints/handcuffs,
		/obj/item/assembly/flash,
		/obj/item/melee/baton,
		/obj/item/melee/energy/sword,
		/obj/item/shield/energy,
	)
	variants = list(
		"stealth" = list(
			MOD_ICON_OVERRIDE = 'modular_skyrat/modules/assault_operatives/icons/modsuits/mod.dmi',
			MOD_WORN_ICON_OVERRIDE = 'modular_skyrat/modules/assault_operatives/icons/modsuits/wornmod.dmi',
			HELMET_LAYER = NECK_LAYER,
			/obj/item/clothing/head/mod = list(
				UNSEALED_CLOTHING = SNUG_FIT,
				SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
				UNSEALED_INVISIBILITY = HIDEFACIALHAIR,
				SEALED_INVISIBILITY = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDESNOUT,
				SEALED_COVER = HEADCOVERSMOUTH|HEADCOVERSEYES|PEPPERPROOF,
				UNSEALED_MESSAGE = HELMET_UNSEAL_MESSAGE,
				SEALED_MESSAGE = HELMET_SEAL_MESSAGE,
			),
			/obj/item/clothing/suit/mod = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				UNSEALED_MESSAGE = CHESTPLATE_UNSEAL_MESSAGE,
				SEALED_MESSAGE = CHESTPLATE_SEAL_MESSAGE,
			),
			/obj/item/clothing/gloves/mod = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
				UNSEALED_MESSAGE = GAUNTLET_UNSEAL_MESSAGE,
				SEALED_MESSAGE = GAUNTLET_SEAL_MESSAGE,
			),
			/obj/item/clothing/shoes/mod = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
				UNSEALED_MESSAGE = BOOT_UNSEAL_MESSAGE,
				SEALED_MESSAGE = BOOT_SEAL_MESSAGE,
			),
		),
	)

/datum/armor/mod_theme_covert
	melee = 30
	bullet = 50
	laser = 40
	energy = 30
	bomb = 30
	bio = 30
	fire = 100
	acid = 100
	wound = 25

/obj/item/mod/control/pre_equipped/stealth_operative
	worn_icon = 'modular_skyrat/modules/assault_operatives/icons/modsuits/wornmod.dmi'
	icon = 'modular_skyrat/modules/assault_operatives/icons/modsuits/mod.dmi'
	icon_state = "stealth-control"
	theme = /datum/mod_theme/covert
	applied_cell = /obj/item/stock_parts/power_store/cell/hyper
	applied_modules = list(
		/obj/item/mod/module/dna_lock,
		/obj/item/mod/module/emp_shield,
		/obj/item/mod/module/visor/night,
		/obj/item/mod/module/magnetic_harness,
		/obj/item/mod/module/tether,
		/obj/item/mod/module/holster,
	)

/obj/machinery/suit_storage_unit/industrial/assault_operative
	mod_type = /obj/item/mod/control/pre_equipped/stealth_operative
	storage_type = /obj/item/tank/internals/emergency_oxygen/double
