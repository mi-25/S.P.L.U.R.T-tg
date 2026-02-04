// 基于意图的动态消息和液体收集机制的淫荡尾巴互动
/datum/interaction/lewd/tail
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	sound_use = TRUE
	category = "Lewd (Tail)"
	var/try_milking = FALSE
	var/help_text
	var/grab_text
	var/harm_text

/datum/interaction/lewd/tail/act(mob/living/user, mob/living/target)
	// 检查容器以在互动期间收集液体
	var/obj/item/reagent_containers/liquid_container
	if(try_milking)
		var/obj/item/cached_item = user.get_active_held_item()
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item
		else
			cached_item = user.pulling
			if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
				liquid_container = cached_item

	// 初始化欲望/快感值并清除之前的消息状态
	message = null
	target_arousal = 6
	target_pleasure = 4
	target_pain = 0
	user_arousal = 0
	user_pleasure = 4
	user_pain = 0

	// 根据用户当前意图选择适当的消息文本
	switch(resolve_intent_name(user))
		if("help")
			message = islist(help_text) ? pick(help_text) : help_text
		if("grab", "disarm")
			message = islist(grab_text) ? pick(grab_text) : grab_text
			target_arousal += 3
			target_pleasure += 2
		if("harm")
			target_pain = 5
			message = islist(harm_text) ? pick(harm_text) : harm_text

	if(liquid_container)
		message += " Trying to catch the escaping fluids in [liquid_container]"
		fluid_transfer_objects = list(liquid_container)
	if(usage == INTERACTION_SELF)
		user_arousal = target_arousal
		user_pleasure = target_pleasure
		user_pain = target_pain

	message = list(message)
	..() // 执行父互动逻辑并发送格式化消息

// 针对其他玩家身体部位的标准淫荡互动
// 包括插入、摩擦和刺激动作

/datum/interaction/lewd/tail/dick
	name = "Tail. Jerk Cock"
	description = "Jerk off their cock with your tail."
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	try_milking = TRUE
	sound_possible = list('modular_zzplurt/sound/interactions/bang1.ogg',
						'modular_zzplurt/sound/interactions/bang2.ogg',
						'modular_zzplurt/sound/interactions/bang3.ogg')
	help_text = list(
		"用尾巴滑过%TARGET%的肉棒,取悦对方.",
		"用尾巴尖沿着%TARGET%的肉棒滑动.",
		"用尾巴在%TARGET%的肉棒上上下移动,试图带来快感."
	)
	grab_text = list(
		"用尾巴紧紧握住%TARGET%的肉棒,沿着整根滑动.",
		"用尾巴掠夺性地缠绕%TARGET%的肉棒并沿着它移动,不让对方放松.",
		"用尾巴紧紧环住%TARGET%的肉棒,做出坚持的抽插动作."
	)
	harm_text = list(
		"粗暴地对待%TARGET%的肉棒,显然不在乎对方的感受.",
		"用尾巴挤压和拉扯%TARGET%的肉棒,似乎享受着造成的痛苦.",
		"猛烈地抓住并扭动%TARGET%的肉棒,毫不留情地用力握住."
	)
	cum_message_text_overrides = list(CLIMAX_POSITION_TARGET = list("%CUMMING%的精液覆盖了%CAME_IN%的尾巴."))

/datum/interaction/lewd/tail/vagina
	name = "Tail. Penetrate Pussy"
	description = "Penetrate their pussy with your tail."
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	try_milking = TRUE
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	help_text = list(
		"轻轻地将尾巴推入%TARGET%的小穴.",
		"温柔地将尾巴深入对方的核心,倾听%TARGET%的反应.",
		"有节奏地将尾巴滑入%TARGET%的小穴,试图带来最大的快感."
	)
	grab_text = list(
		"用尾巴坚持不懈地冲击%TARGET%的小穴,左右扭动.",
		"将尾巴深深插入%TARGET%的小穴,用力撑开对方的内壁.",
		"将尾巴压入%TARGET%的小穴并开始移动,仿佛想要完全填满对方."
	)
	harm_text = list(
		"用尾巴残忍地侵犯%TARGET%的小穴,试图触及最深处.",
		"用无情的力量将尾巴强行插入%TARGET%的小穴,不给任何休息.",
		"粗暴地用尾巴贯穿%TARGET%的小穴,拉伸并造成不适."
	)
	sound_possible = list('modular_zzplurt/sound/interactions/champ1.ogg',
						'modular_zzplurt/sound/interactions/champ2.ogg')
	cum_message_text_overrides = list(CLIMAX_POSITION_TARGET = list("%CUMMING%的淫水覆盖了%CAME_IN%的尾巴."))

