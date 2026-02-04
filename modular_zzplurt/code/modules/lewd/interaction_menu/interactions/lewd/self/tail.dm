// 使用自己尾巴的自慰互动 - 继承自基础尾巴类
// 使用 INTERACTION_SELF 使用标志和 CLIMAX_POSITION_USER 目标

/datum/interaction/lewd/tail/dick/self
	name = "Tail. Jerk Cock (self)"
	description = "Jerk yourself off with your tail."
	usage = INTERACTION_SELF
	target_required_parts = list()
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY, ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	sound_possible = list('modular_zzplurt/sound/interactions/bang1.ogg',
						'modular_zzplurt/sound/interactions/bang2.ogg',
						'modular_zzplurt/sound/interactions/bang3.ogg')
	help_text = list(
		"用尾巴滑过自己的肉棒取悦自己.",
		"轻轻地用尾巴在自己的肉棒上上下滑动,适应每一个动作.",
		"有节奏地用尾巴抚摸自己的肉棒,试图给自己带来快感."
	)
	grab_text = list(
		"用尾巴紧紧握住自己的肉棒,沿着整根滑动.",
		"用尾巴抓住自己的肉棒不放,以越来越大的力量沿着它移动.",
		"用尾巴紧紧环住自己的肉棒并积极自慰,不减慢节奏."
	)
	harm_text = list(
		"显然想给自己造成痛苦的感觉,用尾巴积极地撸自己的肉棒.",
		"故意用尾巴将自己的肉棒挤压到疼痛的程度,用尖锐的动作自慰.",
		"粗暴地用尾巴在自己的肉棒上工作,仿佛努力同时体验痛苦和快感."
	)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list("%CUMMING%的精液覆盖了自己的尾巴."))

/datum/interaction/lewd/tail/vagina/self
	name = "Tail. Penetrate Pussy (self)"
	description = "Penetrate yourself with your tail."
	usage = INTERACTION_SELF
	target_required_parts = list()
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA)
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY, ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	help_text = list(
		"轻轻地将尾巴推入自己的小穴.",
		"轻柔地将尾巴滑入自己的小穴.",
		"爱抚地用尾巴在自己的小穴里玩弄,平滑而小心地移动."
	)

	grab_text = list(
		"用尾巴坚持不懈地冲击自己的小穴,左右扭动.",
		"将尾巴深深插入自己体内,积极移动并呻吟.",
		"将尾巴深深推入自己的小穴,毫不保留地进行粗暴的抽插和移动."
	)

	harm_text = list(
		"用尾巴侵犯自己的小穴,仿佛试图尽可能深地插入.",
		"用力将尾巴插入自己体内,仿佛故意给自己造成痛苦.",
		"粗暴地用尾巴撑开自己的小穴,动作尖锐且毫不留情."
	)
	sound_possible = list('modular_zzplurt/sound/interactions/champ1.ogg',
						'modular_zzplurt/sound/interactions/champ2.ogg')
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list("%CUMMING%的淫水覆盖了自己的尾巴."))

/datum/interaction/lewd/tail/vagina_rub/self
	name = "Tail. Rub Pussy (self)"
	description = "Rub yourself with your tail."
	usage = INTERACTION_SELF
	target_required_parts = list()
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA)
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY, ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	help_text = list(
		"轻轻地用尾巴在自己的花缝周围滑动.",
		"温柔地在自己的小穴附近移动,倾听自己的感受.",
		"有节奏地用尾巴轻柔拍打自己的小穴,试图给自己带来最大的快感."
	)
	grab_text = list(
		"用尾巴坚持不懈地压入自己的小穴,左右扭动.",
		"积极地拍打自己的小穴,用力拉扯自己的花瓣.",
		"将尾巴推入自己的小穴并开始移动,仿佛要进入内部."
	)
	harm_text = list(
		"用尾巴嘲弄般地粗暴拍打自己的小穴,试图让每次击打都留下痛苦.",
		"用无情的力量猛烈拍打自己的小穴,仿佛要击垮自己的力量.",
		"用尾巴积极拉伸自己的花瓣,让自己想到撕裂自己的身体."
	)
	sound_possible = list('modular_zzplurt/sound/interactions/champ1.ogg',
						'modular_zzplurt/sound/interactions/champ2.ogg')
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list("%CUMMING% covers their own tail with juices."))

