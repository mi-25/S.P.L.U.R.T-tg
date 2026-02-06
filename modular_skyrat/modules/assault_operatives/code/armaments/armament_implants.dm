/datum/armament_entry/assault_operatives/implants
	category = "义体植入物"
	category_item_limit = 3

/datum/armament_entry/assault_operatives/implants/deathrattle
	name = "死亡警报植入物套装"
	description = "一套应该注射到团队中的植入物（和一个可重复使用的植入器）。当团队中的一人死亡时，\
	所有其他植入物持有者会收到一条心灵信息，告知他们队友的名字和死亡地点。\
	与大多数植入物不同，这些植入物设计用于植入任何生物，无论是生物体还是机械体。"
	item_type = /obj/item/storage/box/syndie_kit/imp_deathrattle
	cost = 1

/datum/armament_entry/assault_operatives/implants/microbomb
	name = "微型炸弹植入物"
	description = "一个植入体内的小型炸弹。可以手动激活，或在死亡时自动激活。警告：会永久摧毁你的身体和你携带的所有物品。"
	item_type = /obj/item/implanter/explosive
	cost = 2

/datum/armament_entry/assault_operatives/implants/storage
	name = "储物植入物"
	description = "植入体内并可随意激活，这个隐蔽的植入物会打开一个小型蓝空间口袋，能够容纳两件常规大小的物品。"
	item_type = /obj/item/implanter/storage
	cost = 2

/datum/armament_entry/assault_operatives/implants/radio
	name = "无线电植入物"
	description = "植入体内并可随意激活，这个隐蔽的植入物可以让你在不需要耳机的情况下通过无线电通话。"
	item_type = /obj/item/implanter/radio/syndicate
	cost = 1

/datum/armament_entry/assault_operatives/implants/hacking
	item_type = /obj/item/autosurgeon/syndicate/hackerman
	name = "黑客手臂植入物"
	description = "一个先进的手臂植入物，配备了尖端黑客工具。非常适合义体增强的网络跑者。"
	cost = 2

/datum/armament_entry/assault_operatives/implants/freedom
	name = "自由植入物"
	description = "将使用者从手铐和脚镣等常见束缚中释放出来。有四次充能。"
	item_type = /obj/item/storage/box/syndie_kit/imp_freedom
	cost = 3

/datum/armament_entry/assault_operatives/implants/thermal
	name = "热成像视觉植入物"
	description = "这些义体眼睛会给你热成像视觉。"
	item_type = /obj/item/autosurgeon/syndicate/thermal_eyes
	cost = 5

/datum/armament_entry/assault_operatives/implants/nodrop
	name = "防掉落植入物"
	description = "激活后会强制你的手部肌肉紧紧抓住你正在握持的物品，防止你非自愿地掉落它。"
	item_type = /obj/item/autosurgeon/syndicate/nodrop
	cost = 5
