/obj/item/storage/box/portal_fleshlight
	name = "传送门飞机杯套装"
	desc = "一个精致的银色小盒子，上面压印着银色之爱公司的标志。"
	icon = 'modular_zzplurt/icons/obj/lewd/fleshlight.dmi'
	icon_state = "box"
	illustration = null
	custom_price = 15

/obj/item/storage/box/portal_fleshlight/Initialize(mapload)
	. = ..()
	atom_storage.max_specific_storage = WEIGHT_CLASS_SMALL
	atom_storage.max_total_storage = 10
	atom_storage.max_slots = 3

/obj/item/storage/box/portal_fleshlight/PopulateContents()
	new /obj/item/clothing/sextoy/portal_fleshlight(src)
	new /obj/item/clothing/sextoy/portal_panties(src)
	new /obj/item/paper/fluff/portal_fleshlight(src)

/obj/item/paper/fluff/portal_fleshlight
	name = "传送门飞机杯使用说明"
	default_raw_text = {"感谢您购买银色之爱传送门飞机杯！<br>\
	使用方法：首先将您的新飞机杯与配套的内裤进行配对绑定，然后让您的爱人穿上内裤。<br>\
	右键点击飞机杯可以切换不同的目标部位。<br>\
	飞机杯和内裤都可以通过右键点击切换到匿名模式。<br>\
	祝你们玩得愉快，亲爱的恋人们~<br>\
	<br>\
	威廉敏娜·施泰纳 敬上"}
