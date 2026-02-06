/*
*	NORMAL COLLAR
*/

//To determine what kind of stuff we can put in collar.

/datum/storage/pockets/small/kink_collar
	max_slots = 1

/datum/storage/pockets/small/kink_collar/New()
	. = ..()
	can_hold = typecacheof(list(
	/obj/item/food/cookie,
	/obj/item/food/cookie/sugar))

/datum/storage/pockets/small/kink_collar/locked/New()
	. = ..()
	can_hold = typecacheof(list(
	/obj/item/food/cookie,
	/obj/item/food/cookie/sugar,
	/obj/item/key/kink_collar))

/datum/storage/pockets/small/kink_collar/mind_collar/New()
	. = ..()
	can_hold = typecacheof(/obj/item/mind_controller)

//Here goes code for normal collar

/obj/item/clothing/neck/kink_collar
	name = "项圈"
	desc = "一个漂亮、紧致的项圈。它紧贴你的皮肤。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_clothing/lewd_neck.dmi'
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_neck.dmi'
	icon_state = "collar_cyan"
	body_parts_covered = NECK
	slot_flags = ITEM_SLOT_NECK
	w_class = WEIGHT_CLASS_SMALL
	interaction_flags_click = NEED_DEXTERITY
	unique_reskin = list("Cyan" = "collar_cyan",
						"Yellow" = "collar_yellow",
						"Green" = "collar_green",
						"Red" = "collar_red",
						"Latex" = "collar_latex",
						"Orange" = "collar_orange",
						"White" = "collar_white",
						"Purple" = "collar_purple",
						"Black" = "collar_black",
						"Black-teal" = "collar_tealblack",
						"Spike" = "collar_spike")
	kink_collar = TRUE
	/// What the name on the tag is
	var/tagname = null
	/// Item path of on-init creation in the collar's storage
	var/treat_path = /obj/item/food/cookie

//spawn thing in collar

/obj/item/clothing/neck/kink_collar/Initialize(mapload)
	. = ..()
	create_storage(storage_type = /datum/storage/pockets/small/kink_collar)
	var/obj/item/key/kink_collar/key
	if(!treat_path)
		return
	key = new treat_path(src)
	if(!istype(key))
		return
	var/id = REF(src)
	var/obj/item/key/kink_collar/collar_key = key
	collar_key.key_id = id

//rename collar code

/obj/item/clothing/neck/kink_collar/attack_self(mob/user)
	tagname = stripped_input(user, "你想更改标签上的名字吗？", "给你的新宠物命名", "小斑", MAX_NAME_LEN)
	name = "[initial(name)] - [tagname]"

/*
*	LOCKED COLLAR
*/

/obj/item/clothing/neck/kink_collar/locked
	name = "带锁项圈"
	desc = "一个紧致的项圈。它似乎有某种锁。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_clothing/lewd_neck.dmi'
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_neck.dmi'
	icon_state = "lock_collar_cyan"
	treat_path = /obj/item/key/kink_collar
	interaction_flags_click = NEED_DEXTERITY
	unique_reskin = list("Cyan" = "lock_collar_cyan",
						"Yellow" = "lock_collar_yellow",
						"Green" = "lock_collar_green",
						"Red" = "lock_collar_red",
						"Latex" = "lock_collar_latex",
						"Orange" = "lock_collar_orange",
						"White" = "lock_collar_white",
						"Purple" = "lock_collar_purple",
						"Black" = "lock_collar_black",
						"Black-teal" = "lock_collar_tealblack",
						"Spike" = "lock_collar_spike")
	/// If the collar is currently locked
	var/locked = FALSE
	/// If the collar has been broken or not
	var/broken = FALSE

/obj/item/clothing/neck/kink_collar/locked/Initialize(mapload)
	. = ..()
	create_storage(storage_type = /datum/storage/pockets/small/kink_collar/locked)

//spawn thing in collar

//locking or unlocking collar code

