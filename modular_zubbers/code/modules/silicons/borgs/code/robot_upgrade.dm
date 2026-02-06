/obj/item/borg/upgrade/transform/ntjack
	name = "机器人模块选择器（中央指挥部）"
	desc = "允许你将一个机器人转变为实验性纳米传讯机器人。"
	icon_state = "module_illegal"
	new_model = /obj/item/robot_model/centcom

/obj/item/borg/upgrade/transform/ntjack/action(mob/living/silicon/robot/cyborg, user = usr)
	return ..()

/obj/item/borg/upgrade/transform/security
	name = "机器人模型选择器（安保）"
	desc = "允许你将一个机器人转变为安保型号，垃圾安保遍地。"
	icon_state = "module_security"
	new_model = /obj/item/robot_model/security

//Research borg upgrades

//ADVANCED ROBOTICS REPAIR
/obj/item/borg/upgrade/healthanalyzer
	name = "研究机器人高级健康分析仪"
	desc = "研究型机器人标准健康分析仪的升级版。"
	icon_state = "module_medical"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/sci)
	model_flags = BORG_MODEL_RESEARCH
	items_to_add = list(/obj/item/healthanalyzer/advanced)
	items_to_remove = list(/obj/item/healthanalyzer)


//Science inducer
/obj/item/borg/upgrade/inducer_sci
	name = "研究集成电力感应器"
	desc = "一个集成感应器，可以使用机器人提供的电力为设备的内部电池充电。"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/sci)
	model_flags = BORG_MODEL_RESEARCH
	items_to_add = list(/obj/item/inducer/cyborg/sci)

//Bluespace RPED
/obj/item/borg/upgrade/brped
	name = "研究机器人快速部件交换装置升级"
	desc = "研究型机器人标准RPED的升级版。"
	icon_state = "module_engineer"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/sci)
	model_flags = BORG_MODEL_RESEARCH
	items_to_add = list(/obj/item/storage/part_replacer/bluespace)
	items_to_remove = list(/obj/item/storage/part_replacer)

// Drapes upgrades
/obj/item/borg/upgrade/processor/Initialize(mapload)
	. = ..()
	model_type += /obj/item/robot_model/sci
	model_flags += BORG_MODEL_RESEARCH

// Engineering BRPED
/obj/item/borg/upgrade/rped/Initialize(mapload)
	. = ..()
	items_to_add = list(/obj/item/storage/part_replacer/bluespace)
	items_to_add -= list(/obj/item/storage/part_replacer)

//Upgrade for the experi scanner
/obj/item/borg/upgrade/experi_scanner
	name = "研究机器人蓝空间实验扫描仪"
	desc = "研究型机器人标准健康分析仪的升级版。"
	icon_state = "module_general"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/sci)
	model_flags = BORG_MODEL_RESEARCH
	items_to_add = list(/obj/item/experi_scanner/bluespace)
	items_to_remove = list(/obj/item/experi_scanner)

// Borg Dom Aura :)
/obj/item/borg/upgrade/dominatrixmodule/action(mob/living/silicon/robot/borg, mob/living/user)
	if(borg.hasToys)
		to_chat(usr, span_warning("该单元已经安装了'娱乐'模块！"))
		return FALSE
	. = ..()
	if(.)
		borg.hasToys = TRUE
		borg.add_quirk(/datum/quirk/dominant_aura)

/obj/item/borg/upgrade/dominatrixmodule/deactivate(mob/living/silicon/robot/borg, mob/living/user)
	. = ..()
	if(.)
		if(borg.hasToys)
			borg.hasToys = FALSE
		borg.remove_quirk(/datum/quirk/dominant_aura)

// Engineering RLD
/obj/item/borg/upgrade/rld
	name = "工程机器人快速照明装置升级"
	desc = "允许机器人使用快速照明装置的升级。"
	icon_state = "module_engineer"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/engineering, /obj/item/robot_model/janitor)
	model_flags = list(BORG_MODEL_ENGINEERING, BORG_MODEL_JANITOR)
	items_to_add = list(/obj/item/construction/rld/cyborg)

