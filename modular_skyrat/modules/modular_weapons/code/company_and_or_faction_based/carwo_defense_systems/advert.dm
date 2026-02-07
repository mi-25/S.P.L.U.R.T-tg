/obj/structure/sign/poster/official/carwo_grenade
	name = "泰德霍尔 - 精准定时"
	desc = "这张海报描绘了，与卡沃防御系统的突出标志一起，各种用于基博科发射器的专用.980泰德霍尔榴弹。"
	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/propaganda.dmi'
	icon_state = "grenadier"

/obj/structure/sign/poster/official/carwo_grenade/examine_more(mob/user)
	. = ..()

	. += "小字详细说明某些类型的榴弹可能因当地武器法规而在您所在地区不可用。\
		然而，可疑的是，如果您眯眼细看，\
		图像的背景颜色会隐约组合成电路板和多工具的形状。\
		他们这是什么意思？"

	return .

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/carwo_grenade, 32)

/obj/structure/sign/poster/official/carwo_magazine
	name = "标准化 - 未来弹匣"
	desc = "这张海报描绘了，与卡沃防御系统的突出标志一起，该公司为步枪提供的各种弹匣类型。\
		它还详细说明，或多或少，任何步枪都可以使用任何步枪弹匣。这真是前所未有的技术。"
	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/propaganda.dmi'
	icon_state = "mag_size"

/obj/structure/sign/poster/official/carwo_magazine/examine_more(mob/user)
	. = ..()

	. += "小字详细说明某些类型的弹匣可能因当地武器法规而在您所在地区不可用。\
		然而，可疑的是，如果您眯眼细看，\
		图像的背景颜色会隐约组合成电路板和多工具的形状。\
		他们这是什么意思？"

	return .

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/carwo_magazine, 32)
