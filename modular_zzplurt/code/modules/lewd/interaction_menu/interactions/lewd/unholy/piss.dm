/datum/interaction/lewd/unholy/piss_over
	name = "Piss Over"
	description = "对着他们撒尿."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_BOTTOMLESS)
	message = list(
		"对着%TARGET%释放自己",
		"在%TARGET%身上标记领地",
		"对着%TARGET%释放膀胱",
		"对着%TARGET%撒尿"
	)
	user_messages = list(
		"你对着%TARGET%释放时感到一阵轻松",
		"你对着%TARGET%排空膀胱",
		"你用尿液在%TARGET%身上标记"
	)
	target_messages = list(
		"%USER%对着你撒尿",
		"你感受到%USER%温热的尿液溅在你身上",
		"%USER%将你标记为他们的领地"
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 2
	target_arousal = 2

/datum/interaction/lewd/unholy/piss_over/New()
	sound_possible = GLOB.waterpiss_noises
	return ..()

// no checks for a full bladder because this is splurt

/datum/interaction/lewd/unholy/piss_over/act(mob/living/user, mob/living/target)
	. = ..()
	var/obj/item/organ/bladder/bladder = user.get_organ_slot(ORGAN_SLOT_BLADDER)
	if(bladder)
		var/turf/target_turf = get_turf(target)
		if(isnull(target_turf))
			return // piss off
		bladder.stored_piss = max(0, bladder.stored_piss - bladder.piss_dosage)
		if(target_turf.liquids?.reagent_list[/datum/reagent/ammonia/urine] < 15)
			target_turf.add_liquid(bladder.pissed_reagent, bladder.piss_dosage, FALSE, bladder.piss_temperature)


/datum/interaction/lewd/unholy/piss_self
	name = "Piss over self"
	description = "对着自己撒尿."
	usage = INTERACTION_SELF
	message = list(
		"对着自己释放.",
		"对着自己释放.",
		"用自己的尿液涂抹自己.",
		"对着自己撒尿."
	)
	user_messages = list(
		"你对着自己释放时感到一阵轻松.",
		"你对着自己的身体排空膀胱.",
		"你用尿液标记自己的胸部."
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	user_arousal = 2

/datum/interaction/lewd/unholy/piss_self/New()
	sound_possible = GLOB.waterpiss_noises
	return ..()

/datum/interaction/lewd/unholy/piss_self/act(mob/living/user, mob/living/target)
	. = ..()
	var/obj/item/organ/bladder/bladder = user.get_organ_slot(ORGAN_SLOT_BLADDER)
	if(bladder)
		var/turf/target_turf = get_turf(user)
		if(isnull(target_turf))
			return // piss off
		bladder.stored_piss = max(0, bladder.stored_piss - bladder.piss_dosage)
		if(target_turf.liquids?.reagent_list[/datum/reagent/ammonia/urine] < 15)
			target_turf.add_liquid(bladder.pissed_reagent, bladder.piss_dosage, FALSE, bladder.piss_temperature)


/datum/interaction/lewd/unholy/piss_mouth
	name = "Piss Mouth"
	description = "对着他们的嘴里撒尿."
	interaction_requires = list(
		INTERACTION_REQUIRE_SELF_BOTTOMLESS,
		INTERACTION_REQUIRE_TARGET_MOUTH
	)
	message = list(
		"对着%TARGET%的嘴里释放",
		"用尿液填满%TARGET%的嘴",
		"对着%TARGET%的喉咙释放膀胱",
		"将%TARGET%的嘴当作尿壶使用"
	)
	user_messages = list(
		"你对着%TARGET%的嘴里释放时感到一阵轻松",
		"你对着%TARGET%的喉咙排空膀胱",
		"你让%TARGET%喝下你的尿"
	)
	target_messages = list(
		"%USER%直接对着你的嘴里撒尿",
		"你被迫吞下%USER%的尿液",
		"%USER%将你的嘴当作尿壶使用"
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3

/datum/interaction/lewd/unholy/piss_mouth/New()
	sound_possible = GLOB.waterpiss_noises.Copy() + list(
		'modular_zzplurt/sound/interactions/crapjob.ogg',
		'modular_zzplurt/sound/interactions/crapjob1.ogg'
	)
	return ..()

/datum/interaction/lewd/unholy/piss_mouth/act(mob/living/user, mob/living/target)
	. = ..()
	var/obj/item/organ/bladder/bladder = user.get_organ_slot(ORGAN_SLOT_BLADDER)
	if(bladder && ishuman(target))
		var/datum/reagents/reagents = new /datum/reagents(bladder.piss_dosage, NONE)
		reagents.add_reagent(bladder.pissed_reagent, bladder.piss_dosage, reagtemp = bladder.piss_temperature)
		reagents.expose(target, INGEST)
		qdel(reagents)
		bladder.stored_piss = max(0, bladder.stored_piss - bladder.piss_dosage)

/datum/interaction/lewd/unholy/piss_slit
	name = "Piss in slit"
	description = "对着他们的生殖腔撒尿."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_BOTTOMLESS)
	message = list(
		"对着%TARGET%的生殖腔内释放.",
		"在%TARGET%的生殖腔上标记领地.",
		"对着%TARGET%体内释放膀胱.",
		"对着%TARGET%的生殖腔撒尿."
	)
	user_messages = list(
		"你对着%TARGET%体内释放时感到一阵轻松.",
		"你对着%TARGET%的生殖腔排空膀胱.",
		"你用尿液在%TARGET%的生殖腔上标记."
	)
	target_messages = list(
		"%USER%对着你的生殖腔内撒尿.",
		"你感受到%USER%温热的尿液填满你的生殖腔.",
		"%USER%将你的生殖腔标记为他们的领地."
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 2
	target_arousal = 2

/datum/interaction/lewd/unholy/piss_slit/New()
	sound_possible = GLOB.waterpiss_noises
	return ..()

/datum/interaction/lewd/unholy/piss_slit/allow_act(mob/living/carbon/human/user, mob/living/carbon/human/target)
	return ..() && target?.dna?.features?["penis_sheath"] == SHEATH_SLIT

/datum/interaction/lewd/unholy/piss_slit/act(mob/living/user, mob/living/target)
	. = ..()
	var/obj/item/organ/bladder/bladder = user.get_organ_slot(ORGAN_SLOT_BLADDER)
	if(bladder && ishuman(target))
		bladder.stored_piss = max(0, bladder.stored_piss - bladder.piss_dosage)
		target.reagents.add_reagent(bladder.pissed_reagent, bladder.piss_dosage, reagtemp = bladder.piss_temperature)


/datum/interaction/lewd/unholy/piss_ass
	name = "Piss in ass"
	description = "对着他们的屁眼撒尿."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_BOTTOMLESS)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	message = list(
		"对着%TARGET%的肛门内释放.",
		"在%TARGET%的肠道上标记领地.",
		"对着%TARGET%的肛门内释放膀胱.",
		"对着%TARGET%的肛门撒尿."
	)
	user_messages = list(
		"你对着%TARGET%的肠道释放时感到一阵轻松.",
		"你对着%TARGET%的肛门排空膀胱.",
		"你用尿液在%TARGET%的体内标记."
	)
	target_messages = list(
		"%USER%对着你的肛门内撒尿.",
		"你感受到%USER%温热的尿液填满你的肠道.",
		"%USER%将你的肛门标记为他们的领地."
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 2
	target_arousal = 2

/datum/interaction/lewd/unholy/piss_ass/New()
	sound_possible = GLOB.waterpiss_noises
	return ..()

/datum/interaction/lewd/unholy/piss_ass/act(mob/living/user, mob/living/target)
	. = ..()
	var/obj/item/organ/bladder/bladder = user.get_organ_slot(ORGAN_SLOT_BLADDER)
	if(bladder && ishuman(target))
		bladder.stored_piss = max(0, bladder.stored_piss - bladder.piss_dosage)
		target.reagents.add_reagent(bladder.pissed_reagent, bladder.piss_dosage, reagtemp = bladder.piss_temperature)


/datum/interaction/lewd/unholy/piss_ear
	name = "Piss in ear"
	description = "对着他们的耳朵撒尿."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_BOTTOMLESS)
	message = list(
		"对着%TARGET%的耳朵内释放.",
		"在%TARGET%的耳朵上标记领地.",
		"对着%TARGET%的耳朵内释放膀胱.",
		"对着%TARGET%的耳朵撒尿."
	)
	user_messages = list(
		"你对着%TARGET%的耳朵释放时感到一阵轻松.",
		"你对着%TARGET%的耳朵排空膀胱.",
		"你用尿液在%TARGET%的头部和耳朵上标记."
	)
	target_messages = list(
		"%USER%对着你的耳朵内撒尿.",
		"你感受到%USER%温热的尿液填满你的耳朵和头部.",
		"%USER%将你的耳朵标记为他们的领地."
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 2
	target_arousal = 2

/datum/interaction/lewd/unholy/piss_ear/New()
	sound_possible = GLOB.waterpiss_noises
	return ..()

/datum/interaction/lewd/unholy/piss_ear/act(mob/living/user, mob/living/target)
	. = ..()
	var/obj/item/organ/bladder/bladder = user.get_organ_slot(ORGAN_SLOT_BLADDER)
	if(bladder && ishuman(target))
		bladder.stored_piss = max(0, bladder.stored_piss - bladder.piss_dosage)
		target.reagents.add_reagent(bladder.pissed_reagent, bladder.piss_dosage, reagtemp = bladder.piss_temperature)


/datum/interaction/lewd/unholy/piss_urethra
	name = "Piss in urethra"
	description = "对着他们的尿道撒尿."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_BOTTOMLESS)
	message = list(
		"对着%TARGET%的尿道内释放.",
		"在%TARGET%的尿道上标记领地.",
		"对着%TARGET%的尿道内释放膀胱.",
		"对着%TARGET%的尿道撒尿."
	)
	user_messages = list(
		"你对着%TARGET%的尿道释放时感到一阵轻松.",
		"你对着%TARGET%的尿道排空膀胱.",
		"你用尿液在%TARGET%的尿道上标记."
	)
	target_messages = list(
		"%USER%对着你的尿道内撒尿.",
		"你感受到%USER%温热的尿液填满你的尿道.",
		"%USER%将你的尿道标记为他们的领地."
	)
	sound_possible = list()
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 2
	target_arousal = 2

/datum/interaction/lewd/unholy/piss_urethra/New()
	sound_possible = GLOB.waterpiss_noises
	return ..()

/datum/interaction/lewd/unholy/piss_urethra/act(mob/living/user, mob/living/target)
	. = ..()
	var/obj/item/organ/bladder/bladder = user.get_organ_slot(ORGAN_SLOT_BLADDER)
	if(bladder && ishuman(target))
		bladder.stored_piss = max(0, bladder.stored_piss - bladder.piss_dosage)
		target.reagents.add_reagent(bladder.pissed_reagent, bladder.piss_dosage, reagtemp = bladder.piss_temperature)