// Borg Advanced Xenoarchaeology Bag

/obj/item/borg/upgrade/xenoarch/adv
	name = "机器人高级异星考古袋"
	desc = "一个改进的袋子，用于为科学收集奇怪的石头"
	icon_state = "module_general"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/miner, /obj/item/robot_model/sci)
	model_flags = list(BORG_MODEL_MINER, BORG_MODEL_RESEARCH)
	items_to_add = list(/obj/item/storage/bag/xenoarch/adv)


// Mining Borg Vent Pinpointer

/obj/item/borg/upgrade/pinpointer/vent
	name = "通风口定位器"
	desc = "一个模块化追踪设备。它会定位并指向附近的通风口。"
	icon_state = "module_miner"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/miner)
	model_flags = BORG_MODEL_MINER
	items_to_add = list(/obj/item/pinpointer/vent)

//Borg Proto-Kinetic Accelerators

/obj/item/borg/upgrade/modkit/action(mob/living/silicon/robot/mining_mods)
	. = ..()
	if (.)
		for(var/obj/item/gun/energy/recharge/kinetic_accelerator/pkamods in mining_mods.model.modules)
			return install(pkamods, usr, FALSE)

/obj/item/gun/energy/recharge/kinetic_accelerator/railgun/cyborg
	desc = "便携式粒子加速器。仅可在熔岩地使用"
	holds_charge = TRUE
	unique_frequency = TRUE

/obj/item/gun/energy/recharge/kinetic_accelerator/repeater/cyborg
	desc = "一个带有三发弹匣的PKA"
	holds_charge = TRUE
	unique_frequency = TRUE

/obj/item/gun/energy/recharge/kinetic_accelerator/shotgun/cyborg
	desc = "一个发射三发但冷却时间更长的PKA。"
	holds_charge = TRUE
	unique_frequency = TRUE

/obj/item/gun/energy/recharge/kinetic_accelerator/glock/cyborg
	desc = "一个短管PKA，模式容量更大但伤害和射程较小。"
	holds_charge = TRUE
	unique_frequency = TRUE

/obj/item/gun/energy/recharge/kinetic_accelerator/shockwave/cyborg
	desc = "在使用者周围产生冲击波，威力与基础PKA相同。"
	holds_charge = TRUE
	unique_frequency = TRUE

/obj/item/gun/energy/recharge/kinetic_accelerator/m79/cyborg
	desc = "发射采矿模块服使用的同类炸弹。仅可在熔岩地使用"
	holds_charge = TRUE
	unique_frequency = TRUE

// Mining Borg PKA Upgrades

/obj/item/borg/upgrade/kinetic_accelerator/railgun/cyborg
	name = /obj/item/gun/energy/recharge/kinetic_accelerator/railgun::name
	desc = /obj/item/gun/energy/recharge/kinetic_accelerator/railgun::desc
	icon_state = "module_miner"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/miner)
	model_flags = BORG_MODEL_MINER
	items_to_add = list(/obj/item/gun/energy/recharge/kinetic_accelerator/railgun/cyborg)
	items_to_remove = list(/obj/item/gun/energy/recharge/kinetic_accelerator)

/obj/item/borg/upgrade/kinetic_accelerator/repeater/cyborg
	name = /obj/item/gun/energy/recharge/kinetic_accelerator/repeater::name
	desc = /obj/item/gun/energy/recharge/kinetic_accelerator/repeater::desc
	icon_state = "module_miner"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/miner)
	model_flags = BORG_MODEL_MINER
	items_to_add = list(/obj/item/gun/energy/recharge/kinetic_accelerator/repeater/cyborg)
	items_to_remove = list(/obj/item/gun/energy/recharge/kinetic_accelerator)

/obj/item/borg/upgrade/kinetic_accelerator/shotgun/cyborg
	name = /obj/item/gun/energy/recharge/kinetic_accelerator/shotgun::name
	desc = /obj/item/gun/energy/recharge/kinetic_accelerator/shotgun::desc
	icon_state = "module_miner"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/miner)
	model_flags = BORG_MODEL_MINER
	items_to_add = list(/obj/item/gun/energy/recharge/kinetic_accelerator/shotgun/cyborg)
	items_to_remove = list(/obj/item/gun/energy/recharge/kinetic_accelerator)

