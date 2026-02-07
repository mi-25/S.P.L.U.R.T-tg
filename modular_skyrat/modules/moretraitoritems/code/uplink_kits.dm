/obj/item/storage/box/syndie_kit/cultkisr
	name = "邪教构造体套件"
	desc = "一个光滑坚固的盒子，内部充满不祥的黑暗能量。哎呀。"

/obj/item/storage/box/syndie_kit/cultkitsr/PopulateContents()
	new /obj/item/storage/belt/soulstone/full/purified(src)
	new /obj/item/sbeacondrop/constructshell(src)
	new /obj/item/sbeacondrop/constructshell(src)

/obj/item/sbeacondrop/constructshell
	desc = "上面的标签写着：<i>警告：激活此设备将向您的位置发送一个纳尔'西构造体外壳</i>。"
	droptype = /obj/structure/constructshell

/obj/item/storage/belt/soulstone/full/purified/PopulateContents()
	for(var/i in 1 to 6)
		new /obj/item/soulstone/anybody/purified(src)
