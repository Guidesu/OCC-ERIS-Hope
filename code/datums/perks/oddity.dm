/datum/perk/oddity
	gain_text = "You feel different. Exposure to oddities has changed you. Now you can't go back."

<<<<<<< HEAD
/datum/perk/oddity/fast_walker
	name = "Fast Walker"
	desc = "Slow and steady wins the race. Prove them wrong."
	icon_state = "fast" // https://game-icons.net/1x1/delapouite/fast-forward-button.html

/datum/perk/oddity/ear_of_quicksilver
	name = "Ear of Quicksilver"
	desc = "Secrets do not escape your ears. Beware, loud noises are especially dangerous to you."
	icon_state = "ear" // https://game-icons.net

/datum/perk/oddity/gunslinger
	name = "Gunslinger"
	desc = "Point, shoot, aim, shoot again. Pistols are the best!"
	icon_state = "dual_shot" // https://game-icons.net/1x1/delapouite/bullet-impacts.html

/datum/perk/oddity/terrible_fate
	name = "Terrible Fate"
	desc = "You realize the painful truth of death. You don't want to die, and despise death - dying is a unmistakable horror to you."
	icon_state = "murder" // https://game-icons.net/1x1/delapouite/chalk-outline-murder.html

/datum/perk/oddity/unfinished_delivery
	name = "Unfinished Delivery"
	desc = "It..it's not over? But I have no Cruciform, do I? How...why do I feel such a strong grip on life?"
	icon_state = "regrowth" // https://game-icons.net/1x1/delapouite/stump-regrowth.html

/datum/perk/oddity/lungs_of_iron
	name = "Lungs of Iron"
	desc = "Why am I in space, when I could win a swimming contest with such mighty breathing?"
	icon_state = "lungs" // https://game-icons.net/1x1/lorc/one-eyed.html

/datum/perk/oddity/blood_of_lead
	name = "Blood of Lead"
	desc = "Rotten food, disgusting garbage, poisons - all is less harmful to you now."
	icon_state = "liver" // https://game-icons.net

/datum/perk/oddity/space_asshole
	name = "Space Asshole"
	desc = "Bombs, holes, falling in holes, being hit with bombs, I'm just used to it by now."
	icon_state = "bomb" // https://game-icons.net

/datum/perk/oddity/space_asshole/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.mob_bomb_defense += 25
		holder.falls_mod -= 0.4

/datum/perk/oddity/space_asshole/remove()
	if(holder)
		holder.mob_bomb_defense -= 25
		holder.falls_mod += 0.4
	..()

/datum/perk/oddity/parkour
	name = "Parkour"
	desc = "You can climb tables and ladders faster."
	icon_state = "parkour" //https://game-icons.net/1x1/delapouite/jump-across.html

/datum/perk/oddity/parkour/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.mod_climb_delay -= 0.5

/datum/perk/oddity/parkour/remove()
	if(holder)
		holder.mod_climb_delay += 0.5
	..()

/datum/perk/oddity/charming_personality
	name = "Charming Personality"
	desc = "A little wink and a confident smile goes far in this place. People are more comfortable with your company."
	icon_state = "flowers" // https://game-icons.net/1x1/lorc/flowers.html

/datum/perk/oddity/charming_personality/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.sanity_damage -= 2

/datum/perk/oddity/charming_personality/remove()
	if(holder)
		holder.sanity_damage += 2
	..()

/datum/perk/oddity/horrible_deeds
	name = "Horrible Deeds"
	desc = " The twitch. The blood. They see the truth in your actions and are horrified."
	icon_state = "bad_breath" // https://game-icons.net

/datum/perk/oddity/horrible_deeds/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.sanity_damage += 2

/datum/perk/oddity/horrible_deeds/remove()
	if(holder)
		holder.sanity_damage -= 2
	..()

/datum/perk/oddity/chaingun_smoker
	name = "Chaingun smoker"
	desc = "The cigarette is a way of life. Literally - it makes you feel less sick and tougher when you chomp on cigars."
	icon_state = "cigarette" // https://game-icons.net

/datum/perk/oddity/nightcrawler
	name = "Nightcrawler"
	desc = "You are faster in the darkness."
	icon_state = "night" // https://game-icons.net/1x1/lorc/night-sky.html

