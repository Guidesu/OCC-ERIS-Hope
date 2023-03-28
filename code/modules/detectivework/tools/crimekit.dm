//crime scene kit
/obj/item/storage/briefcase/crimekit
	name = "crime scene kit"
	desc = "A stainless steel-plated carrycase for all your forensic needs. Feels heavy and has a hook on the back that allows for easy belt storage."
	icon = 'icons/obj/forensics.dmi'
	icon_state = "case"
	item_state = "case"
	storage_slots = 21 //Should be used for detecive work only, 3 rows of storage
	slot_flags = SLOT_BELT //This one is techinnally meant to be on a detective at all times
	price_tag = 50
<<<<<<< HEAD
	rarity_value = 20
	spawn_frequency = 10
	spawn_blacklisted = FALSE
	spawn_tags = SPAWN_TAG_BOX//CUIDADO
=======
	can_hold = list(/obj/item/forensics,
					/obj/item/storage/box/swabs,
					/obj/item/storage/box/fingerprints,
					/obj/item/storage/box/evidence,
					/obj/item/reagent_containers,
					/obj/item/device,
					/obj/item/evidencebag,
					/obj/item/taperoll,
					/obj/item/pen,
					/obj/item/storage/fancy/crayons,
					/obj/item/clothing/gloves,
					/obj/item/clothing/glasses,
					/obj/item/photo,
					/obj/item/storage/photo_album,
					/obj/item/flame/lighter,
					/obj/item/sample)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/briefcase/crimekit/populate_contents()
	new /obj/item/storage/box/swabs(src)
	new /obj/item/storage/box/fingerprints(src)
<<<<<<< HEAD
	new /obj/item/reagent_containers/spray/luminol(src)
	new /obj/item/device/uv_light(src)
	new /obj/item/forensics/sample_kit(src)
	new /obj/item/forensics/sample_kit/powder(src)
=======
	new /obj/item/storage/box/evidence(src)
	new /obj/item/reagent_containers/spray/luminol(src)
	new /obj/item/device/uv_light(src)
	new /obj/item/forensics/sample_kit(src)
	new /obj/item/forensics/sample_kit/powder(src)
	new /obj/item/device/bullet_scanner(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
