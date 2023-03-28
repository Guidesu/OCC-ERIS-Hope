/decl/hierarchy/outfit/job/medical
	hierarchy_type = /decl/hierarchy/outfit/job/medical
	l_ear = /obj/item/device/radio/headset/headset_med
	shoes = /obj/item/clothing/shoes/reinforced/medical
	id_type = /obj/item/card/id/med
<<<<<<< HEAD
	pda_type = /obj/item/modular_computer/pda/moebius/medical
=======
	pda_type = /obj/item/modular_computer/pda/science/medical
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/medical/cmo
<<<<<<< HEAD
	name = OUTFIT_JOB_NAME("Chief Medical Officer")
	l_ear  =/obj/item/device/radio/headset/heads/cmo
	uniform = /obj/item/clothing/under/rank/moebius_biolab_officer
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/cmo
	l_hand = /obj/item/storage/firstaid/adv
	r_pocket = /obj/item/device/lighting/toggleable/flashlight/pen
=======
	name = OUTFIT_JOB_NAME("Soteria - Biolab Overseer")
	l_ear  =/obj/item/device/radio/headset/heads/cmo
	uniform = /obj/item/clothing/under/rank/moebius_biolab_officer
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/cmo
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	id_type = /obj/item/card/id/cmo
	pda_type = /obj/item/modular_computer/pda/heads/cmo
	r_ear  = /obj/item/reagent_containers/syringe/large
	belt = /obj/item/storage/belt/medical
	glasses = /obj/item/clothing/glasses/hud/health
	backpack_contents = list(/obj/item/storage/hcases/med/medical_job_cbo = 1)

/decl/hierarchy/outfit/job/medical/doctor
<<<<<<< HEAD
	name = OUTFIT_JOB_NAME("Medical Doctor")
	uniform = /obj/item/clothing/under/rank/medical
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	l_hand = /obj/item/storage/firstaid/adv
	r_pocket = /obj/item/device/lighting/toggleable/flashlight/pen

/decl/hierarchy/outfit/job/medical/chemist
	name = OUTFIT_JOB_NAME("Pharmacist")
	uniform = /obj/item/clothing/under/rank/chemist
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/chemist
	id_type = /obj/item/card/id/chem
	pda_type = /obj/item/modular_computer/pda/moebius/chemistry

/decl/hierarchy/outfit/job/medical/chemist/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/storage/backpack/orange/chemist;
	backpack_overrides[/decl/backpack_outfit/backsport]     = /obj/item/storage/backpack/sport/orange;
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/storage/backpack/satchel/orange/chemist;

/decl/hierarchy/outfit/job/medical/psychiatrist
	name = OUTFIT_JOB_NAME("Psychiatrist")
=======
	name = OUTFIT_JOB_NAME("Soteria - Medical Doctor")
	uniform = /obj/item/clothing/under/rank/medical
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	r_ear  = /obj/item/reagent_containers/syringe/large
	belt = /obj/item/storage/belt/medical
	backpack_contents = list(/obj/item/storage/hcases/med/medical_job = 1)

/decl/hierarchy/outfit/job/medical/recovery_team
	name = OUTFIT_JOB_NAME("Soteria - Recovery Team")
	uniform = /obj/item/clothing/under/rank/paramedic
	id_type = /obj/item/card/id/med
	pda_type = /obj/item/modular_computer/pda/science/medical
	suit =  /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/jackboots
	belt = /obj/item/storage/belt/medical/emt
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
	head = /obj/item/clothing/head/soft/medical
	r_ear  = /obj/item/reagent_containers/syringe/large
	l_pocket = /obj/item/device/flash
	r_pocket = /obj/item/handcuffs
	backpack_contents = list(/obj/item/storage/hcases/med/medical_job_trama = 1) // Weapon selection moved inside the hardcase.

/decl/hierarchy/outfit/job/medical/psychiatrist
	name = OUTFIT_JOB_NAME("Soteria - Psychiatrist")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	uniform = /obj/item/clothing/under/rank/psych
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	r_ear  = /obj/item/reagent_containers/syringe/large
	backpack_contents = list(/obj/item/storage/hcases/med/medical_job_psyco = 1)

<<<<<<< HEAD
/decl/hierarchy/outfit/job/medical/paramedic
	name = OUTFIT_JOB_NAME("Paramedic")
	uniform = /obj/item/clothing/under/rank/paramedic
	suit = /obj/item/clothing/suit/storage/hazardvest/black
	shoes = /obj/item/clothing/shoes/jackboots
	l_hand = /obj/item/storage/firstaid/adv
	belt = /obj/item/storage/belt/medical/emt
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
=======
/decl/hierarchy/outfit/job/medical/doctor/medStudent
	name = OUTFIT_JOB_NAME("Soteria - Soteria Medical Student")
	suit =  /obj/item/clothing/suit/armor/vest

/decl/hierarchy/outfit/job/medical/doctor/medNurse
	name = OUTFIT_JOB_NAME("Soteria - Soteria Nurse")

/decl/hierarchy/outfit/job/medical/doctor/medERPhys
	name = OUTFIT_JOB_NAME("Soteria - Soteria Emergency Physician")

/decl/hierarchy/outfit/job/medical/doctor/medSurgeon
	name = OUTFIT_JOB_NAME("Soteria - Soteria Medical Surgeon")
	suit = /obj/item/clothing/suit/storage/hazardvest
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
