//SPLURT EDIT REMOVAL BEGIN - Interactions - Moved climax defines to global defines
/*
#define CLIMAX_VAGINA "Vagina"
#define CLIMAX_PENIS "Penis"
#define CLIMAX_BOTH "Both"
*/
//SPLURT EDIT REMOVAL END

#define CLIMAX_ON_FLOOR "On the floor"
#define CLIMAX_IN_OR_ON "Climax in or on someone"
#define CLIMAX_OPEN_CONTAINER "Fill reagent container"
#define CLIMAX_PORTAL "Through the portal"

// both of these are pretty much arbitrary
#define MIN_CUM_THRESHOLD 5
#define MIN_VAGINA_WETNESS_THRESHOLD 3.33

/mob/living // SPLURT EDIT - INTERACTIONS - All mobs should be interactable
	/// Used to prevent nightmare scenarios.
	var/refractory_period

/mob/living/proc/climax(manual = TRUE, mob/living/partner = null, datum/interaction/climax_interaction = null, interaction_position = null) // SPLURT EDIT - INTERACTIONS - All mobs should be interactable
	if (CONFIG_GET(flag/disable_erp_preferences))
		return

	var/nonhuman_bypass_self = !ishuman(src) && !src.client && !SSinteractions.is_blacklisted(src) // SPLURT EDIT - INTERACTIONS - All mobs should be interactable
	var/nonhuman_bypass_partner = !ishuman(partner) && !partner?.client && !SSinteractions.is_blacklisted(partner) // SPLURT EDIT - INTERACTIONS - All mobs should be interactable

	if(!(client?.prefs?.read_preference(/datum/preference/toggle/erp/autocum) || nonhuman_bypass_self) && !manual)
		return
	if(refractory_period > REALTIMEOFDAY)
		return
	//SPLURT ADDITION START
	// MKUltra cum lock hard block: do not proceed to climax when locked.
	if(GLOB.mkultra_cum_locks && GLOB.mkultra_cum_locks[src])
		visible_message(span_purple("[src]紧绷着，但无法完成。"), span_purple("你无法高潮——你被主人锁定了。"))
		return FALSE
	//SPLURT ADDITION END
	refractory_period = REALTIMEOFDAY + 30 SECONDS
	if(has_status_effect(/datum/status_effect/climax_cooldown) || !(client?.prefs?.read_preference(/datum/preference/toggle/erp) || nonhuman_bypass_self))
		return

	if(HAS_TRAIT(src, TRAIT_NEVERBONER) || has_status_effect(/datum/status_effect/climax_cooldown) || (!has_vagina() && !has_penis()))
		visible_message(span_purple("[src]抽搐着，试图高潮，但没有结果。"), \
			span_purple("你无法达到高潮！"))
		return TRUE

	// Reduce pop-ups and make it slightly more frictionless (lewd).
	var/climax_choice = has_penis() ? CLIMAX_PENIS : CLIMAX_VAGINA

	if(manual)
		var/list/genitals = list()
		if(has_vagina())
			genitals.Add(CLIMAX_VAGINA)
			if(has_penis())
				genitals.Add(CLIMAX_PENIS)
				genitals.Add(CLIMAX_BOTH)
		else if(has_penis())
			genitals.Add(CLIMAX_PENIS)
		climax_choice = tgui_alert(src, "你即将高潮，选择使用哪个部位。", "高潮方式", genitals)
	else if(istype(climax_interaction, /datum/interaction) && climax_interaction.cum_genital?.len && climax_interaction.cum_genital[interaction_position])
		climax_choice = climax_interaction.cum_genital[interaction_position]
	conditional_pref_sound(get_turf(src), 'modular_zzplurt/sound/interactions/end.ogg', 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds)
	//SPLURT EDIT ADDITION END
	switch(gender)
		if(MALE)
			conditional_pref_sound(get_turf(src), pick('modular_skyrat/modules/modular_items/lewd_items/sounds/final_m1.ogg',
										'modular_skyrat/modules/modular_items/lewd_items/sounds/final_m2.ogg',
										'modular_skyrat/modules/modular_items/lewd_items/sounds/final_m3.ogg'), 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds)
		if(FEMALE)
			conditional_pref_sound(get_turf(src), pick('modular_skyrat/modules/modular_items/lewd_items/sounds/final_f1.ogg',
										'modular_skyrat/modules/modular_items/lewd_items/sounds/final_f2.ogg',
										'modular_skyrat/modules/modular_items/lewd_items/sounds/final_f3.ogg'), 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds)

	var/self_orgasm = FALSE
	var/self_their = p_their()

	var/obj/item/organ/genital/testicles/testicles = get_organ_slot(ORGAN_SLOT_TESTICLES)
	testicles?.calculate_cumshot()

	if(climax_choice == CLIMAX_PENIS || climax_choice == CLIMAX_BOTH)
		var/obj/item/organ/genital/penis/penis = get_organ_slot(ORGAN_SLOT_PENIS)
		if(!(testicles || testicles?.reagents.total_volume < MIN_CUM_THRESHOLD) && ishuman(src)) //If we have no god damn balls, we can't cum anywhere... GET BALLS! , OR theres so little in your balls that nothing comes out... // SPLURT EDIT - Interactions
			visible_message(span_userlove("[src]达到了高潮，但[self_their]的阴茎什么也没射出来！"), \
				span_userlove("你达到了高潮，感觉很棒，但什么也没射出来！"))

		else if(is_wearing_condom())
			var/obj/item/clothing/sextoy/condom/condom = src:penis // bruh 💀⚰️💀⚰️💀⚰️💀⚰️💀
			condom.condom_use() // condoms probably should become reagent containers at some point
			visible_message(span_userlove("[src]将精液全部射进了[condom]里，把它填得满满的！"), \
				span_userlove("你把浓稠的精液全部射进了[condom]里，它完美地接住了一切！"))
			testicles?.reagents.remove_all(testicles.cumshot_size)

		else if(!is_bottomless() && penis.visibility_preference != GENITAL_ALWAYS_SHOW)
			visible_message(span_userlove("[src]在[self_their]的裤子里射了出来！"), \
				span_userlove("你射了出来，但还穿着裤子，精液弄脏了你的衣服！"))
			self_orgasm = TRUE
			testicles?.reagents.remove_all(testicles.cumshot_size)

		else
			var/list/interactable_inrange_mobs = list()
			var/target_choice //SPLURT EDIT CHANGE - Interactions
			// monkey see, monkey do
			var/list/interactable_inrange_open_containers = list()

			// Unfortunately prefs can't be checked here, because byond/tgstation moment.
			for(var/mob/living/iterating_mob in (view(1, src) - src))
				interactable_inrange_mobs[iterating_mob.name] = iterating_mob

			// this should be making a list of cups(?)
			for(var/obj/item/reagent_containers/cup/iterating_open_container in (view(1, src) - src))
				interactable_inrange_open_containers[iterating_open_container.name] = iterating_open_container

			var/list/buttons = list(CLIMAX_ON_FLOOR)
			if(interactable_inrange_mobs.len)
				buttons += CLIMAX_IN_OR_ON

			if(interactable_inrange_open_containers.len)
				buttons += CLIMAX_OPEN_CONTAINER

			// If your using a LustWish portal lets you cum through it
			var/obj/structure/lewd_portal/portal = src.buckled
			if(istype(portal, /obj/structure/lewd_portal))
				buttons += CLIMAX_PORTAL

			var/penis_climax_choice = climax_interaction && !manual ? CLIMAX_IN_OR_ON : tgui_alert(src, "选择射在哪里。", "射精位置", buttons) //SPLURT EDIT CHANGE - Interactions

			var/create_cum_decal = FALSE

			if(!penis_climax_choice || penis_climax_choice == CLIMAX_ON_FLOOR)
				create_cum_decal = TRUE
				visible_message(span_userlove("[src]把粘稠的精液射到了地板上！"), \
					span_userlove("你一股股地射出滚烫的精液，全都溅在了地板上！"))
				testicles?.reagents.remove_all(testicles.cumshot_size)

			else if(penis_climax_choice == CLIMAX_OPEN_CONTAINER || ((!climax_interaction?.cum_target[interaction_position] || !partner) && climax_interaction?.fluid_transfer_objects.Find(REF(src)))) // SPLURT EDIT - Interactions - Added support for fluid transfer objects
				target_choice = climax_interaction?.fluid_transfer_objects.Find(REF(src)) ? climax_interaction.fluid_transfer_objects[REF(src)].name : tgui_input_list(src, "选择要射进去的容器。", "选择目标", interactable_inrange_open_containers) //SPLURT EDIT CHANGE - Interactions
				if(!target_choice)
					create_cum_decal = TRUE
					visible_message(span_userlove("[src]把粘稠的精液射到了地板上！"), \
						span_userlove("你一股股地射出滚烫的精液，全都溅在了地板上！"))
					testicles?.reagents.remove_all(testicles.cumshot_size)
				else
					var/obj/item/reagent_containers/cup/target_open_container = interactable_inrange_open_containers[target_choice] || climax_interaction.fluid_transfer_objects[REF(src)] // SPLURT EDIT - Interactions - Added support for fluid transfer objects
					if(target_open_container.is_refillable() && target_open_container.is_drainable())
						// here's where we actually do the cumming(?)
						var/cum_volume = testicles.cumshot_size
						var/total_volume_w_cum = cum_volume + target_open_container.reagents.total_volume
						conditional_pref_sound(get_turf(src), SFX_DESECRATION, 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds)
						if(target_open_container.reagents.holder_full())
							// its full already
							add_cum_splatter_floor(get_turf(target_open_container))
							visible_message(span_userlove("[src]试图射进[target_open_container]里，但它已经满了，滚烫的精液溢了出来洒在地板上！"), \
								span_userlove("你试图射进[target_open_container]里，但它已经满了，所以全都洒在了地板上！"))
						else
							testicles?.reagents.trans_to(target_open_container, testicles.cumshot_size, transferred_by = src)
							if(total_volume_w_cum > target_open_container.volume)
								// overflow, make the decal
								add_cum_splatter_floor(get_turf(target_open_container))
								visible_message(span_userlove("[src]将粘稠的精液射进了[target_open_container]里，装得太满溢了出来！"), \
									span_userlove("你一股股地把滚烫的精液射进[target_open_container]里，把它射得溢了出来！"))
							else
								visible_message(span_userlove("[src]将粘稠的精液射进了[target_open_container]里！"), \
									span_userlove("你一股股地把滚烫的精液射进[target_open_container]里！"))
					else
						// cum fail
						create_cum_decal = TRUE
						visible_message(span_userlove("[src]把粘稠的精液射到了地板上！"), \
							span_userlove("你一股股地射出滚烫的精液，全都洒在了地板上！"))
						testicles?.reagents.remove_all(testicles.cumshot_size)

			else if(penis_climax_choice == CLIMAX_PORTAL)
				to_chat(src, "你一股股地射出滚烫的精液，射到了传送门另一边的东西上！")
				portal.relayed_body.visible_message("[portal.relayed_body]把粘稠的精液射到了地板上！")
				add_cum_splatter_floor(get_turf(portal.relayed_body))

			else
				target_choice = climax_interaction && !manual ? partner?.name : tgui_input_list(src, "选择要射在谁身上或射进谁体内。", "选择目标！", interactable_inrange_mobs) //SPLURT EDIT CHANGE - Interactions
				if(!target_choice)
					create_cum_decal = TRUE
					visible_message(span_userlove("[src]把粘稠的精液射到了地板上！"), \
						span_userlove("你一股股地射出滚烫的精液，全都洒在了地板上！"))
				else
					var/mob/living/target_mob = climax_interaction && !manual && partner ? partner : interactable_inrange_mobs[target_choice] //SPLURT EDIT CHANGE - Interactions
					var/target_mob_them = target_mob.p_them()

					var/list/target_buttons = list()

					if(istype(target_mob, /mob/living/carbon/human))
						var/mob/living/carbon/human/target_human = target_mob
						if(!target_human.wear_mask)
							target_buttons += "mouth"
					else
						target_buttons += "mouth"
					if(target_mob.has_vagina(REQUIRE_GENITAL_EXPOSED))
						target_buttons += ORGAN_SLOT_VAGINA
					if(target_mob.has_anus(REQUIRE_GENITAL_EXPOSED))
						target_buttons += ORGAN_SLOT_ANUS //SPLURT EDIT CHANGE - Interactions - Changed asshole to anus for consistency
					if(target_mob.has_penis(REQUIRE_GENITAL_EXPOSED))
						target_buttons += ORGAN_SLOT_PENIS
						var/obj/item/organ/genital/penis/other_penis = target_mob.get_organ_slot(ORGAN_SLOT_PENIS)
						if(other_penis?.sheath != null && other_penis?.sheath != "None") // SPLURT EDIT - Fix runtime on sim genitals
							target_buttons += "sheath"
					target_buttons += "On [target_mob_them]"

					//SPLURT EDIT CHANGE BEGIN - Interactions
					var/climax_into_choice
					var/interaction_inside = partner?.get_organ_slot(climax_interaction?.cum_target[interaction_position])
					if(!interaction_inside)
						interaction_inside = target_buttons.Find(climax_interaction?.cum_target[interaction_position])
						if(interaction_inside)
							interaction_inside = climax_interaction.cum_target[interaction_position]
					else
						var/obj/item/organ/genital = interaction_inside
						interaction_inside = genital.slot

					if(climax_interaction && !manual && interaction_inside)
						climax_into_choice = climax_interaction.cum_target[interaction_position]
					else if(manual)
						climax_into_choice = tgui_input_list(src, "你想射在[target_mob]的哪里或射进[target_mob]的哪里？", "最后的选择！", target_buttons)
					else
						climax_into_choice = "On [target_mob_them]"

					if(climax_interaction && !manual && climax_interaction.show_climax(src, target_mob, interaction_position))
						create_cum_decal = !interaction_inside
					else if(!climax_into_choice)
					//SPLURT EDIT CHANGE END
						create_cum_decal = TRUE
						visible_message(span_userlove("[src]把粘稠的精液射到了地板上！"), \
							span_userlove("你一股股地射出滚烫的精液，全都洒在了地板上！"))
						conditional_pref_sound(get_turf(src), 'modular_zzplurt/sound/interactions/endout.ogg', 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds) //SPLURT EDIT CHANGE - Interactions
					else if(climax_into_choice == "On [target_mob_them]")
						create_cum_decal = TRUE
						visible_message(span_userlove("[src]把粘稠的精液射到了[target_mob]身上！"), \
							span_userlove("你一股股地把滚烫的精液射到[target_mob]身上！"))
						conditional_pref_sound(get_turf(src), 'modular_zzplurt/sound/interactions/endout.ogg', 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds) //SPLURT EDIT CHANGE - Interactions
					else
						visible_message(
							span_userlove("[src]将[self_their]的肉棒完全插入[target_mob]的[climax_into_choice]，把精液射进了[target_mob_them]体内！"),
							span_userlove("你将肉棒完全插入[target_mob]的[climax_into_choice]，把精液射进了[target_mob_them]体内！"))
						to_chat(target_mob, span_userlove("你的[climax_into_choice]被[src]射出的温热精液填满了。"))
						conditional_pref_sound(get_turf(target_mob), climax_into_choice == "mouth" ? pick('modular_zzplurt/sound/interactions/mouthend (1).ogg', 'modular_zzplurt/sound/interactions/mouthend (2).ogg') : 'modular_zzplurt/sound/interactions/endout.ogg', 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds) //SPLURT EDIT CHANGE - Interactions
						//SPLURT EDIT ADDITION BEGIN - Genital Inflation and pregnancy
						var/datum/component/interactable/interactable = target_mob.GetComponent(/datum/component/interactable)
						if(interactable)
							interactable.climax_inflate_genital(src, "testicles", climax_into_choice)
						var/client/preference_source = GET_CLIENT(target_mob)
						#ifdef TESTING
						if(!preference_source)
							preference_source = GET_CLIENT(src)
						#endif
						if(ishuman(target_mob) && preference_source && \
							!HAS_TRAIT(src, TRAIT_INFERTILE) && !HAS_TRAIT(target_mob, TRAIT_INFERTILE))
							var/genital_pass = FALSE
							switch(interaction_inside)
								if(ORGAN_SLOT_ANUS)
									genital_pass = preference_source.prefs.read_preference(/datum/preference/toggle/pregnancy/anal_insemination)
								if(ORGAN_SLOT_VAGINA)
									genital_pass = preference_source.prefs.read_preference(/datum/preference/toggle/pregnancy/vaginal_insemination)
								if(CLIMAX_TARGET_MOUTH)
									genital_pass = preference_source.prefs.read_preference(/datum/preference/toggle/pregnancy/oral_insemination)
							if(genital_pass && prob(preference_source.prefs.read_preference(/datum/preference/numeric/pregnancy/chance)))
								target_mob.apply_status_effect(/datum/status_effect/pregnancy, target_mob, src)
						//SPLURT EDIT ADDITION END

			//SPLURT EDIT CHANGE BEGIN - Interactions
			if(!(climax_interaction?.interaction_modifier_flags & INTERACTION_OVERRIDE_FLUID_TRANSFER) && ishuman(src))
				if(create_cum_decal)
					if(HAS_TRAIT(src, TRAIT_MESSY))
						// Transfer reagents to the turf uisng liquids system
						var/datum/reagents/R = new(testicles.internal_fluid_maximum)
						testicles.reagents.trans_to(R, testicles.cumshot_size, transferred_by = src)
						if(partner && partner != src)
							// Get turf between src and partner for directional splatter
							var/turf/T = get_turf(partner)
							T.add_liquid_from_reagents(R, FALSE, 1, get_turf(src), partner)
						else
							var/turf/T = get_turf(src)
							T.add_liquid_from_reagents(R, FALSE, 1)
						qdel(R)
					else
						testicles.reagents.remove_all(testicles.cumshot_size)
						add_cum_splatter_floor(get_turf(src), cum_reagent = testicles.internal_fluid_datum)
				else if(partner || interactable_inrange_mobs[target_choice])
					// Transfer reagents directly to partner
					var/mob/living/target_mob = partner || interactable_inrange_mobs[target_choice]

					var/datum/reagents/R = new(testicles.internal_fluid_maximum)

					//Check if the target has custom genital fluids enabled
					if(!(target_mob.client?.prefs?.read_preference(/datum/preference/toggle/erp/custom_genital_fluids) || nonhuman_bypass_partner))
						R.add_reagent(initial(testicles.internal_fluid_datum), testicles.cumshot_size)
						testicles.reagents.remove_all(testicles.cumshot_size)
					else
						testicles.reagents.trans_to(R, testicles.cumshot_size)

					R.trans_to(target_mob, R.total_volume, transferred_by = src, methods = INGEST)
					qdel(R)
				else
					testicles.reagents.remove_all(testicles.cumshot_size)
			//SPLURT EDIT CHANGE END

		try_lewd_autoemote("moan")
		if(climax_choice == CLIMAX_PENIS)
			apply_status_effect(/datum/status_effect/climax)
			apply_status_effect(/datum/status_effect/climax_cooldown)
			if(self_orgasm)
				add_mood_event("orgasm", /datum/mood_event/climaxself)
			if(climax_interaction && !manual)
				climax_interaction.post_climax(src, partner, interaction_position)
			return TRUE

	if(climax_choice == CLIMAX_VAGINA || climax_choice == CLIMAX_BOTH)
		var/obj/item/organ/genital/vagina/vagina = get_organ_slot(ORGAN_SLOT_VAGINA)
		//SPLURT EDIT CHANGE BEGIN - Interactions
		if(!is_bottomless() && vagina?.visibility_preference != GENITAL_ALWAYS_SHOW)
			if(vagina?.reagents.total_volume >= MIN_VAGINA_WETNESS_THRESHOLD)
				visible_message(
					span_userlove("[src]在[self_their]的内裤里高潮了，阴道的淫水弄湿了内裤！"),
					span_userlove("你在内裤里高潮了，阴道的淫水弄湿了内裤！真糟糕。"))
				self_orgasm = TRUE
			else
				visible_message(
					span_userlove("[src]在[self_their]的内裤里高潮了，但还不够湿，没有弄脏内裤。"),
					span_userlove("你在内裤里高潮了，但还不够湿，没有弄脏内裤。"))
		else
			var/list/interactable_inrange_mobs = list()
			var/list/interactable_inrange_open_containers = list()
			var/target_choice //SPLURT EDIT CHANGE - Interactions

			for(var/mob/living/iterating_mob in (view(1, src) - src))
				interactable_inrange_mobs[iterating_mob.name] = iterating_mob

			for(var/obj/item/reagent_containers/container in view(1, src))
				if(container.is_open_container() || istype(container, /obj/item/reagent_containers/cup))
					interactable_inrange_open_containers[container.name] = container

			var/list/buttons = list(CLIMAX_ON_FLOOR)
			if(interactable_inrange_mobs.len)
				buttons += CLIMAX_IN_OR_ON
			if(interactable_inrange_open_containers.len)
				buttons += CLIMAX_OPEN_CONTAINER

			// If your using a LustWish portal lets you cum through it
			var/obj/structure/lewd_portal/portal = src.buckled
			if(istype(portal, /obj/structure/lewd_portal))
				buttons += CLIMAX_PORTAL

			var/vagina_climax_choice = climax_interaction && !manual ? CLIMAX_IN_OR_ON : tgui_alert(src, "选择喷在哪里。", "喷射位置", buttons)

			var/create_cum_decal = FALSE

			if(!vagina_climax_choice || vagina_climax_choice == CLIMAX_ON_FLOOR)
				create_cum_decal = TRUE
				visible_message(span_userlove("[src]抽搐着呻吟，[p_they()]喷到了地板上！"), \
					span_userlove("你抽搐着呻吟，喷到了地板上！"))
			else if(vagina_climax_choice == CLIMAX_OPEN_CONTAINER || ((!climax_interaction?.cum_target[interaction_position] || !partner) && climax_interaction?.fluid_transfer_objects.Find(REF(src)))) // SPLURT EDIT - Interactions - Added support for fluid transfer objects
				target_choice = climax_interaction?.fluid_transfer_objects.Find(REF(src)) ? climax_interaction.fluid_transfer_objects[REF(src)].name : tgui_input_list(src, "选择要喷进去的容器。", "选择目标！", interactable_inrange_open_containers) // SPLURT EDIT - Interactions - Added support for fluid transfer objects
				if(!target_choice)
					create_cum_decal = TRUE
					visible_message(span_userlove("[src]喷到了地板上！"), \
						span_userlove("你喷到了地板上！"))
					vagina?.reagents.remove_all(vagina?.reagents.total_volume)
				else
					var/obj/item/reagent_containers/cup/target_open_container = interactable_inrange_open_containers[target_choice] || climax_interaction.fluid_transfer_objects[REF(src)] // SPLURT EDIT - Interactions - Added support for fluid transfer objects
					if(target_open_container.is_refillable() && target_open_container.is_drainable())
						var/squirt_volume = vagina?.reagents.total_volume
						var/total_volume_w_squirt = squirt_volume + target_open_container.reagents.total_volume
						conditional_pref_sound(get_turf(src), SFX_DESECRATION, 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds)
						if(target_open_container.reagents.holder_full())
							add_cum_splatter_floor(get_turf(target_open_container), female = TRUE)
							visible_message(span_userlove("[src]试图喷进[target_open_container]里，但它已经满了，溢到了地板上！"), \
								span_userlove("你试图喷进[target_open_container]里，但它已经满了，所以全都洒在了地板上！"))
						else
							vagina?.reagents.trans_to(target_open_container, vagina?.reagents.total_volume, transferred_by = src)
							if(total_volume_w_squirt > target_open_container.volume)
								add_cum_splatter_floor(get_turf(target_open_container), female = TRUE)
								visible_message(span_userlove("[src]喷进了[target_open_container]里，装得太满溢了出来！"), \
									span_userlove("你喷进[target_open_container]里，把它喷得溢了出来！"))
							else
								visible_message(span_userlove("[src]喷进了[target_open_container]里！"), \
									span_userlove("你喷进[target_open_container]里！"))
					else
						create_cum_decal = TRUE
						visible_message(span_userlove("[src]喷到了地板上！"), \
							span_userlove("你喷到了地板上！"))
						vagina?.reagents.remove_all(vagina?.reagents.total_volume)
			else if(vagina_climax_choice == CLIMAX_PORTAL)
				to_chat(src, "你通过传送门喷了出来，喷到了传送门另一边的东西上！")
				portal.relayed_body.visible_message("[portal.relayed_body]喷到了地板上！")
				add_cum_splatter_floor(get_turf(portal.relayed_body), female = TRUE)
				vagina?.reagents.remove_all(vagina?.reagents.total_volume)
			else
				target_choice = climax_interaction && !manual ? partner.name : tgui_input_list(src, "选择要喷在谁身上。", "选择目标！", interactable_inrange_mobs)
				if(!target_choice)
					create_cum_decal = TRUE
					visible_message(span_userlove("[src]抽搐着呻吟，[p_they()]喷到了地板上！"), \
						span_userlove("你抽搐着呻吟，喷到了地板上！"))
				else
					var/mob/living/target_mob = climax_interaction && !manual ? partner : interactable_inrange_mobs[target_choice]
					var/target_mob_them = target_mob.p_them()

					var/list/target_buttons = list()

					if(istype(target_mob, /mob/living/carbon/human))
						var/mob/living/carbon/human/target_human = target_mob
						if(!target_human.wear_mask)
							target_buttons += "mouth"
					else
						target_buttons += "mouth"
					if(target_mob.has_vagina(REQUIRE_GENITAL_EXPOSED))
						target_buttons += ORGAN_SLOT_VAGINA
					if(target_mob.has_anus(REQUIRE_GENITAL_EXPOSED))
						target_buttons += ORGAN_SLOT_ANUS
					if(target_mob.has_penis(REQUIRE_GENITAL_EXPOSED))
						target_buttons += ORGAN_SLOT_PENIS
						var/obj/item/organ/genital/penis/other_penis = target_mob.get_organ_slot(ORGAN_SLOT_PENIS)
						if(other_penis?.sheath != null && other_penis?.sheath != "None") // SPLURT EDIT - Fix runtime on sim genitals
							target_buttons += "sheath"
					target_buttons += "On [target_mob_them]"

					var/climax_into_choice
					var/interaction_inside = partner?.get_organ_slot(climax_interaction?.cum_target[interaction_position])
					if(!interaction_inside)
						interaction_inside = target_buttons.Find(climax_interaction?.cum_target[interaction_position])
						if(interaction_inside)
							interaction_inside = climax_interaction.cum_target[interaction_position]
					else
						var/obj/item/organ/genital = interaction_inside
						interaction_inside = genital.slot

					if(climax_interaction && !manual && interaction_inside)
						climax_into_choice = climax_interaction.cum_target[interaction_position]
					else if(manual)
						climax_into_choice = tgui_input_list(src, "你想喷在[target_mob]的哪里或喷进[target_mob]的哪里？", "最后的选择！", target_buttons)
					else
						climax_into_choice = "On [target_mob_them]"

					if(climax_interaction && !manual && climax_interaction.show_climax(src, target_mob, interaction_position))
						create_cum_decal = !interaction_inside
					else if(!climax_into_choice)
						create_cum_decal = TRUE
						visible_message(span_userlove("[src]喷到了地板上！"), \
							span_userlove("你喷到了地板上！"))
						conditional_pref_sound(get_turf(src), 'modular_zzplurt/sound/interactions/endout.ogg', 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds) //SPLURT EDIT CHANGE - Interactions
					else if(climax_into_choice == "On [target_mob_them]")
						create_cum_decal = TRUE
						visible_message(span_userlove("[src]喷了[target_mob]一身！"), \
							span_userlove("你喷了[target_mob]一身！"))
						conditional_pref_sound(get_turf(src), 'modular_zzplurt/sound/interactions/endout.ogg', 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds) //SPLURT EDIT CHANGE - Interactions
					else
						visible_message(span_userlove("[src]喷进了[target_mob]的[climax_into_choice]里！"), \
							span_userlove("你喷进了[target_mob]的[climax_into_choice]里！"))
						to_chat(target_mob, span_userlove("你的[climax_into_choice]被[src]的淫水填满了。"))
						conditional_pref_sound(get_turf(target_mob), climax_into_choice == "mouth" ? pick('modular_zzplurt/sound/interactions/mouthend (1).ogg', 'modular_zzplurt/sound/interactions/mouthend (2).ogg') : 'modular_zzplurt/sound/interactions/endout.ogg', 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds) //SPLURT EDIT CHANGE - Interactions
						//SPLURT EDIT ADDITION BEGIN - Genital Inflation
						var/datum/component/interactable/interactable = target_mob.GetComponent(/datum/component/interactable)
						if(interactable)
							interactable.climax_inflate_genital(src, "vagina", climax_into_choice)
						//SPLURT EDIT ADDITION END
			if(!(climax_interaction?.interaction_modifier_flags & INTERACTION_OVERRIDE_FLUID_TRANSFER))
				if(create_cum_decal)
					if(HAS_TRAIT(src, TRAIT_MESSY))
						var/datum/reagents/R = new(vagina?.internal_fluid_maximum)
						vagina?.reagents.trans_to(R, vagina?.reagents.total_volume)
						if(partner && partner != src)
							var/turf/T = get_turf(partner)
							T.add_liquid_from_reagents(R, FALSE, 1, get_turf(src), partner)
						else
							var/turf/T = get_turf(src)
							T.add_liquid_from_reagents(R, FALSE, 1)
						qdel(R)
					else
						vagina?.reagents.remove_all(vagina?.reagents.total_volume)
						add_cum_splatter_floor(get_turf(src), female = TRUE, cum_reagent = vagina?.internal_fluid_datum)
				else if(partner || interactable_inrange_mobs[target_choice])
					var/mob/living/target_mob = partner || interactable_inrange_mobs[target_choice]

					var/datum/reagents/R = new(vagina?.internal_fluid_maximum)
					//Check if the target has custom genital fluids enabled
					if(!(target_mob.client?.prefs?.read_preference(/datum/preference/toggle/erp/custom_genital_fluids) || nonhuman_bypass_partner))
						R.add_reagent(initial(vagina?.internal_fluid_datum), vagina?.reagents.total_volume)
						vagina?.reagents.remove_all(vagina?.reagents.total_volume)
					else
						vagina?.reagents.trans_to(R, vagina?.reagents.total_volume)

					R.trans_to(target_mob, R.total_volume, transferred_by = src, methods = INGEST)
					qdel(R)
				else
					vagina?.reagents.remove_all(vagina?.reagents.total_volume)
		//SPLURT EDIT CHANGE END

	apply_status_effect(/datum/status_effect/climax)
	apply_status_effect(/datum/status_effect/climax_cooldown)
	if(self_orgasm)
		add_mood_event("orgasm", /datum/mood_event/climaxself)

	// SPLURT EDIT ADDITION BEGIN - Interactions
	if(climax_interaction && !manual)
		climax_interaction.post_climax(src, partner, interaction_position)
	//SPLURT EDIT ADDITION END
	return TRUE

//SPLURT EDIT REMOVAL BEGIN - Interactions - Moved climax defines to global defines
/*
#undef CLIMAX_VAGINA
#undef CLIMAX_PENIS
#undef CLIMAX_BOTH
*/
//SPLURT EDIT REMOVAL END

#undef CLIMAX_ON_FLOOR
#undef CLIMAX_IN_OR_ON
#undef CLIMAX_OPEN_CONTAINER

#undef MIN_CUM_THRESHOLD
#undef MIN_VAGINA_WETNESS_THRESHOLD
#undef CLIMAX_PORTAL