/datum/perk/oddity/fast_fingers
	name = "Fast Fingers"
	desc = "Nothing is safe around your hands. You are a true kleptomaniac. \
			Taking items off others is without sound and prompts, it's also quicker, and you can slip pills into drinks unnoticed."
	icon_state = "robber_hand" // https://game-icons.net/1x1/darkzaitzev/robber-hand.html

/datum/perk/oddity/quiet_as_mouse
	name = "Quiet as a mouse"
	desc = "Being deadly, easy. Silent? Even easier now."
	icon_state = "footsteps" // https://game-icons.net

/datum/perk/oddity/quiet_as_mouse/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.noise_coeff -= 0.5

/datum/perk/oddity/quiet_as_mouse/remove()
	if(holder)
		holder.noise_coeff += 0.5
	..()

/datum/perk/oddity/balls_of_plasteel
	name = "Balls of plasteel"
	desc = "Pain comes and goes. Better to have less of it."
	icon_state = "golem" // https://game-icons.net

/datum/perk/oddity/junkborn
	name = "Junkborn"
	desc = "And they said you couldn't find a grail in the garbage!"
	icon_state = "treasure" // https://game-icons.net

/datum/perk/oddity/ass_of_concrete
	name = "Ass of Concrete"
	desc = "I can't take it anymore! What..how did I land on my feet?! I feel immovable! No one can push me around anymore!"
	icon_state = "muscular" // https://game-icons.net

/datum/perk/oddity/ass_of_concrete/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.mob_bump_flag = HEAVY

/datum/perk/oddity/ass_of_concrete/remove()
	if(holder)
		holder.mob_bump_flag = ~HEAVY
	..()

/datum/perk/oddity/toxic_revenger
	name = "Toxic Revenger"
	desc = "A heart of gold does not matter when blood is toxic. Those who breathe your air, share your fate."
	icon_state = "Hazmat" // https://game-icons.net
	var/cooldown = 10 MINUTES //Occulus edit: Reducing the spam
=======
/datum/perk/oddity/survivor
	name = "Survivor"
	desc = "After seeing the death of many acquaintances and friends, witnessing death doesn't shock you as much as before. \
			Halves sanity loss from seeing people die."
	//icon_state = "survivor" // https://game-icons.net/1x1/lorc/one-eyed.html

/datum/perk/oddity/survivor/assign(mob/living/carbon/human/H)
	if(..())
		holder.sanity.death_view_multiplier *= 0.5

/datum/perk/oddity/survivor/remove()
	if(holder)
		holder.sanity.death_view_multiplier *= 2
	..()

/datum/perk/oddity/inspiring
	name = "Inspiring Presence"
	desc = "You know just what to say to people and are able to inspire the best - or even worst - in others. \
			People around you regain their sanity quicker."
	//icon_state = "inspiration"

/datum/perk/oddity/inspiring/assign(mob/living/carbon/human/H)
	if(..())
		holder.sanity_damage -= 2

/datum/perk/oddity/inspiring/remove()
	if(holder)
		holder.sanity_damage += 2
	..()

/datum/perk/oddity/terrible_fate
	name = "Terrible Fate"
	desc = "You realize the painful truth of death. You don't want to die and despise death - dying is a unmistakable horror to you. \
			Anyone who is around you at the moment of your death must roll a Vigilance sanity check. If they fail, their sanity will instantly be dropped to 0."
	icon_state = "murder" // https://game-icons.net/1x1/delapouite/chalk-outline-murder.html

/datum/perk/oddity/toxic_revenger
	name = "Fungal Host"
	desc = "A small hostile fungal spores were on the oddity, hijacking your lungs and forcing them to emit toxins harmful to everyone around you every half hour. It will be a long time before your body can fight this off..."
	gain_text = "You feel a terrible aching pain in your lungs - an anomalous fungus on the oddity has infused your body!"
	//icon_state = "Hazmat" // https://game-icons.net
	var/cooldown = 30 MINUTES
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/initial_time

/datum/perk/oddity/toxic_revenger/assign(mob/living/carbon/human/H)
	..()
	initial_time = world.time

/datum/perk/oddity/toxic_revenger/on_process()
	if(!..())
		return
	if(holder.species.flags & NO_BREATHE || holder.internal)
		return
	if(world.time < initial_time + cooldown)
		return
	initial_time = world.time
