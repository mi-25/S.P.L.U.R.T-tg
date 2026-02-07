///syndicate prototype for smuggling missions
/obj/item/gun/syringe/syndicate/prototype
	name = "原型飞镖手枪"
	desc = "网络太阳工业原型飞镖手枪。在更小的武器中以相同的速度发射注射器被证明是一项令人惊讶的复杂任务。"
	syringes = list()

///syndicate prototype for smuggling missions
/obj/item/pen/edagger/prototype
	name = "奇怪的笔"
	desc = "这是一支不正常的黑色墨水笔，有奇怪的金属块伸出来..."
	hidden_name = "原型硬光匕首"
	hidden_desc = "华夫公司研发部门的能量匕首原型。硬光可能不如能量武器，但仍然出奇地致命。"
	hidden_icon = "eprototypedagger"

//smuggling container
/obj/item/reagent_containers/cup/bottle/ritual_wine
	name = "仪式酒瓶"
	desc = "含有各种致幻剂、草药提取物和烈性药物的强大混合物。 \
	老虎合作社称赞其为连接更高力量的媒介，但无论如何这都不应该 \
	被饮用。"
	volume = 50
	list_reagents = list(
		//changeling adrenals part
		/datum/reagent/drug/methamphetamine = 5,
		//hallucinations part
		/datum/reagent/drug/mushroomhallucinogen = 35,
		//alcoholic part, plus more hallucinations lel
		/datum/reagent/consumable/ethanol/ritual_wine = 10,
	)
