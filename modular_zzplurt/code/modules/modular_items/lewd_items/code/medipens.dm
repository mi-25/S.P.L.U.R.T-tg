/obj/item/reagent_containers/hypospray/medipen/crocin
	name = "紧急催情剂注射器"
	volume = 30
	amount_per_transfer_from_this = 30
	desc = "一种用于治疗性欲低下患者的医疗笔，这是一种任何人都不应忍受的可怕疾病。"
	icon = 'modular_zzplurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "crocinpen"
	inhand_icon_state = "crocinpen"
	base_icon_state = "crocinpen"
	list_reagents = list(/datum/reagent/drug/aphrodisiac/crocin = 30)

/obj/item/reagent_containers/hypospray/medipen/crocin/plus
	name = "浓缩欲望注射器"
	volume = 30
	amount_per_transfer_from_this = 30
	desc = "当常规催情剂无法治愈性欲低下时使用。"
	icon = 'modular_zzplurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "hcrocinpen"
	inhand_icon_state = "hcrocinpen"
	base_icon_state = "hcrocinpen"
	list_reagents = list(/datum/reagent/drug/aphrodisiac/crocin/hexacrocin = 30)

/obj/item/reagent_containers/hypospray/medipen/breastgrowth
	name = "魅魔乳汁自动注射器"
	volume = 30
	amount_per_transfer_from_this = 30
	desc = "一种用于在短时间内创建稳定乳汁来源的医疗笔。副作用<b>必然</b>包括乳房肿胀。"
	icon = 'modular_zzplurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "succupen"
	inhand_icon_state = "succupen"
	base_icon_state = "succupen"
	list_reagents = list(/datum/reagent/drug/aphrodisiac/succubus_milk = 30)

/obj/item/reagent_containers/hypospray/medipen/penisgrowth
	name = "魔男药剂自动注射器"
	volume = 30
	amount_per_transfer_from_this = 30
	desc = "一种用于帮助紧急处理\"尺寸不足\"问题的医疗笔。"
	icon = 'modular_zzplurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "incupen"
	inhand_icon_state = "incupen"
	base_icon_state = "incupen"
	list_reagents = list(/datum/reagent/drug/aphrodisiac/incubus_draft = 30)

/obj/item/reagent_containers/hypospray/medipen/lewdbomb
	name = "La Coom炸弹"
	desc = "有人忘记了应该往里面放什么试剂，所以他们就把所有有趣的试剂都混进去了...天啊..."
	icon = 'modular_zzplurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "bombpen"
	inhand_icon_state = "bombpen"
	base_icon_state = "bombpen"
	volume = 30
	amount_per_transfer_from_this = 30
	list_reagents = list(
		/datum/reagent/drug/aphrodisiac/crocin/hexacrocin = 10,
		/datum/reagent/drug/aphrodisiac/succubus_milk = 10,
		/datum/reagent/drug/aphrodisiac/incubus_draft = 10
	)

/obj/item/reagent_containers/hypospray/medipen/prospacillin
	name = "额外增高注射器"
	desc = "用于快速治疗被归类为\"矮子\"的个体，帮助他们够到空间站的货架。"
	icon = 'modular_zzplurt/icons/obj/syringe.dmi'
	lefthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'modular_zzplurt/icons/mob/inhands/equipment/medical_righthand.dmi'
	icon_state = "prospen"
	inhand_icon_state = "prospen"
	base_icon_state = "prospen"
	volume = 30
	amount_per_transfer_from_this = 30
	list_reagents = list(/datum/reagent/growthchem = 30)

/obj/item/reagent_containers/hypospray/medipen/prospacillin/Initialize(mapload)
	. = ..()
	if(prob(50))
		desc = "巨大化厌恶者的最大敌人"

/// Box with LEWD medipens ///
/obj/item/storage/box/medipens/lewd
	name = "情趣医疗笔盒"
	icon = 'modular_zzplurt/icons/obj/storage.dmi'
	icon_state = "box"
	desc = "一盒装满医疗笔的盒子，旨在对人产生有趣的效果。它们都没有接近医疗用途。"
	illustration = "syringe_lewd"

/obj/item/storage/box/medipens/lewd/PopulateContents()
	new /obj/item/reagent_containers/hypospray/medipen/crocin(src)
	new /obj/item/reagent_containers/hypospray/medipen/crocin/plus(src)
	new /obj/item/reagent_containers/hypospray/medipen/breastgrowth(src)
	new /obj/item/reagent_containers/hypospray/medipen/penisgrowth(src)
	new /obj/item/reagent_containers/hypospray/medipen/lewdbomb(src)
