/obj/item/reagent_containers/cup/glass/drinkingglass/shotglass/syndicate
	name = "小酒杯"
	desc = "一个小酒杯 - 糟糕决策的普遍象征。"
	icon_state = "shotglass"
	base_icon_state = "shotglass"
	gulp_size = 50
	amount_per_transfer_from_this = 50
	possible_transfer_amounts = list(50)
	volume = 50
	initial_reagent_flags = REFILLABLE | DRAINABLE

/obj/item/storage/box/syndieshotglasses
	name = "小酒杯盒"
	desc = "上面有小酒杯的图片。"
	illustration = "drinkglass"

/obj/item/storage/box/syndieshotglasses/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/cup/glass/drinkingglass/shotglass/syndicate(src)