/datum/interaction/lewd/tail/vagina_rub
	name = "Tail. Rub Pussy"
	description = "Slide your tail against their pussy."
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	try_milking = TRUE
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	help_text = list(
		"轻轻地用尾巴在%TARGET%的花缝周围滑动.",
		"温柔地在%TARGET%的小穴附近移动,倾听对方的反应.",
		"有节奏地用尾巴轻柔拍打%TARGET%的小穴,试图带来最大的快感."
	)
	grab_text = list(
		"用尾巴坚持不懈地压入%TARGET%的小穴,左右扭动.",
		"积极地拍打%TARGET%的小穴,用力拉扯对方的花瓣.",
		"将尾巴推入%TARGET%的小穴并开始移动,仿佛要进入内部."
	)
	harm_text = list(
		"用尾巴残忍粗暴地拍打%TARGET%的小穴,试图让每次击打都留下痛苦.",
		"用无情的力量猛烈拍打%TARGET%的小穴,仿佛要击垮对方的力量.",
		"用尾巴积极拉伸%TARGET%的花瓣,让对方想到撕裂身体."
	)
	sound_possible = list('modular_zzplurt/sound/interactions/champ1.ogg',
						'modular_zzplurt/sound/interactions/champ2.ogg')
	cum_message_text_overrides = list(CLIMAX_POSITION_TARGET = list("%CUMMING%的淫水覆盖了%CAME_IN%的尾巴."))

/datum/interaction/lewd/tail/ass
	name = "Tail. Penetrate Ass"
	description = "Penetrate their ass with your tail."
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	help_text = list(
		"用尾巴滑入%TARGET%的肛门.",
		"用尾巴在%TARGET%的肛门内轻轻移动,从内部按摩对方.",
		"用尾巴缓慢插入%TARGET%的肛门,试图带来愉悦的感觉."
	)
	grab_text = list(
		"用尾巴积极地冲撞%TARGET%的肛门内部,反复试图击中敏感点.",
		"将尾巴推入%TARGET%的肛门,自信而快速地移动.",
		"有节奏地将尾巴插入%TARGET%的肛门,扭动并从内部施压."
	)
	harm_text = list(
		"用尾巴侵犯%TARGET%的肛门,仿佛试图直接贯穿.",
		"用尾巴强行插入%TARGET%的肛门,造成痛苦的感觉.",
		"粗暴地将尾巴插入%TARGET%的后穴,用力且毫不留情."
	)
	sound_possible = list('modular_zzplurt/sound/interactions/bang1.ogg',
						'modular_zzplurt/sound/interactions/bang2.ogg',
						'modular_zzplurt/sound/interactions/bang3.ogg')
	cum_message_text_overrides = list(CLIMAX_POSITION_TARGET = list("%CUMMING%紧紧夹住%CAME_IN%的尾巴."))

/datum/interaction/lewd/tail/ass_rub
	name = "Tail. Slide Between Cheeks"
	description = "Slide your tail between their cheeks."
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	help_text = list(
		"用尾巴在%TARGET%的臀瓣之间滑动.",
		"用尾巴在%TARGET%的肛门周围轻轻移动,按摩它.",
		"用尾巴挑逗%TARGET%的菊花,试图带来愉悦的感觉."
	)
	grab_text = list(
		"用尾巴在%TARGET%的肛门周围积极摩擦,反复试图戳刺敏感点.",
		"将尾巴压入%TARGET%的肛门,试图通过将尾巴拉到一边来打开它.",
		"有节奏地在%TARGET%的臀瓣之间扭动,扭动并向内施压."
	)
	harm_text = list(
		"用尾巴折磨%TARGET%的肛门,仿佛试图强行进入内部.",
		"用尾巴强行拉扯%TARGET%的肛门,造成痛苦的感觉.",
		"粗暴地拍打%TARGET%的菊花,用力且毫不留情."
	)
	sound_possible = list('modular_zzplurt/sound/interactions/bang1.ogg',
						'modular_zzplurt/sound/interactions/bang2.ogg',
						'modular_zzplurt/sound/interactions/bang3.ogg')
	cum_message_text_overrides = list(CLIMAX_POSITION_TARGET = list("%CUMMING%紧紧夹住%CAME_IN%的尾巴."))

/datum/interaction/lewd/slap/tail
	name = "Tail. Spank Ass"
	description = "Spank their ass with your tail."
	interaction_requires = list()
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY)
	category = "Lewd (Tail)"
	message = list(
		"用尾巴拍打%TARGET%的屁股!",
		"用尾巴抽打%TARGET%的屁股!",
		"用尾巴给%TARGET%的屁股来了一记响亮的巴掌!",
	)

