//normal ball mittens
/obj/item/clothing/gloves/ball_mittens
	name = "球形手套"
	desc = "一副舒适的充气球形手套。"
	icon_state = "ballmittens"
	inhand_icon_state = null
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_clothing/lewd_gloves.dmi'
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_gloves.dmi'
	breakouttime = 1 SECONDS

//That part allows reinforcing this item with handcuffs
/obj/item/clothing/gloves/ball_mittens/attackby(obj/item/attacking_item, mob/user, params)
	. = ..()
	if(.)
		return
	if(!istype(attacking_item, /obj/item/restraints/handcuffs))
		return
	var/obj/item/clothing/gloves/ball_mittens_reinforced/reinforced_muffs = new
	remove_item_from_storage(user)
	user.put_in_hands(reinforced_muffs)
	to_chat(user, span_notice("你用[attacking_item]加固了[src]的束带。"))
	qdel(attacking_item)
	qdel(src)
	return TRUE

//ball_mittens reinforced
/obj/item/clothing/gloves/ball_mittens_reinforced //We getting this item by using handcuffs on normal ball mittens
	name = "加固球形手套"
	desc = "不要戴上这个，脱下来真的很难！但它们看起来好舒服..."
	icon_state = "ballmittens"
	inhand_icon_state = null
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_clothing/lewd_gloves.dmi'
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_gloves.dmi'
	clothing_flags = DANGEROUS_OBJECT
	breakouttime = 100 SECONDS //do not touch this, i beg you.

//latex gloves
/obj/item/clothing/gloves/latex_gloves
	name = "乳胶手套"
	desc = "外观出色的手套，触感令人满意。"
	icon_state = "latexgloves"
	inhand_icon_state = "latex_gloves"
	w_class = WEIGHT_CLASS_SMALL
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_clothing/lewd_gloves.dmi'
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_gloves.dmi'