<<<<<<< HEAD
	for(var/mob/living/L in viewers(holder, 2)) //Occulus Edit: Nerfing the radius
		if(!L)
			continue
		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			if(H.stat == DEAD || H.internal || H.stats.getPerk(PERK_TOXIC_REVENGER) || (H.species.flags & NO_BREATHE))
				continue
		//L.reagents?.add_reagent("toxin", 5) Occulus Edit: removing the damage
		L.emote("cough")
		to_chat(L, SPAN_WARNING("[holder] emits a strange smell."))

/datum/perk/oddity/absolute_grab
	name = "Absolute Grab"
	desc = "It pays to be a predator. You don't grab, You lunge."
	icon_state = "grab" // https://game-icons.net

/datum/perk/oddity/sure_step
	name = "Sure step"
	desc = " You are more likely to avoid traps."
	icon_state = "mantrap"

/datum/perk/oddity/market_prof
	name = "Market Professional"
	desc = "Just by looking at the item you can know how much it cost."
	icon_state = "market_prof"

/datum/perk/oddity/gunsmith
	name = "Gunsmith"
	desc = "You are skilled in gun production. \
			You produce twice as much ammo from ammo kits, and have more options to pick from when assembling a gun."
	icon_state = "ammo_box" //https://game-icons.net/1x1/sbed/ammo-box.html

///////////////////////////////////////
//////// NT ODDITYS PERKS /////////////
///////////////////////////////////////

/datum/perk/nt_oddity
	gain_text = "God chose you to expand his will."

/datum/perk/nt_oddity/holy_light
	name = "Holy Light"
	desc = "You have been touched by the divine. You now provide a weak healing aura, healing both brute and burn damage to any NeoThelogists nearby as well as yourself."
	icon_state = "third_eye"  //https://game-icons.net/1x1/lorc/third-eye.html
=======
	for(var/mob/living/carbon/human/H in viewers(5, holder))
		if(H.stat == DEAD || H.internal || H.stats.getPerk(PERK_TOXIC_REVENGER) || H.species.flags & NO_BREATHE)
			continue
		if(H.head?.item_flags & BLOCK_GAS_SMOKE_EFFECT || H.wear_mask?.item_flags & BLOCK_GAS_SMOKE_EFFECT || BP_IS_ROBOTIC(H.get_organ(BP_CHEST)))
			continue

		H.reagents?.add_reagent("toxin", 5)
		H.emote("cough")
		to_chat(H, SPAN_WARNING("[holder] emits a strange smell."))

/datum/perk/oddity/gunslinger
	name = "Gunslinger"
	desc = "The latent effects of an oddity have granted you an insight into firing bullets faster than anyone else; a shame it doesn't make you immune to recoil."
	gain_text = "Your trigger finger feels more relaxed than ever..."
	//icon_state = "dual_shot" // https://game-icons.net/1x1/delapouite/bullet-impacts.html

/datum/perk/oddity/balls_of_plasteel
	name = "True Grit"
	desc = "Pain comes and goes, you feel as though can withstand far worse than ever before."
	gain_text = "Pain is merely weakness leaving the body."
	//icon_state = "golem" // https://game-icons.net

/datum/perk/oddity/fast_walker
	name = "Springheel"
	desc = "You're sure of your movements now, slow and steady may win the race but you can prove them wrong."
	gain_text = "You feel your pace quickening, your thoughts barely catching up with your stride..."
	//icon_state = "fast" // https://game-icons.net/1x1/delapouite/fast-forward-button.html

/datum/perk/oddity/fast_walker/assign(mob/living/carbon/human/H)
	..()
	if(holder.stats.getPerk(PERK_FAST_WALKER)) // Prevents stacking the same perk over and over for Emperor spider levels of speed. - Seb
		return FALSE

/datum/perk/oddity/harden
	name = "Natural Armor"
	desc = "Your skin has become harder, more durable, able to accept blunt force and endure."
	gain_text = "After all you've endured, you can't help but feel tougher than normal, your skin feels like iron."
	//icon_state = "" // - No icon, suggestion - Riot Shield?