/obj/item/clothing/neck/kink_collar/locked/proc/IsLocked(to_lock, mob/user)
	if(!broken)
		to_chat(user, span_warning("[to_lock ? "项圈发出响亮的咔嗒声锁上了！" : "项圈发出轻微的咔嗒声解锁了。"]"))
		locked = (to_lock ? TRUE : FALSE)
		if(!to_lock)
			REMOVE_TRAIT(src, TRAIT_NODROP, TRAIT_NODROP)
		return
	to_chat(user, span_warning("看起来锁已经坏了——现在它只是一个普通的旧项圈。"))
	locked = FALSE
	REMOVE_TRAIT(src, TRAIT_NODROP, TRAIT_NODROP)

/obj/item/clothing/neck/kink_collar/locked/attackby(obj/item/key/kink_collar/attack_item, mob/user, params)
	if(!istype(attack_item))
		return
	if(attack_item.key_id == REF(src))
		IsLocked((locked ? FALSE : TRUE), user)
		return
	to_chat(user, span_warning("这不是正确的钥匙！"))

/obj/item/clothing/neck/kink_collar/locked/equipped(mob/living/carbon/human/user, slot)
	. = ..()
	if(!(locked && src == user.wear_neck))
		return
	ADD_TRAIT(src, TRAIT_NODROP, TRAIT_NODROP)
	to_chat(user, span_warning("你听到脖子周围传来可疑的咔嗒声——看来项圈现在锁上了！"))

//this code prevents wearer from taking collar off if it's locked. Have fun!

/obj/item/clothing/neck/kink_collar/locked/attack_hand(mob/user)
	if(loc == user && user.get_item_by_slot(ITEM_SLOT_NECK) && locked)
		to_chat(user, span_warning("项圈被锁住了！你需要先解锁才能取下它！"))
		return
	add_fingerprint(usr)
	return ..()

/obj/item/clothing/neck/kink_collar/locked/mouse_drop_dragged(atom/over_object, mob/user, src_location, over_location, params)
	if(loc == user && user.get_item_by_slot(ITEM_SLOT_NECK) && locked && istype(over_object, /atom/movable/screen/inventory/hand))
		to_chat(user, span_warning("项圈被锁住了！你需要先解锁才能取下它！"))
		return
	var/atom/movable/screen/inventory/hand/inv_hand = over_object
	if(user.putItemFromInventoryInHandIfPossible(src, inv_hand.held_index))
		add_fingerprint(user)
	return ..()

//This is a KEY moment of this code. You got it. Key.
//...
//It's 2:56 of 08.04.2021, i want to sleep. Please laugh.

/obj/item/key/kink_collar
	name = "项圈钥匙"
	desc = "用于项圈或包上小锁的钥匙。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	icon_state = "collar_key_metal"
	base_icon_state = "collar_key"
	interaction_flags_click = NEED_DEXTERITY
	/// The name inscribed on the key
	var/keyname = null
	/// The ID of the key to pair with a collar. Will normally be the ref of the collar
	var/key_id = null //Adding same unique id to key
	unique_reskin = list("Cyan" = "collar_key_blue",
						"Yellow" = "collar_key_yellow",
						"Green" = "collar_key_green",
						"Red" = "collar_key_red",
						"Latex" = "collar_key_latex",
						"Orange" = "collar_key_orange",
						"White" = "collar_key_white",
						"Purple" = "collar_key_purple",
						"Black" = "collar_key_black",
						"Metal" = "collar_key_metal",
						"Black-teal" = "collar_key_tealblack")

//changing name of key in case if we using multiple collars with same color
/obj/item/key/kink_collar/attack_self(mob/user)
	keyname = stripped_input(user, "你想更改钥匙上的名字吗？", "重命名钥匙", "钥匙", MAX_NAME_LEN)
	name = "[initial(name)] - [keyname]"