/datum/interaction/lewd/tail/urethra
	name = "Tail. Penetrate Urethra"
	description = "Penetrate their urethra with your tail."
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	sound_possible = list('modular_zzplurt/sound/interactions/bang1.ogg',
						'modular_zzplurt/sound/interactions/bang2.ogg',
						'modular_zzplurt/sound/interactions/bang3.ogg',
						'modular_zzplurt/sound/interactions/bang4.ogg',
						'modular_zzplurt/sound/interactions/bang5.ogg',
						'modular_zzplurt/sound/interactions/bang6.ogg',)
	help_text = list(
		"用尾巴推入并探索%TARGET%的尿道.",
		"用尾巴在%TARGET%的尿道内缓慢移动,感受每一个细节.",
		"用尾巴在%TARGET%的尿道内轻轻抽插,试图带来快感."
	)
	grab_text = list(
		"试图用尾巴通过%TARGET%的尿道触及对方的腹股沟.",
		"用尾巴积极地深入%TARGET%的尿道,仿佛努力触及最底部.",
		"将尾巴进一步推入%TARGET%的尿道,顽强地向对方的腹股沟前进."
	)
	harm_text = list(
		"将%TARGET%的尿道当作玩具,显然不在乎对方的感受.",
		"无情地将尾巴插入%TARGET%的尿道,一秒钟都不减轻压力.",
		"残忍地用尾巴侵犯%TARGET%的尿道,从内部拉伸它."
	)
	cum_message_text_overrides = list(CLIMAX_POSITION_TARGET = list("%CUMMING%紧紧夹住%CAME_IN%的尾巴,用精液覆盖它."))

/datum/interaction/lewd/tail/breast
	name = "Tail. Slide Between Breasts"
	description = "Slide between their breasts with your tail."
	target_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED)
	help_text = list("轻轻地用尾巴在%TARGET%的乳房之间滑动.")
	grab_text = list("用尾巴坚持不懈地压入并在%TARGET%的乳房之间扭动.")
	harm_text = list("用尾巴在%TARGET%的乳房之间嘲弄般地积极扭动,几乎拍打它们.")
	sound_possible = list('modular_zzplurt/sound/interactions/squelch1.ogg')


// 针对另一个玩家尾巴的互动
// 使用标准口腔/口交机制和尾巴特定消息

/datum/interaction/lewd/tail/someone
	user_required_parts = list()
	target_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY)

/datum/interaction/lewd/tail/someone/oral
	name = "Mouth. Lick Tail"
	description = "Lick their tail."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	help_text = list("舔舐%TARGET%的尾巴尖.")
	grab_text = list("用嘴唇包裹%TARGET%的尾巴尖.")
	harm_text = list("咬%TARGET%的尾巴尖.")
	sound_possible = list('modular_zzplurt/sound/interactions/squelch1.ogg')

/datum/interaction/lewd/extreme/harmful/tail_choke
	name = "Tailchoke"
	description = "Choke them with your tail. (Warning: Causes oxygen damage)"
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY)
	category = "Lewd (Tail)"
	sound_possible = list('sound/items/weapons/thudswoosh.ogg')
	target_arousal = 6
	target_pleasure = 0
	target_pain = 6

/datum/interaction/lewd/extreme/harmful/tail_choke/act(mob/living/user, mob/living/target)
	message = null
	var/oxy_damage = 3
	target_pleasure = 0
	target_arousal = 6
	if(target.get_oxy_loss() > 40) // 防止伤害叠加 - 当目标已经窒息时转换为纯RP
		oxy_damage = 0
	switch(resolve_intent_name(user))
		if("harm")
			oxy_damage = rand(3, 6)
			message = list(
				"粗暴地用尾巴缠绕%TARGET%的脖子,试图切断对方的空气供应.",
				"用尾巴盘绕%TARGET%的脖子并立即开始挤压,阻塞对方的气道.",
				"猛烈地用尾巴勒紧%TARGET%的脖子,造成窒息."
			)
		else
			message = list(
				"用尾巴抓住%TARGET%的喉咙,试图阻止空气进入.",
				"用尾巴握住%TARGET%的脖子,越勒越紧.",
				"用尾巴锁住%TARGET%的脖子,握住不让对方呼吸."
			)

	if(!HAS_TRAIT(target, TRAIT_NOBREATH) && oxy_damage)
		target.apply_damage(oxy_damage, OXY)
	if(HAS_TRAIT(target, TRAIT_CHOKE_SLUT))
		target_arousal = 12
		target_pleasure = 4
	..()