/datum/perk/oddity/harden/assign(mob/living/carbon/human/H)
	..()
	holder.brute_mod_perk -= 0.1 // One third of subdermal armor
	holder.mob_bomb_defense += 5
	holder.falls_mod -= 0.2

/datum/perk/oddity/harden/remove()
	holder.brute_mod_perk += 0.1
	holder.mob_bomb_defense -= 5
	holder.falls_mod += 0.2
	..()

/datum/perk/oddity/thin_skin
	name = "Thin Skin"
	desc = "The anomaly has weakened your skin, making you less resistant to blunt trauma."
	gain_text = "You feel yourself growing softer...Did everything always hurt this much?"
	//icon_state = "" // - No icon, suggestion - Paper?

/datum/perk/oddity/thin_skin/assign(mob/living/carbon/human/H)
	..()
	holder.brute_mod_perk += 0.1
	holder.mob_bomb_defense -= 5
	holder.falls_mod += 0.2

/datum/perk/oddity/thin_skin/remove()
	holder.brute_mod_perk -= 0.1 // One third of subdermal armor
	holder.mob_bomb_defense += 5
	holder.falls_mod -= 0.2
	..()

/datum/perk/oddity/better_toxins
	name = "Toxic Resistance"
	desc = "You've been exposed to something toxic, yet your body fought it off and is now strengthened against poisoning as a result."
	gain_text = "What doesn't kill you, helps you survive it better."
	//icon_state = "" // - No icon, suggestion - Anti toxin needle?

/datum/perk/oddity/better_toxins/assign(mob/living/carbon/human/H)
	..()
	holder.toxin_mod_perk -= 0.1 //Might be to high...

/datum/perk/oddity/better_toxins/remove()
	holder.toxin_mod_perk += 0.1
	..()

/datum/perk/oddity/shell_shock
	name = "Shell Shock"
	desc = "Why are you not getting better at fighting? Why do mere roaches keep tumbling you down? Your body is weakened by self doubt and despair..."
	gain_text = "Things just get harder and harder..."
	//icon_state = "" // - No icon, suggestion, old knife?

/datum/perk/oddity/shell_shock/assign(mob/living/carbon/human/H)
	..()
	holder.stats.changeStat(STAT_ROB, -5)
	holder.stats.changeStat(STAT_TGH, -5)
	holder.stats.changeStat(STAT_VIG, -5)

/datum/perk/oddity/shell_shock/remove()
	holder.stats.changeStat(STAT_ROB, 5)
	holder.stats.changeStat(STAT_TGH, 5)
	holder.stats.changeStat(STAT_VIG, 5)
	..()

/datum/perk/oddity/failing_mind
	name = "Failing Mind"
	desc = "The mind fogs, blanking out, always distracted. Did that anomaly make you dumber, or where you always like this?"
	gain_text = "The world is not as clear as it once was."
	//icon_state = "" // - No icon, suggestion, old newspaper?

/datum/perk/oddity/failing_mind/assign(mob/living/carbon/human/H)
	..()
	holder.stats.changeStat(STAT_COG, -5)
	holder.stats.changeStat(STAT_MEC, -5)
	holder.stats.changeStat(STAT_BIO, -5)

/datum/perk/oddity/failing_mind/remove()
	holder.stats.changeStat(STAT_COG, 5)
	holder.stats.changeStat(STAT_MEC, 5)
	holder.stats.changeStat(STAT_BIO, 5)
	..()

/datum/perk/oddity/snackivore
	name = "Snackivore"
	desc = "The secret of the lounge lizards! Your body adapts to eating the worse kind of food in existence, allowing you to draw an exceptional amount of nutrition from snack foods. More so \
	it passively heals you like tricord, with pure toxins healing you the most. Rejoice trash mammals!"
	passivePerk = TRUE

/datum/perk/oddity/sharp_mind
	name = "Sharpened Mind"
	desc = "Narrowing in and extrapolating the inner workings of the world has never felt so much easier."
	gain_text = "The mind can over come any puzzle thrown at it!"
	//icon_state = "" // - No icon, suggestion, detective glass?

/datum/perk/oddity/sharp_mind/assign(mob/living/carbon/human/H)
	..()
	holder.stats.changeStat(STAT_COG, 5)
	holder.stats.changeStat(STAT_MEC, 5)
	holder.stats.changeStat(STAT_BIO, 5)

