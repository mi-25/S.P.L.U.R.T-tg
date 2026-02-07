// Sabres, including the cargo variety

/obj/item/storage/belt/sheath/sabre/cargo
	name = "正宗舍施尔皮鞘"
	desc = "一个外观精美的刀鞘，广告称其由真正的金星黑皮革制成。但摸起来却有塑料感，看起来像是为英式骑兵军刀设计的。"
	icon = 'modular_skyrat/master_files/icons/obj/clothing/belts.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/belt.dmi'
	stored_blade = /obj/item/melee/sabre/cargo

/obj/item/melee/sabre
	force = 20 // Original: 15
	wound_bonus = 5 // Original: 10
	exposed_wound_bonus = 20 // Original: 25 Both down slightly, to make up for the damage buff, since it'd get a bit wacky ontop of the armor pen.

/obj/item/melee/sabre/cargo
	name = "正宗舍施尔军刀"
	desc = "一把精湛制作的历史人类剑，曾被波斯人使用，最近因金星历史重现运动而流行起来。有个小瑕疵：生产这些剑的塔吉公司误将它们当作类似纳米传讯高级官员使用的英式骑兵军刀。至少切割效果一样！"
	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/melee.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/inhands/weapons/swords_righthand.dmi'
	block_chance = 20
	armour_penetration = 25
	force = 15


// This is here so that people can't buy the Sabres and craft them into powercrepes
/datum/crafting_recipe/food/powercrepe
	blacklist = list(/obj/item/melee/sabre/cargo)