//we checking if we can open collar with THAT KEY with SAME ID as the collar.
/obj/item/key/kink_collar/attack(mob/living/carbon/human/target, mob/living/user, params)
	if(!istype(target))
		return
	. = ..()
	if(!istype(target.wear_neck, /obj/item/clothing/neck/kink_collar/locked))
		return
	var/obj/item/clothing/neck/kink_collar/locked/collar = target.wear_neck
	if(REF(collar) == src.key_id)
		collar.IsLocked((collar.locked ? FALSE : TRUE), user)
	else
		to_chat(user, span_warning("这不是正确的钥匙！"))

/obj/item/circular_saw/attack(mob/living/carbon/target, mob/living/user, params)
	if(!istype(target))
		return ..()
	if(!istype(target.wear_neck, /obj/item/clothing/neck/kink_collar/locked))
		return ..()
	var/obj/item/clothing/neck/kink_collar/locked/collar = target.wear_neck
	if(collar.broken)
		to_chat(user, span_warning("锁已经坏了！"))
		return
	to_chat(user, span_warning("你试图直接切断锁！"))
	if(target != user)
		if(!do_after(user, 2 SECONDS, target))
			return
		collar.broken = TRUE
		collar.IsLocked(FALSE, user)
		if(prob(33)) //chance to get damage
			to_chat(user, span_warning("你成功切断了锁，但在过程中给[target.name]造成了几处割伤！"))
			target.apply_damage(rand(1, 4), BRUTE, BODY_ZONE_HEAD, wound_bonus = 10)
		else
			to_chat(user, span_warning("你成功切断了锁！"))
	else
		if(!do_after(user, 3 SECONDS, target))
			return
		if(prob(33))
			to_chat(user, span_warning("你成功切断了锁，但在过程中给自己造成了几处割伤！"))
			collar.broken = TRUE
			collar.IsLocked(FALSE, user)
			target.apply_damage(rand(2, 4), BRUTE, BODY_ZONE_HEAD, wound_bonus = 10)
		else
			to_chat(user, span_warning("你未能切断锁，反而在过程中割伤了自己！"))
			target.apply_damage(rand(3, 5), BRUTE, BODY_ZONE_HEAD, wound_bonus = 30)

/*
*	MIND CONTROL COLLAR
*/

//Ok, first - it's not mind control. Just forcing someone to do emotes that user added to remote thingy. Just a funny illegal ERP toy.

//Controller stuff
/obj/item/mind_controller
	name = "意念控制器"
	desc = "一个用于向项圈发送基本情绪模式的小型遥控器。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'
	icon_state = "mindcontroller"
	/// Reference to the mind control collar
	var/obj/item/clothing/neck/mind_collar/collar = null
	w_class = WEIGHT_CLASS_SMALL

/obj/item/mind_controller/Initialize(mapload, collar_init)
	. = ..()
	src.collar = collar_init

/obj/item/mind_controller/Destroy(force)
	collar?.remote = null
	collar = null
	return ..()

/obj/item/mind_controller/attack_self(mob/user)
	if(!collar)
		return
	collar.emoting = tgui_input_text(user, "更改情绪模式。", max_length = MAX_MESSAGE_LEN)
	collar.emoting_proc()

//Collar stuff
/obj/item/clothing/neck/mind_collar
	name = "意念项圈"
	desc = "一个紧致的项圈。侧面有一些奇怪的高科技发射器。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_clothing/lewd_neck.dmi'
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_neck.dmi'
	icon_state = "mindcollar"
	inhand_icon_state = null
	kink_collar = TRUE
	/// Reference to the mind control remote
	var/obj/item/mind_controller/remote
	var/emoting = "颤抖。"

/obj/item/clothing/neck/mind_collar/Initialize(mapload)
	. = ..()
	create_storage(storage_type = /datum/storage/pockets/small/kink_collar/mind_collar)
	remote = new /obj/item/mind_controller(src, src)
	remote.forceMove(src)

/obj/item/clothing/neck/mind_collar/proc/emoting_proc()
	var/mob/living/carbon/human/user = src.loc
	if(istype(user) && src == user.wear_neck)
		user.emote("me", 1, "[emoting]", TRUE)

/obj/item/clothing/neck/mind_collar/Destroy()
	remote?.collar = null
	remote = null
	. = ..()
