//Closets full of loot, they should be placed in maints
/obj/structure/closet/random
	spawn_frequency = 10
	spawn_tags = SPAWN_TAG_CLOSET_RANDOM
	rarity_value = 10
	bad_type = /obj/structure/closet/random
	spawn_blacklisted = FALSE

/obj/structure/closet/random/miscellaneous
	name = "\improper forgotten closet"
	desc = "Old and rusty closet, probably older than you."
	icon_state = "oldstyle"
	old_chance = 50
	rarity_value = 10

<<<<<<< HEAD
/obj/structure/closet/random/miscellaneous/populate_contents()
	new /obj/spawner/contraband/low_chance(src)
	new /obj/spawner/contraband/low_chance(src)
	new /obj/spawner/pack/rare/low_chance(src)
	new /obj/spawner/junk(src)
	new /obj/spawner/junk(src)
	new /obj/spawner/junk(src)
	new /obj/spawner/lowkeyrandom(src)
	new /obj/spawner/lowkeyrandom(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/pack/tech_loot/low_chance(src)
	new /obj/spawner/pack/cloth/low_chance(src)
	new /obj/spawner/pack/cloth/low_chance(src)
	new /obj/spawner/pack/gun_adjacent_loot/low_chance(src)
	new /obj/spawner/pack/gun_adjacent_loot/low_chance(src)
	new /obj/spawner/pack/gun_adjacent_loot/low_chance(src)


/obj/structure/closet/random/tech
=======
/obj/structure/closet/random_miscellaneous/populate_contents()
	new /obj/random/contraband/low_chance(src)
	new /obj/random/contraband/low_chance(src)
	new /obj/random/pack/rare/low_chance(src)
	new /obj/random/junk(src)
	new /obj/random/junk(src)
	new /obj/random/junk(src)
	new /obj/random/lowkeyrandom(src)
	new /obj/random/lowkeyrandom(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/pack/tech_loot/low_chance(src)
	new /obj/random/pack/cloth/low_chance(src)
	new /obj/random/pack/cloth/low_chance(src)
	new /obj/random/pack/gun_loot/low_chance(src)
	new /obj/random/pouch/hardcase_scrap/low_chance(src)
	new /obj/random/cluster/roaches/lower_chance(src)
	new /obj/random/gun_parts/low(src)
	if(prob(20))
		new /obj/random/gun_parts/frames(src)

/obj/structure/closet/random_tech
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper technical closet"
	desc = "Somewhat old closet with wrench sign on it."
	icon_state = "eng"
	icon_door = "eng_tool"
	old_chance = 10
	rarity_value = 15

<<<<<<< HEAD
/obj/structure/closet/random/tech/populate_contents()
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/pack/tech_loot(src)
	new /obj/spawner/pack/tech_loot(src)
	new /obj/spawner/pack/tech_loot(src)
	new /obj/spawner/pack/tech_loot(src)
	new /obj/spawner/pack/tech_loot/low_chance(src)
	new /obj/spawner/pack/tech_loot/low_chance(src)


/obj/structure/closet/random/spareparts
	name = "\improper spare parts closet"
	desc = "Somewhat old closet with spare parts in it."
	icon_state = "eng"
	icon_door = "eng_tool" //OCCULUS EDIT. FUCKING ERIS!
=======
/obj/structure/closet/random_tech/populate_contents()
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/pack/tech_loot(src)
	new /obj/random/pack/tech_loot(src)
	new /obj/random/pack/tech_loot(src)
	new /obj/random/pack/tech_loot(src)
	new /obj/random/pouch/hardcase_scrap(src)
	new /obj/random/pack/tech_loot/low_chance(src)
	new /obj/random/pack/tech_loot/low_chance(src)
	new /obj/random/cluster/roaches/lower_chance(src)
	if(prob(30))
		new /obj/random/gun_parts/frames(src)

/obj/structure/closet/random_spareparts
	name = "\improper spare parts closet"
	desc = "Somewhat old closet with spare parts in it."
	icon_state = "eng"
	icon_door = "eng_tool"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	old_chance = 10
	rarity_value = 50

<<<<<<< HEAD
/obj/structure/closet/random/spareparts/populate_contents() //OCCULUS EDIT. FUCKING ERIS
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/techpart(src)
	new /obj/spawner/techpart(src)
	new /obj/spawner/techpart(src)
	new /obj/spawner/techpart(src)
	new /obj/spawner/techpart(src)
	new /obj/spawner/techpart(src)
	new /obj/spawner/tool_upgrade(src)
	new /obj/spawner/tool_upgrade(src)
	new /obj/spawner/tool_upgrade(src)
	new /obj/spawner/lathe_disk(src)
	new /obj/spawner/lathe_disk/low_chance(src)
	new /obj/spawner/pack/tech_loot/low_chance(src)
	new /obj/spawner/pack/tech_loot/low_chance(src)




=======
/obj/structure/closet/random_tech/populate_contents()
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/techpart(src)
	new /obj/random/techpart(src)
	new /obj/random/techpart(src)
	new /obj/random/techpart(src)
	new /obj/random/techpart(src)
	new /obj/random/techpart(src)
	new /obj/random/tool_upgrade(src)
	new /obj/random/tool_upgrade(src)
	new /obj/random/tool_upgrade(src)
	new /obj/random/lathe_disk(src)
	new /obj/random/lathe_disk/low_chance(src)
	new /obj/random/pouch/hardcase_scrap/low_chance(src)
	new /obj/random/pack/tech_loot/low_chance(src)
	new /obj/random/pack/tech_loot/low_chance(src)
	new /obj/random/cluster/roaches/lower_chance(src)
	if(prob(20))
		new /obj/random/gun_parts/frames(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


/obj/structure/closet/random/milsupply
	name = "\improper military supply closet"
	desc = "Why is this here?"
	icon_state = "syndicate"
	old_chance = 10
	rarity_value = 50

<<<<<<< HEAD
/obj/structure/closet/random/milsupply/populate_contents()
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/pack/rare(src)
	new /obj/spawner/pack/gun_loot(src)
	new /obj/spawner/pack/gun_loot(src)
	new /obj/spawner/pack/gun_loot(src)
	new /obj/spawner/pack/gun_loot(src)
	new /obj/spawner/pack/gun_loot(src)
	new /obj/spawner/pack/gun_loot/low_chance(src)
	new /obj/spawner/pack/gun_loot/low_chance(src)
	new /obj/spawner/pack/gun_loot/low_chance(src)
	new /obj/spawner/pack/gun_loot/low_chance(src)
	new /obj/spawner/pack/gun_loot/low_chance(src)
	new /obj/spawner/pack/gun_loot/low_chance(src)
	new /obj/spawner/pack/gun_loot/low_chance(src)
	new /obj/spawner/medical/low_chance(src)
	new /obj/spawner/medical/low_chance(src)
	new /obj/spawner/medical/low_chance(src)




=======
/obj/structure/closet/random_milsupply/populate_contents()
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/pack/rare(src)
	new /obj/random/pack/gun_loot(src)
	new /obj/random/pack/gun_loot(src)
	new /obj/random/pack/gun_loot(src)
	new /obj/random/pack/gun_loot(src)
	new /obj/random/pack/gun_loot(src)
	new /obj/random/pack/gun_loot/low_chance(src)
	new /obj/random/pack/gun_loot/low_chance(src)
	new /obj/random/pack/gun_loot/low_chance(src)
	new /obj/random/pack/gun_loot/low_chance(src)
	new /obj/random/pack/gun_loot/low_chance(src)
	new /obj/random/pack/gun_loot/low_chance(src)
	new /obj/random/pack/gun_loot/low_chance(src)
	new /obj/random/medical/low_chance(src)
	new /obj/random/medical/low_chance(src)
	new /obj/random/medical/low_chance(src)
	new /obj/random/pouch/hardcase_scrap/low_chance(src)
	new /obj/random/cluster/roaches/lower_chance(src)
	new /obj/random/gun_parts/low(src)
	new /obj/random/gun_parts/low(src)
	new /obj/random/gun_parts/frames(src)
	new /obj/random/gun_parts/frames(src)
	if(prob(80))
		new /obj/random/gun_parts/frames(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/structure/closet/random/medsupply
	name = "\improper medical supply closet"
	desc = "Abandoned medical supply."
	icon_state = "freezer"
	old_chance = 10

<<<<<<< HEAD
/obj/structure/closet/random/medsupply/populate_contents()
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/medical_lowcost(src)
	new /obj/spawner/medical_lowcost(src)
	new /obj/spawner/medical_lowcost(src)
	new /obj/spawner/medical_lowcost(src)
	new /obj/spawner/medical(src)
	new /obj/spawner/medical(src)
	new /obj/spawner/medical(src)
	new /obj/spawner/medical/low_chance(src)
	new /obj/spawner/medical/low_chance(src)



=======
/obj/structure/closet/random_medsupply/populate_contents()
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/medical_lowcost(src)
	new /obj/random/medical_lowcost(src)
	new /obj/random/medical_lowcost(src)
	new /obj/random/medical_lowcost(src)
	new /obj/random/medical(src)
	new /obj/random/medical(src)
	new /obj/random/medical(src)
	new /obj/random/medical/low_chance(src)
	new /obj/random/medical/low_chance(src)
	new /obj/random/pouch/hardcase_scrap/low_chance(src)
	new /obj/random/cluster/roaches/lower_chance(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/structure/closet/secure_closet/rare_loot
	name = "\improper sealed military supply closet"
	desc = "The access panel looks old. There is probably no ID's around that can open it."
	req_access = list(access_cent_specops) //You are suppose to hack it
	icon_state = "syndicate"
	spawn_blacklisted = FALSE
	spawn_tags = SPAWN_TAG_CLOSET_SECURE_RANDOM
	rarity_value = 100

/obj/structure/closet/secure_closet/rare_loot/populate_contents()
<<<<<<< HEAD
	new /obj/spawner/pack/rare(src)
	new /obj/spawner/pack/rare(src)
	new /obj/spawner/pack/rare(src)
	new /obj/spawner/pack/rare(src)
	new /obj/spawner/pack/gun_loot(src)
	new /obj/spawner/pack/gun_loot(src)
	new /obj/spawner/pack/gun_loot(src)
	new /obj/spawner/pack/gun_loot(src)
	new /obj/spawner/pack/gun_loot(src)

=======
	new /obj/random/pack/rare(src)
	new /obj/random/pack/rare(src)
	new /obj/random/pack/rare(src)
	new /obj/random/pack/rare(src)
	new /obj/random/pack/gun_loot(src)
	new /obj/random/pack/gun_loot(src)
	new /obj/random/pack/gun_loot(src)
	new /obj/random/pack/gun_loot(src)
	new /obj/random/pack/gun_loot(src)
	new /obj/random/pouch/hardcase_scrap/low_chance(src)
	new /obj/random/cluster/roaches/lower_chance(src)
	new /obj/random/gun_parts(src)
	new /obj/random/gun_parts(src)
	new /obj/random/gun_parts/low(src)
	new /obj/random/gun_parts/frames(src)
	new /obj/random/gun_parts/frames(src)
	if(prob(80))
		new /obj/random/gun_parts/frames(src)
		new /obj/random/gun_parts/frames(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


//Closet with unfair bullshit inside
/obj/structure/closet/random/hostilemobs
	name = "\improper forgotten closet"
	desc = "Old and rusty closet, probably older than you."
	icon_state = "oldstyle"
	old_chance = 70
	rarity_value = 12.5
	spawn_blacklisted = TRUE

<<<<<<< HEAD
/obj/structure/closet/random/hostilemobs/populate_contents()
	new /obj/spawner/pack/rare(src) //To reward players for fighting this bullshit
	new /obj/spawner/pack/rare(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/rations(src)
	new /obj/spawner/rations(src)
	new /obj/spawner/rations(src)
	new /obj/spawner/mob/roaches/cluster(src)

// Used for scrap beacon
/obj/structure/closet/random/hostilemobs/beacon
	rarity_value = 6

/obj/structure/closet/random/hostilemobs/beacon/populate_contents()
	new /obj/spawner/pack/rare(src) //To reward players for fighting this bullshit
	new /obj/spawner/pack/rare(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/lowkeyrandom/low_chance(src)
	new /obj/spawner/rations(src)
	new /obj/spawner/rations(src)
	new /obj/spawner/rations(src)
	new /obj/spawner/mob/roaches/cluster/beacon(src)
=======
/obj/structure/closet/random_hostilemobs/populate_contents()
	new /obj/random/pack/rare(src) //To reward players for fighting this bullshit
	new /obj/random/pack/rare(src)
	new /obj/random/gun_parts/low(src)
	new /obj/random/gun_parts/low(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/rations(src)
	new /obj/random/rations(src)
	new /obj/random/rations(src)
	new /obj/random/pouch/hardcase_scrap/low_chance(src)
	new /obj/random/cluster/roaches(src)
	if(prob(30))
		new /obj/random/gun_parts/frames(src)

// Used for scrap beacon
/obj/structure/closet/random_hostilemobs/beacon/populate_contents()
	new /obj/random/pack/rare(src) //To reward players for fighting this bullshit
	new /obj/random/pack/rare(src)
	new /obj/random/gun_parts/low(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/lowkeyrandom/low_chance(src)
	new /obj/random/pouch/hardcase_scrap/low_chance(src)
	new /obj/random/rations(src)
	new /obj/random/rations(src)
	new /obj/random/rations(src)
	new /obj/random/cluster/roaches/beacon(src)
	if(prob(15))
		new /obj/random/gun_parts/frames(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
