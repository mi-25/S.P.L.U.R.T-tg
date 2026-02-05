
// Milking machine
/obj/item/storage/box/milking_kit
	name = "DIY挤奶机套件"
	desc = "包含建造你自己的挤奶机所需的一切！"

/obj/item/storage/box/milking_kit/PopulateContents()
	var/static/items_inside = list(
		/obj/item/construction_kit/milker = 1)
	generate_items_inside(items_inside, src)

// X-Stand
/obj/item/storage/box/xstand_kit
	name = "DIY X型支架套件"
	desc = "包含建造你自己的X型支架所需的一切！"

/obj/item/storage/box/xstand_kit/PopulateContents()
	var/static/items_inside = list(
		/obj/item/construction_kit/bdsm/x_stand = 1)
	generate_items_inside(items_inside, src)

// BDSM bed
/obj/item/storage/box/bdsmbed_kit
	name = "DIY BDSM床套件"
	desc = "包含建造你自己的BDSM床所需的一切！"

/obj/item/storage/box/bdsmbed_kit/PopulateContents()
	var/static/items_inside = list(
		/obj/item/construction_kit/bdsm/bed = 1)
	generate_items_inside(items_inside, src)

// Striptease pole
/obj/item/storage/box/strippole_kit
	name = "DIY钢管舞杆套件"
	desc = "包含建造你自己的钢管舞杆所需的一切！"

/obj/item/storage/box/strippole_kit/PopulateContents()
	var/static/items_inside = list(
		/obj/item/construction_kit/pole = 1)
	generate_items_inside(items_inside, src)

// Shibari stand
/obj/item/storage/box/shibari_stand
	name = "DIY绳缚支架套件"
	desc = "包含建造你自己的绳缚支架所需的一切！"

/obj/item/storage/box/shibari_stand/PopulateContents()
	var/static/items_inside = list(
		/obj/item/construction_kit/bdsm/shibari = 1,
		/obj/item/paper/shibari_kit_instructions = 1)
	generate_items_inside(items_inside, src)

// Paper instructions for shibari kit

/obj/item/paper/shibari_kit_instructions
	default_raw_text = "你好！恭喜你购买了LustWish的绳缚套件！一些新手可能会对我们的绳索感到困惑，所以我们为你准备了一份简短的说明！首先，你需要有一把扳手来建造支架本身。其次，你可以使用螺丝刀来改变绳缚支架的颜色。只需更换塑料配件！第三，如果你想把某人绑在束缚支架上，你需要完全绑住他们的身体，包括腹股沟和胸部！要做到这一点，你需要先在身体上使用绳索，然后在角色的腹股沟上使用，然后你就可以像任何椅子一样把他们扣在支架上。别忘了手上要有一些绳索才能真正把他们绑在支架上，因为套件里不包含绳索！就是这样！"
