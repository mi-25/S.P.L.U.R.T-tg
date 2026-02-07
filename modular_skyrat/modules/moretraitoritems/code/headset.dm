/obj/item/radio/headset/headset_cent/impostorsr
	keyslot2 = null

/obj/item/radio/headset/chameleon/advanced
	special_desc = "辛迪加在渗透行动中使用的变色龙耳机。 \
	这个特定型号具有闪光弹防护功能，并能放大你的音量。"
	command = TRUE
	freerange = TRUE

/obj/item/radio/headset/chameleon/advanced/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))
