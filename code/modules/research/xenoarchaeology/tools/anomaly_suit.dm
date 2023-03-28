<<<<<<< HEAD
// hazard suit, maint version. Replaces old excavation suit.
/obj/item/clothing/head/space/void/hazardhelmet
	name = "hazard helmet"
	desc = "An orange helmet with a wide visor that still somehow hides your face. Integrated heads-up display seems to be broken."
	icon_state = "hev_orange_helmet"
	item_state = "hev_orange_helmet"
	matter = list(MATERIAL_GLASS = 5, MATERIAL_STEEL = 5)
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(
		melee = 30,
		bullet = 25,
		energy = 40,
		bomb = 50,
		bio = 100,
		rad = 100
	)
	siemens_coefficient = 0

/obj/item/clothing/suit/space/void/hazardsuit
	name = "hazard voidsuit"
	desc = "A sleek orange voidsuit capable of protecting its user against most hostile environment conditions. Morphine not included!"
	icon_state = "hev_orange"
	item_state = "hev_orange"
	origin_tech = list(TECH_MATERIAL = 1, TECH_MAGNET = 1)
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_PLASTIC = 10, MATERIAL_STEEL = 10)
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(
		melee = 30,
		bullet = 25,
		energy = 40,
		bomb = 50,
		bio = 100,
		rad = 100
	)
	siemens_coefficient = 0 // It would be funny get electrocuted to death in a suit that supposed to protect against shocks
	helmet = /obj/item/clothing/head/space/void/hazardhelmet


// hazard suit, moebius version.
/obj/item/clothing/head/space/void/hazardhelmet/moebius
	name = "moebius hazard helmet"
	desc = "A moebius branded violet voidsuit helmet with a large visor that hides your face. Integrated heads-up display not included."
	icon_state = "hev_violet_helmet"
	item_state = "hev_violet_helmet"
	spawn_blacklisted = TRUE

/obj/item/clothing/suit/space/void/hazardsuit/moebius
	name = "moebius hazard voidsuit"
	desc = "A moebius branded violet voidsuit that is capable of protecting its user against most hostile environment conditions, including anomalous particles. Integrated self-diagnostics system not included!"
	icon_state = "hev_violet"
	item_state = "hev_violet"
	spawn_blacklisted = TRUE
	helmet = /obj/item/clothing/head/space/void/hazardhelmet/moebius
=======
/obj/item/clothing/suit/space/anomaly
	name = "Expedition suit"
	desc = "A pressure resistant expedition suit partially capable of insulating against exotic alien energies and a myriad of other things. Much like a waterbear, it has defenses against many forms of nonconventional death- at the expense of zero defense against dying normally."
	icon_state = "anomaly_suit"
	item_state = "anomaly_suit"
	slowdown = 0
	armor_list = list(melee = 5, bullet = 5, energy = 25, bomb = 0, bio = 100, rad = 100)
	allowed = list(/obj/item/device/lighting/toggleable/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit)

/obj/item/clothing/head/helmet/space/anomaly
	name = "Expedition hood"
	desc = "A pressure resistant expedition hood partially capable of insulating against exotic alien energies and a myriad of other things. Much like a waterbear, it has defenses against many forms of nonconventional death- at the expense of zero defense against dying normally."
	icon_state = "cespace_helmet"
	item_state = "cespace_helmet"
	armor_list = list(melee = 5, bullet = 5, energy = 25, bomb = 0, bio = 100, rad = 100)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
