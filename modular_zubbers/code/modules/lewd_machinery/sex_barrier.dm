/obj/item/holosign_creator/sex
	name = "全息性爱投影仪"
	desc = "尽管名字如此，它并不投影性爱，但它会创建一个非阻挡性的屏障，告知那些想要进入的人里面正在进行性爱。"
	max_signs = 4
	creation_time = 10
	holosign_type = /obj/structure/holosign/sexsign
	w_class = WEIGHT_CLASS_TINY
	//The janitor sign is also purple so no need to make custom sprites here.

/obj/structure/holosign/sexsign
	name = "性爱标志"
	desc = "闪烁的文字写着\"别在里面做爱\"。我想这意味着这扇门后面正在进行性爱，你可能不应该进入，除非你已经准备好面对不可预见的后果。"
	icon = 'modular_zubbers/icons/effects/sex_barrier.dmi'
	icon_state = "yes_i_spent_time_on_this"
