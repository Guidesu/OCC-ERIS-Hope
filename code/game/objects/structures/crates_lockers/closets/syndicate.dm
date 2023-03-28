/obj/structure/closet/syndicate
	name = "armory closet"
	desc = "Why is this here?"
	icon_state = "syndicate"
<<<<<<< HEAD
	bad_type = /obj/structure/closet/syndicate
	rarity_value = 100

=======
	req_access = list(access_syndicate) //Stop people getting good stuff without access
	locked = TRUE
	secure = TRUE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/structure/closet/syndicate/personal
	desc = "It's a storage unit for operative gear."

/obj/structure/closet/syndicate/personal/populate_contents()
	new /obj/item/tank/jetpack/oxygen(src)
<<<<<<< HEAD
	new /obj/item/clothing/mask/gas/syndicate(src)
=======
	new /obj/item/clothing/mask/gas/tactical(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	new /obj/item/clothing/under/syndicate(src)
	new /obj/item/clothing/suit/space/void/merc(src)
	new /obj/item/tool/crowbar(src)
	new /obj/item/cell/large/high(src)
	new /obj/item/card/id/syndicate(src)
	new /obj/item/tool/multitool(src)
<<<<<<< HEAD
	new /obj/item/shield/energy(src)
=======
	new /obj/item/shield/buckler/energy(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	new /obj/item/clothing/shoes/magboots(src)
	new /obj/item/storage/pouch/pistol_holster(src) // Perhaps this may encourage actually buying pistols.
	new /obj/item/storage/pouch/ammo(src)


/obj/structure/closet/syndicate/suit
	desc = "It's a storage unit for voidsuits."

/obj/structure/closet/syndicate/suit/populate_contents()
	new /obj/item/tank/jetpack/oxygen(src)
	new /obj/item/clothing/shoes/magboots(src)
	new /obj/item/clothing/suit/space/void/merc(src)
<<<<<<< HEAD
	new /obj/item/clothing/mask/gas/syndicate(src)
=======
	new /obj/item/clothing/mask/gas/tactical(src)
	new /obj/item/clothing/head/helmet/space/void/merc(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


/obj/structure/closet/syndicate/nuclear
	desc = "It's a storage unit for nuclear-operative gear."
	spawn_blacklisted = TRUE

/obj/structure/closet/syndicate/nuclear/populate_contents()
<<<<<<< HEAD
	new /obj/item/ammo_magazine/smg(src)
	new /obj/item/ammo_magazine/smg(src)
	new /obj/item/ammo_magazine/smg(src)
	new /obj/item/ammo_magazine/smg(src)
	new /obj/item/ammo_magazine/smg(src)
=======
	new /obj/item/ammo_magazine/smg_35(src)
	new /obj/item/ammo_magazine/smg_35(src)
	new /obj/item/ammo_magazine/smg_35(src)
	new /obj/item/ammo_magazine/smg_35(src)
	new /obj/item/ammo_magazine/smg_35(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	new /obj/item/storage/box/handcuffs(src)
	new /obj/item/storage/box/flashbangs(src)
	new /obj/item/gun/energy/gun(src)
	new /obj/item/gun/energy/gun(src)
	new /obj/item/gun/energy/gun(src)
	new /obj/item/gun/energy/gun(src)
	new /obj/item/gun/energy/gun(src)
	new /obj/item/pinpointer/nukeop(src)
	new /obj/item/pinpointer/nukeop(src)
	new /obj/item/pinpointer/nukeop(src)
	new /obj/item/pinpointer/nukeop(src)
	new /obj/item/pinpointer/nukeop(src)
	var/obj/item/device/radio/uplink/U = new(src)
	U.hidden_uplink.uses = 40