/obj/item/borg/upgrade/kinetic_accelerator/glock/cyborg
	name = /obj/item/gun/energy/recharge/kinetic_accelerator/glock::name
	desc = /obj/item/gun/energy/recharge/kinetic_accelerator/glock::desc
	icon_state = "module_miner"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/miner)
	model_flags = BORG_MODEL_MINER
	items_to_add = list(/obj/item/gun/energy/recharge/kinetic_accelerator/glock/cyborg)
	items_to_remove = list(/obj/item/gun/energy/recharge/kinetic_accelerator)

/obj/item/borg/upgrade/kinetic_accelerator/shockwave/cyborg
	name = /obj/item/gun/energy/recharge/kinetic_accelerator/shockwave::name
	desc = /obj/item/gun/energy/recharge/kinetic_accelerator/shockwave::desc
	icon_state = "module_miner"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/miner)
	model_flags = BORG_MODEL_MINER
	items_to_add = list(/obj/item/gun/energy/recharge/kinetic_accelerator/shockwave/cyborg)
	items_to_remove = list(/obj/item/gun/energy/recharge/kinetic_accelerator)

/obj/item/borg/upgrade/kinetic_accelerator/m79/cyborg
	name = /obj/item/gun/energy/recharge/kinetic_accelerator/m79::name
	desc = /obj/item/gun/energy/recharge/kinetic_accelerator/m79::desc
	icon_state = "module_miner"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/miner)
	model_flags = BORG_MODEL_MINER
	items_to_add = list(/obj/item/gun/energy/recharge/kinetic_accelerator/m79/cyborg)
	items_to_remove = list(/obj/item/gun/energy/recharge/kinetic_accelerator)

/// "Good Borg" Obedience Training
/mob/living/silicon/robot
	var/hasToys = FALSE

/obj/item/borg/upgrade/obediencemodule
	name = "机器人服从模块"
	desc = "一个大幅提升机器人表达爱意能力的模块。"
	icon = 'modular_skyrat/modules/borgs/icons/robot_items.dmi'
	icon_state = "module_lust"
	custom_price = 0

	items_to_add = list(/obj/item/kinky_shocker,
						/obj/item/clothing/mask/leatherwhip,
						/obj/item/spanking_pad,
						/obj/item/tickle_feather,
						/obj/item/clothing/erp_leash,
						)

// WellTrained Obedience Behaviour
/obj/item/borg/upgrade/obediencemodule/action(mob/living/silicon/robot/borg, mob/living/user)
	if(borg.hasToys)
		to_chat(usr, span_warning("该单元已经安装了'娱乐'模块！"))
		return FALSE
	. = ..()
	if(.)
		borg.hasToys = TRUE
		borg.add_quirk(/datum/quirk/well_trained)

/obj/item/borg/upgrade/obediencemodule/deactivate(mob/living/silicon/robot/borg, mob/living/user)
	. = ..()
	if(.)
		if(borg.hasToys)
			borg.hasToys = FALSE

		borg.remove_quirk(/datum/quirk/well_trained)

/obj/item/borg/upgrade/detailer
	name = "清洁工精细工具组"
	desc = "升级清洁工机器人的铺设能力，同时增加修改地板贴花的能力。"
	icon_state = "module_janitor"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/janitor)
	model_flags = BORG_MODEL_JANITOR

	items_to_add = list(/obj/item/construction/rtd/borg,
						/obj/item/airlock_painter/decal/cyborg,
						)

/obj/item/borg/upgrade/cyborg_cable_coil
	name = "集成电缆线圈"
	desc = "浓缩卷线技术允许在清洁模块中使用布线技术。"
	icon_state = "module_janitor"
	require_model = TRUE
	model_type = list(/obj/item/robot_model/janitor)
	model_flags = BORG_MODEL_JANITOR

	items_to_add = list (/obj/item/stack/cable_coil)
