#define INFINITE_CHARGES -1

/obj/item/device/traitor_announcer
	name = "奇怪的设备"
	desc = "嗯...这是用来做什么的？"
	special_desc_requirement = EXAMINE_CHECK_SYNDICATE
	special_desc = "一个可以用来传输你自己设计的虚假公告的遥控器。"
	icon = 'icons/obj/devices/scanner.dmi'
	lefthand_file = 'icons/mob/inhands/items/devices_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/items/devices_righthand.dmi'
	icon_state = "inspector"
	worn_icon_state = "salestagger"
	inhand_icon_state = "electronic"
	///How many uses does it have? -1 for infinite
	var/uses = 1

/obj/item/device/traitor_announcer/attack_self(mob/living/user, modifiers)
	. = ..()
	//can we use this?
	if(!isliving(user) || (uses == 0))
		balloon_alert(user, "没有使用次数了！")
		return
	//build our announcement
	var/origin = reject_bad_text(tgui_input_text(user, "谁在公告，或者公告来自哪里？", "公告来源", get_area_name(user), max_length = 28))
	if(!origin)
		balloon_alert(user, "来源无效！")
		return
	var/audio_key = tgui_input_list(user, "应该播放哪个公告音频键？('拦截'是默认)", "公告音频", GLOB.announcer_keys, ANNOUNCER_INTERCEPT)
	if(!audio_key)
		balloon_alert(user, "音频无效！")
		return
	var/color = tgui_input_list(user, "公告应该是什么颜色？", "公告色调", ANNOUNCEMENT_COLORS, "default")
	if(!color)
		balloon_alert(user, "颜色无效！")
		return
	var/title = reject_bad_text(tgui_input_text(user, "选择公告的标题。", "公告标题", max_length = 42))
	if(!title)
		balloon_alert(user, "标题无效！")
		return
	var/input = reject_bad_text(tgui_input_text(user, "选择公告的正文。", "公告文本", max_length = 512, multiline = TRUE))
	if(!input)
		balloon_alert(user, "文本无效！")
		return
	//treat voice
	var/list/message_data = user.treat_message(input)
	//send
	priority_announce(
	text = message_data["message"],
	title = title,
	sound = audio_key,
	has_important_message = TRUE,
	sender_override = origin,
	color_override = color,
	encode_text = FALSE,
	encode_title = FALSE
	)
	if(uses != INFINITE_CHARGES)
		uses--
	deadchat_broadcast(" made a fake priority announcement from [span_name("[get_area_name(usr, TRUE)]")].", span_name("[user.real_name]"), user, message_type=DEADCHAT_ANNOUNCEMENT)
	user.log_talk("\[Message title\]: [title], \[Message\]: [input], \[Audio key\]: [audio_key]", LOG_TELECOMMS, tag = "priority announcement")
	message_admins("[ADMIN_LOOKUPFLW(user)] has used [src] to make a fake announcement of [input].")

// Adminbus
/obj/item/device/traitor_announcer/infinite
	uses = -1

#undef INFINITE_CHARGES
