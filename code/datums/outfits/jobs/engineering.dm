/decl/hierarchy/outfit/job/engineering
	hierarchy_type = /decl/hierarchy/outfit/job/engineering
<<<<<<< HEAD
	belt = /obj/item/storage/belt/utility/full
	l_ear = /obj/item/device/radio/headset/headset_eng
	shoes = /obj/item/clothing/shoes/workboots
	gloves = /obj/item/clothing/gloves/thick
=======
	belt = /obj/item/storage/belt/utility/full/guild
	l_ear = /obj/item/device/radio/headset/headset_eng
	r_ear = /obj/item/tool/screwdriver
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/insulated
	suit = /obj/item/clothing/suit/storage/hazardvest
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	pda_slot = slot_l_store
	r_pocket = /obj/item/device/t_scanner
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
	suit_store = /obj/item/gun/matter/launcher/breaker

/decl/hierarchy/outfit/job/engineering/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/engineering/exultant
<<<<<<< HEAD
	name = OUTFIT_JOB_NAME("Chief Engineer")
	head = /obj/item/clothing/head/hardhat/white
	uniform = /obj/item/clothing/under/rank/exultant
	head = /obj/item/clothing/head/hardhat/white
	suit = /obj/item/clothing/suit/storage/te_coat
	l_ear = /obj/item/device/radio/headset/heads/ce
=======
	name = OUTFIT_JOB_NAME("Artificer - Guild Master")
	head = /obj/item/clothing/head/firefighter/chief
	uniform = /obj/item/clothing/under/rank/exultant
	head = /obj/item/clothing/head/firefighter/chief
	l_ear = /obj/item/device/radio/headset/heads/ce
	gloves = /obj/item/clothing/gloves/insulated/guild
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	id_type = /obj/item/card/id/ce
	pda_type = /obj/item/modular_computer/pda/heads/ce

/decl/hierarchy/outfit/job/engineering/engineer
<<<<<<< HEAD
	name = OUTFIT_JOB_NAME("Engineer")
	head = /obj/item/clothing/head/hardhat
	uniform = /obj/item/clothing/under/rank/engineer
	suit = /obj/item/clothing/suit/storage/vest/insulated
=======
	name = OUTFIT_JOB_NAME("Artificer - Guild Adept")
	head = /obj/item/clothing/head/hardhat
	uniform = /obj/item/clothing/under/rank/engineer
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	head = /obj/item/clothing/head/hardhat
	id_type = /obj/item/card/id/engie
	pda_type = /obj/item/modular_computer/pda/engineering

/decl/hierarchy/outfit/job/engineering/engineer/void
<<<<<<< HEAD
	name = OUTFIT_JOB_NAME("Engineer - Voidsuit")
=======
	name = OUTFIT_JOB_NAME("Artificer - Adept Voidsuit")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	mask = /obj/item/clothing/mask/breath
	suit = /obj/item/clothing/suit/space/void/engineering