/datum/interaction/lewd/tail/ass/self
	name = "Tail. Penetrate Ass (self)"
	description = "Penetrate yourself with your tail."
	usage = INTERACTION_SELF
	target_required_parts = list()
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY, ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	help_text = list(
		"用尾巴滑入自己的肠道.",
		"小心地在自己的肛门内移动尾巴,享受内部的压力.",
		"轻轻地在自己体内移动尾巴,按摩自己的后穴."
	)
	grab_text = list(
		"用尾巴积极地冲撞自己的肛门内部.",
		"猛烈地将尾巴插入自己的菊花,坚持而有力地移动.",
		"用尾巴紧紧填满自己的肛门,不停止移动."
	)
	harm_text = list(
		"用尾巴侵犯自己的肛门,仿佛试图贯穿自己.",
		"无情地将尾巴插入自己的肛门,不给自己丝毫休息.",
		"用力将尾巴推入自己的后穴,仿佛努力从内部撕裂自己."
	)
	sound_possible = list('modular_zzplurt/sound/interactions/bang1.ogg',
						'modular_zzplurt/sound/interactions/bang2.ogg',
						'modular_zzplurt/sound/interactions/bang3.ogg')
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list("%CUMMING%在肛门内紧紧夹住自己的尾巴."))

/datum/interaction/lewd/tail/ass_rub/self
	name = "Tail. Slide Between Cheeks (self)"
	description = "Stimulate yourself with your tail."
	usage = INTERACTION_SELF
	target_required_parts = list()
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY, ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	help_text = list(
		"slides between their own cheeks with their tail.",
		"gently moves their tail around their own anus, massaging it.",
		"teases their own ring with their tail, trying to bring pleasant sensations."
	)
	grab_text = list(
		"actively rubs their tail around their own anus, repeatedly trying to poke sensitive spots.",
		"presses their tail into their own anal opening, trying to open it by pulling their tail aside.",
		"rhythmically writhes between their own cheeks, writhing and pressing inward."
	)
	harm_text = list(
		"用尾巴折磨自己的肛门,仿佛试图强行进入内部.",
		"用尾巴强行拉扯自己的肛门,给自己造成痛苦的感觉.",
		"粗暴地拍打自己的菊花,用力且对自己毫不留情."
	)
	sound_possible = list('modular_zzplurt/sound/interactions/bang1.ogg',
						'modular_zzplurt/sound/interactions/bang2.ogg',
						'modular_zzplurt/sound/interactions/bang3.ogg')
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list("%CUMMING%紧紧夹住自己的尾巴."))

/datum/interaction/lewd/tail/urethra/self
	name = "Tail. Penetrate Urethra (self)"
	description = "Penetrate yourself with your tail."
	usage = INTERACTION_SELF
	target_required_parts = list()
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY, ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	sound_possible = list('modular_zzplurt/sound/interactions/bang1.ogg',
						'modular_zzplurt/sound/interactions/bang2.ogg',
						'modular_zzplurt/sound/interactions/bang3.ogg',
						'modular_zzplurt/sound/interactions/bang4.ogg',
						'modular_zzplurt/sound/interactions/bang5.ogg',
						'modular_zzplurt/sound/interactions/bang6.ogg',)
	help_text = list(
		"用尾巴推入并探索自己的尿道.",
		"小心地在自己的尿道内移动尾巴,感受每一个弯曲和挤压.",
		"缓慢而平滑地将尾巴深入自己的尿道,仿佛从内部探索."
	)
	grab_text = list(
		"试图用尾巴通过自己的尿道触及自己的腹股沟.",
		"顽强地将尾巴深深推入自己的尿道,努力尽可能深地插入.",
		"用力通过尿道移动尾巴,仿佛想要触及身体的底部."
	)
	harm_text = list(
		"将尾巴插入自己的尿道,明显粗暴地对待自己的身体.",
		"猛烈而无情地将尾巴推入自己的尿道,无视痛苦.",
		"粗暴地用尾巴插入尿道,给自己造成尖锐、刺痛的感觉."
	)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list("%CUMMING%用尿道紧紧夹住自己的尾巴,用精液覆盖它."))

/datum/interaction/lewd/tail/breast/self
	name = "Tail. Slide Between Breasts (self)"
	description = "Stimulate yourself with your tail."
	usage = INTERACTION_SELF
	target_required_parts = list()
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY, ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED)
	help_text = list("轻轻地用尾巴在自己的乳房之间滑动.")
	grab_text = list("用尾巴坚持不懈地压入并在自己的乳房之间扭动.")
	harm_text = list("用尾巴在自己的乳房之间嘲弄般地积极扭动,几乎拍打它们.")

/datum/interaction/lewd/tail/self_oral
	name = "Mouth. Lick Tail (self)"
	description = "Lick your own tail."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list()
	user_required_parts = list(ORGAN_SLOT_TAIL = REQUIRE_GENITAL_ANY)
	help_text = list("舔舐自己的尾巴尖.")
	grab_text = list("用嘴唇包裹自己的尾巴尖.")
	harm_text = list("咬自己的尾巴尖.")
	sound_possible = list('modular_zzplurt/sound/interactions/squelch1.ogg')
