/decl/hierarchy/outfit/job/science
	hierarchy_type = /decl/hierarchy/outfit/job/science
	l_ear = /obj/item/device/radio/headset/headset_sci
	uniform = /obj/item/clothing/under/rank/scientist
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/science
	shoes = /obj/item/clothing/shoes/jackboots
<<<<<<< HEAD
	pda_type = /obj/item/modular_computer/pda/moebius/science
=======
	pda_type = /obj/item/modular_computer/pda/science/science
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	id_type = /obj/item/card/id/sci

/decl/hierarchy/outfit/job/science/New()
	..()
	BACKPACK_OVERRIDE_RESEARCH

/decl/hierarchy/outfit/job/science/rd
<<<<<<< HEAD
	name = OUTFIT_JOB_NAME("Chief Science Officer")
	l_ear = /obj/item/device/radio/headset/heads/rd
	shoes = /obj/item/clothing/shoes/reinforced
	uniform = /obj/item/clothing/under/rank/expedition_overseer
=======
	name = OUTFIT_JOB_NAME("Soteria - Expedition Overseer")
	l_ear = /obj/item/device/radio/headset/heads/rd
	shoes = /obj/item/clothing/shoes/reinforced
	uniform = /obj/item/clothing/under/rank/expedition_overseer
	belt = /obj/item/storage/belt/utility/roboticist
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	l_hand = /obj/item/clipboard
	id_type = /obj/item/card/id/rd
	pda_type = /obj/item/modular_computer/pda/heads/rd
	backpack_contents = list(/obj/item/oddity/secdocs = 1)

/decl/hierarchy/outfit/job/science/scientist
<<<<<<< HEAD
	name = OUTFIT_JOB_NAME("Scientist")

/decl/hierarchy/outfit/job/science/xenobiologist
	name = OUTFIT_JOB_NAME("Xenobiologist")

/decl/hierarchy/outfit/job/science/roboticist
	name = OUTFIT_JOB_NAME("Roboticist")
	uniform = /obj/item/clothing/under/rank/roboticist
	suit = /obj/item/clothing/suit/storage/robotech_jacket
	belt = /obj/item/storage/belt/utility/full
	pda_slot = slot_r_store
	id_type = /obj/item/card/id/dkgrey
	pda_type = /obj/item/modular_computer/pda/moebius/roboticist
	l_hand = /obj/item/storage/toolbox/mechanical
=======
	name = OUTFIT_JOB_NAME("Soteria - Scientist")

/decl/hierarchy/outfit/job/science/xenobiologist
	name = OUTFIT_JOB_NAME("Soteria - Xenobiologist")

/decl/hierarchy/outfit/job/science/roboticist
	name = OUTFIT_JOB_NAME("Soteria - Roboticist")
	uniform = /obj/item/clothing/under/rank/roboticist
	suit = /obj/item/clothing/suit/storage/rank/robotech_jacket
	belt = /obj/item/storage/belt/utility/roboticist
	pda_slot = slot_r_store
	id_type = /obj/item/card/id/dkgrey
	pda_type = /obj/item/modular_computer/pda/science/roboticist
	backpack_contents = list(/obj/item/hydrogen_fuel_cell = 1)
	l_pocket = /obj/item/device/robotanalyzer
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/decl/hierarchy/outfit/job/science/roboticist/New()
	..()
	backpack_overrides.Cut()