/datum/perk/oddity/sharp_mind/remove()
	holder.stats.changeStat(STAT_COG, -5)
	holder.stats.changeStat(STAT_MEC, -5)
	holder.stats.changeStat(STAT_BIO, -5)
	..()

/datum/perk/oddity/strangth
	name = "Inner Strength"
	desc = "You're more keenly aware of your own abilities for combat. You feel more confident on your punches thrown, a bit tougher against those thrown at you, and you're starting to get the hang of shooting that one bulky gun..."
	gain_text = "The blood pumps, the muscles harden, and your trigger finger feels easier than ever..."
	//icon_state = "" // - No icon, suggestion, detective glass?

/datum/perk/oddity/strangth/assign(mob/living/carbon/human/H)
	..()
	holder.stats.changeStat(STAT_ROB, 5)
	holder.stats.changeStat(STAT_TGH, 5)
	holder.stats.changeStat(STAT_VIG, 5)

/datum/perk/oddity/strangth/remove()
	holder.stats.changeStat(STAT_ROB, -5)
	holder.stats.changeStat(STAT_TGH, -5)
	holder.stats.changeStat(STAT_VIG, -5)
	..()

/datum/perk/oddity/iron_will
	name = "Will of Iron"
	desc = "The body is able to succumb to many negative affects but the mind can simply ignore them. Getting addicted to things is much harder and you can stomach more chemicals."
	//icon_state = "ironpill" // https://game-icons.net/1x1/lorc/underdose.html

/datum/perk/oddity/iron_will/assign(mob/living/carbon/human/H)
	..()
	holder.metabolism_effects.addiction_chance_multiplier = 0.2
	holder.metabolism_effects.nsa_bonus += 20
	holder.metabolism_effects.calculate_nsa()

/datum/perk/oddity/iron_will/remove()
	holder.metabolism_effects.addiction_chance_multiplier = 1
	holder.metabolism_effects.nsa_bonus -= 20
	holder.metabolism_effects.calculate_nsa()
	..()

/datum/perk/oddity/mind_of_matter
	name = "Will to Power"
	desc = "The mind protects the body by imposing limits to prevent severe harm to the self. With enough focus, you can push yourself past that limit."
	//icon_state = "ironpill" // https://game-icons.net/1x1/lorc/underdose.html

/datum/perk/oddity/mind_of_matter/assign(mob/living/carbon/human/H)
	..()
	holder.maxHealth += 20
	holder.health += 20

/datum/perk/oddity/mind_of_matter/remove()
	holder.maxHealth -= 20
	holder.health -= 20
	..()

///////////////////////////////////////
//////// JOB ODDITYS PERKS ////////////
///////////////////////////////////////

/datum/perk/nt_oddity
	gain_text = "The Absolute chose you to expand its will."

/datum/perk/nt_oddity/holy_light
	name = "Holy Light"
	desc = "You have been blessed by the grace of the Absolute. You now provide a weak healing aura, healing both brute and burn damage to any cruciform bearers nearby as well as yourself."
	//icon_state = "third_eye"  //https://game-icons.net/1x1/lorc/third-eye.html
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/healing_power = 0.1
	var/cooldown = 1 SECONDS // Just to make sure that perk don't go berserk.
	var/initial_time

/datum/perk/nt_oddity/holy_light/assign(mob/living/carbon/human/H)
	..()
	initial_time = world.time

/datum/perk/nt_oddity/holy_light/on_process()
	if(!..())
		return
	if(!holder.get_core_implant(/obj/item/implant/core_implant/cruciform))
		return
	if(world.time < initial_time + cooldown)
		return
	initial_time = world.time
	for(var/mob/living/L in viewers(holder, 7))
		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			if(H.stat == DEAD || !(H.get_core_implant(/obj/item/implant/core_implant/cruciform)))
				continue
			H.adjustBruteLoss(-healing_power)
			H.adjustFireLoss(-healing_power)

<<<<<<< HEAD
/datum/perk/hive_oddity/hive_born
	name = "Hiveborn"
	desc = "You feel electricty flow within your body to your hands. Powercells recharge in your hands."
	icon_state = "circuitry"  //https://game-icons.net/1x1/lorc/circuitry.html
	gain_text = "You feel a stabbing pain of something being injected into you, and with it a painfully pleaseant feeling of being improved."
	var/cooldown = 10 SECONDS
	var/initial_time
	var/obj/item/cell/C

