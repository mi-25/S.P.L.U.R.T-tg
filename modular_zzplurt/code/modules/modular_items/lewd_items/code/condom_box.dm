/obj/item/storage/box/condoms
	name = "剩余避孕套盒"
	desc = "一大盒避孕套，适合最注重安全的人！"
	icon = 'modular_zzplurt/icons/obj/lewd/fleshlight.dmi'
	icon_state = "box"
	illustration = null

/obj/item/storage/box/condoms/Initialize(mapload)
	. = ..()

	atom_storage.max_slots = 10
	atom_storage.max_total_storage = 10
	atom_storage.max_specific_storage = WEIGHT_CLASS_TINY
	atom_storage.can_hold = list(/obj/item/condom_pack)

/obj/item/storage/box/condoms/PopulateContents()
	// Add maximum amount
	for(var/i in 1 to 10)
		new /obj/item/condom_pack(src)
