/decl/hierarchy/outfit/job/assistant
<<<<<<< HEAD
	name = OUTFIT_JOB_NAME(ASSISTANT_TITLE)
	suit = /obj/item/clothing/suit/storage/ass_jacket
=======
	name = OUTFIT_JOB_NAME("Assistant")
	suit = /obj/item/clothing/suit/storage/rank/ass_jacket
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	uniform = /obj/item/clothing/under/rank/assistant

/decl/hierarchy/outfit/job/service
	l_ear = /obj/item/device/radio/headset/headset_service
	hierarchy_type = /decl/hierarchy/outfit/job/service

/decl/hierarchy/outfit/job/service/bartender
	name = OUTFIT_JOB_NAME("Lonestar - Bartender")
	uniform = /obj/item/clothing/under/rank/bartender
<<<<<<< HEAD
	head = /obj/item/clothing/head/that
	id_type = /obj/item/card/id/white
	pda_type = /obj/item/modular_computer/pda/club_worker
	backpack_contents = list(/obj/item/ammo_casing/shotgun/beanbag = 4)


/decl/hierarchy/outfit/job/service/waiter
	name = OUTFIT_JOB_NAME("Waiter")
	uniform = /obj/item/clothing/under/waiter
=======
	head = /obj/item/clothing/head/tophat
	id_type = /obj/item/card/id/white
	pda_type = /obj/item/modular_computer/pda/club_worker

/decl/hierarchy/outfit/job/service/waiter
	name = OUTFIT_JOB_NAME("Lonestar - Waiter")
	uniform = /obj/item/clothing/under/costume/job/waiter
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	id_type = /obj/item/card/id/white
	pda_type = /obj/item/modular_computer/pda/club_worker

/decl/hierarchy/outfit/job/service/chef
	name = OUTFIT_JOB_NAME("Lonestar - Chef")
	uniform = /obj/item/clothing/under/rank/chef
<<<<<<< HEAD
	suit = /obj/item/clothing/suit/chef
	head = /obj/item/clothing/head/chefhat
	id_type = /obj/item/card/id/ltgrey
=======
	suit = /obj/item/clothing/suit/rank/chef
	head = /obj/item/clothing/head/rank/chef
	id_type = /obj/item/card/id/ltgrey
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/service/gardener
	name = OUTFIT_JOB_NAME("Lonestar - Gardener")
	uniform = /obj/item/clothing/under/rank/botanist
	suit = /obj/item/clothing/suit/rank/botanist
	gloves = /obj/item/clothing/gloves/botanic_leather
	id_type = /obj/item/card/id/hydro
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/service/gardener/New()
	..()
	//backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/storage/backpack/hydroponics;
	//backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/storage/backpack/satchel/hyd;


/decl/hierarchy/outfit/job/service/janitor
	name = OUTFIT_JOB_NAME("Lonestar - Janitor")
	uniform = /obj/item/clothing/under/rank/janitor
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	pda_type = /obj/item/modular_computer/pda
	shoes = /obj/item/clothing/shoes/jackboots/janitor
	belt = /obj/item/keys/janitor

<<<<<<< HEAD
/decl/hierarchy/outfit/job/service/actor/clown
	name = OUTFIT_JOB_NAME("Clown")
	uniform = /obj/item/clothing/under/rank/clown
	shoes = /obj/item/clothing/shoes/clown_shoes
	mask = /obj/item/clothing/mask/gas/clown_hat
	l_pocket = /obj/item/bikehorn
	backpack_contents = list(/obj/item/bananapeel = 1, /obj/item/storage/fancy/crayons = 1, /obj/item/toy/waterflower = 1, /obj/item/stamp/clown = 1, /obj/item/handcuffs/fake = 1)
/*
/decl/hierarchy/outfit/job/service/actor/clown/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/storage/backpack/clown
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/storage/backpack/satchel/leather

	OCCULUS EDIT - No clumsiness for actors
/decl/hierarchy/outfit/job/service/actor/clown/post_equip(var/mob/living/carbon/human/H)
=======
/decl/hierarchy/outfit/job/cargo/artist
	name = OUTFIT_JOB_NAME("Lonestar - Artist")
	uniform = /obj/item/clothing/under/rank/artist
	suit = /obj/item/clothing/suit/artist
	shoes = /obj/item/clothing/shoes/artist_shoes
	head = /obj/item/clothing/head/beret/artist
	glasses = /obj/item/clothing/glasses/artist
	mask = /obj/item/clothing/mask/gas/artist_hat
	l_pocket = /obj/item/bikehorn
	backpack_contents = list(/obj/item/storage/hcases/scrap/job_artist = 1)

/decl/hierarchy/outfit/job/cargo/artist/clown/post_equip(var/mob/living/carbon/human/H)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()
	H.mutations.Add(CLUMSY)
*/