/datum/perk/hive_oddity/hive_born/assign(mob/living/carbon/human/H)
	..()
	initial_time = world.time

/datum/perk/hive_oddity/hive_born/on_process()
	if(!..())
		return
	if(world.time < initial_time + cooldown)
		return
	initial_time = world.time
	if((holder.l_hand && istype(holder.l_hand, /obj/item/cell)))
		C = holder.l_hand
		if(!C.fully_charged())
			C.give(50)
	if((holder.r_hand && istype(holder.r_hand, /obj/item/cell)))
		C = holder.r_hand
		if(!C.fully_charged())
			C.give(50)
=======
/datum/perk/bluespace
	name = "Bluespace Alignement"
	desc = "The Tuning Device is taxing on the mind but rewarding... Along with some other side affects..."
	gain_text = "Having stared too much into the abyss that is Bluespace itself, you can't help but feel its gaze staring back at you."
	lose_text = "The death heat of the universe strays further away... for now."
	//icon_state = "" // - No icon, suggestion, vortex?
	var/initial_time

/datum/perk/bluespace/assign(mob/living/carbon/human/H)
	..()
	initial_time = world.time
	cooldown_time = world.time + rand(20, 60) MINUTES
	holder.stats.changeStat(STAT_COG, 5) //We keep this 5 per use
	if(!H.stats?.getPerk(PERK_SI_SCI) && prob(60))
		GLOB.bluespace_entropy += rand(80, 150) //You done fucked it up.
	if(H.stats?.getPerk(PERK_SI_SCI) && prob(50))
		GLOB.bluespace_entropy -= rand(20, 30) //High odds to do even better!
	GLOB.bluespace_entropy -= rand(30, 50)

/datum/perk/bluespace/remove(mob/living/carbon/human/H)
	if(!H.stats?.getPerk(PERK_SI_SCI) && prob(30))
		GLOB.bluespace_entropy += rand(80, 150)
	if(H.stats?.getPerk(PERK_SI_SCI) && prob(50))
		GLOB.bluespace_entropy -= rand(20, 30)
	GLOB.bluespace_entropy += rand(30, 50)
	..()

/datum/perk/bluespace/on_process()
	if(!..())
		return
	if(cooldown_time <= world.time)
		holder.stats.removePerk(type)
		to_chat(holder, SPAN_NOTICE("[lose_text]"))
		return
	if(holder.buckled)
		cooldown_time -= 5 SECONDS //Resting grately speeds this up

/datum/perk/guild/blackbox_insight
	name = "Blackbox Tinkering"
	desc = "It's sleek contours, the expert craftsmanship... The best of hand-made mechanical genius."
	gain_text = "What wondrous possibilities..."
	//icon_state = "" // - No icon, suggestion, detective glass?

/datum/perk/guild/blackbox_insight/assign(mob/living/carbon/human/H)
	..()
	holder.stats.changeStat(STAT_COG, 15)
	holder.stats.changeStat(STAT_MEC, 15)

/datum/perk/guild/blackbox_insight/remove()
	holder.stats.changeStat(STAT_COG, -10) //we keep 5 of each
	holder.stats.changeStat(STAT_MEC, -10)
	..()


//////////////
//Drug Perks//
//////////////

//Basically for drugs to apply a perk for a set amount of time..

/datum/perk/drug/ultrasurgeon
	name = "Ultrasurgeon Knowledge"
	desc = "After your fix of ultrasurgeon you can feel your mind ease just as your muscles relax."

/datum/perk/njoy
	name = "Njoy (Active)"
	desc = "Your mind can focus on what is real, just like when you get rid of a painful earring."
	//icon_state = "cheerful"  //https://game-icons.net/1x1/lorc/cheerful.html

	gain_text = "Your mind feels much clearer now."
	lose_text = "You feel the shadows once more."

/datum/perk/njoy/assign(mob/living/carbon/human/H)
	if(..())
		holder.sanity.insight_gain_multiplier *= 0.5

/datum/perk/njoy/remove()
	if(holder)
		holder.sanity.insight_gain_multiplier *= 2
	..()

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
