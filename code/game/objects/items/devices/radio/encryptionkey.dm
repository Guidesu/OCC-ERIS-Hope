
/obj/item/device/encryptionkey
	name = "standard encryption key"
	desc = "An encryption key for a radio headset. Contains cypherkeys."
	icon = 'icons/obj/radio.dmi'
	icon_state = "cypherkey"
	item_state = ""
	w_class = ITEM_SIZE_TINY
	slot_flags = SLOT_EARS
	spawn_blacklisted = TRUE
	matter = list(MATERIAL_STEEL = 0.5, MATERIAL_SILVER = 0.5)
	var/translate_binary = 0
	var/translate_hive = 0
	var/syndie = 0
	var/list/channels = list()
<<<<<<< HEAD

/obj/item/device/encryptionkey/attackby(obj/item/W, mob/user)
=======
	matter = list(MATERIAL_STEEL = 1, MATERIAL_PLASTIC = 1)
	preloaded_reagents = list("silicon" = 6, "copper" = 5, "plasticide" = 9)

/obj/item/device/encryptionkey/attackby(obj/item/W as obj, mob/user as mob)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/device/encryptionkey/syndicate
	icon_state = "cypherkey"
	channels = list("Mercenary" = 1)
	origin_tech = list(TECH_COVERT = 3)
	syndie = 1//Signifies that it de-crypts Syndicate transmissions

/obj/item/device/encryptionkey/binary
	icon_state = "cypherkey"
	translate_binary = 1
<<<<<<< HEAD
	origin_tech = list(TECH_COVERT = 3)

/obj/item/device/encryptionkey/headset_sec
	name = "cobalt radio encryption key"
=======
	origin_tech = list(TECH_ILLEGAL = 3)
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2, MATERIAL_SILVER = 2)

/obj/item/device/encryptionkey/headset_bs
	name = "blackshield radio encryption key"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "sec_cypherkey"
	channels = list("Blackshield" = 1)	//Marshal coms taken away due to abuse by regular troopers. Sergeant and CO have maintained theirs.

/obj/item/device/encryptionkey/headset_bs/corps
	name = "corpsman radio encryption key"
	icon_state = "mil_cypherkey"
	channels = list("Blackshield" = 1, "Medical(I)" = 1)

/obj/item/device/encryptionkey/headset_bs/sergeant
	name = "sergeant radio encryption key"
	icon_state = "mil_cypherkey"	//Someone should give this a new sprite at some point and change this text when they do. I'm too lazy to. -Rebel0
	channels = list("Blackshield" = 1, "Marshal" = 1)

/obj/item/device/encryptionkey/headset_mar
	name = "security radio encryption key"
	icon_state = "sec_cypherkey"
	channels = list("Marshal" = 1, "Blackshield" = 1)

/obj/item/device/encryptionkey/headset_eng
<<<<<<< HEAD
	name = "engineering radio encryption key"
=======
	name = "guild radio encryption key"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "eng_cypherkey"
	channels = list("Engineering" = 1)

/obj/item/device/encryptionkey/headset_rob
<<<<<<< HEAD
	name = "robotics radio encryption key"
	icon_state = "rob_cypherkey"
	channels = list("Engineering" = 1, "Science" = 1)

/obj/item/device/encryptionkey/headset_med
	name = "medical radio encryption key"
	icon_state = "med_cypherkey"
	channels = list("Medical" = 1)
=======
	name = "sotiera robotics radio encryption key"
	icon_state = "rob_cypherkey"
	channels = list("Engineering" = 1, "Science" = 1)

/obj/item/device/encryptionkey/headset_church
	name = "church radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Church" = 1)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/device/encryptionkey/headset_church
	name = "Mekhane radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("NT Voice" = 1)

/obj/item/device/encryptionkey/headset_sci
<<<<<<< HEAD
	name = "science radio encryption key"
=======
	name = "soteria science radio encryption key"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "sci_cypherkey"
	channels = list("Science" = 1, "Medical" = 1)

/obj/item/device/encryptionkey/headset_moebius
	name = "soteria medical encryption key"
	icon_state = "med_cypherkey"
	channels = list("Science" = 1, "Medical" = 1, "Medical(I)" = 1)

/obj/item/device/encryptionkey/headset_moebius
	name = "laboratories encryption key"
	icon_state = "sci_cypherkey"
	channels = list("Science" = 1, "Medical" = 1)

/obj/item/device/encryptionkey/headset_com
<<<<<<< HEAD
	name = "command radio encryption key"
=======
	name = "council command radio encryption key"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "com_cypherkey"
	channels = list("Command" = 1)

/obj/item/device/encryptionkey/heads/captain
<<<<<<< HEAD
	name = "captain's encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 0, "NT Voice" = 0, "Science" = 0, "Medical" = 0, "Supply" = 0, "Service" = 0)
=======
	name = "premier's encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Prospector" = 1,  "Engineering" = 0, "Church" = 0, "Science" = 0, "Medical" = 0, "Supply" = 0, "Service" = 0, "Blackshield" = 1, "Marshal" = 1, "Plasmatag B" = 0, "Plasmatag R" = 0, "Plasmatag G" = 0, "Plasmatag Y" = 0)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/device/encryptionkey/heads/ai_integrated
	name = "ai integrated encryption key"
	desc = "Integrated encryption key"
	icon_state = "cap_cypherkey"
<<<<<<< HEAD
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "NT Voice" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "AI Private" = 1)

/obj/item/device/encryptionkey/heads/rd
	name = "chief science officer encryption key"
=======
	channels = list("Command" = 1, "Prospector" = 1,  "Engineering" = 1, "Church" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "AI Private" = 1, "Blackshield" = 1, "Marshal" = 1, "Plasmatag B" = 1, "Plasmatag R" = 1, "Plasmatag G" = 1, "Plasmatag Y" = 1)

/obj/item/device/encryptionkey/heads/rd
	name = "research overseer's encryption key"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "rd_cypherkey"
	channels = list("Science" = 1, "Medical" = 1, "Command" = 1)
	translate_binary = 1

/obj/item/device/encryptionkey/heads/moebius
	name = "biolab overseer's encryption key"
	icon_state = "rd_cypherkey"
	channels = list("Science" = 1, "Medical" = 1, "Medical(I)" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/moebius
	name = "\improper NanoTrasen command encryption key"
	icon_state = "rd_cypherkey"
	channels = list("Science" = 1, "Medical" = 1, "Command" = 1, "AI Private" = 1)

/obj/item/device/encryptionkey/heads/hos
<<<<<<< HEAD
	name = "aegis commander's encryption key"
=======
	name = "security commander's encryption key"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "hos_cypherkey"
	channels = list("Command" = 1, "Blackshield" = 1, "Marshal" = 1)

/obj/item/device/encryptionkey/heads/ce
<<<<<<< HEAD
	name = "chief engineer's encryption key"
=======
	name = "guild master's encryption key"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "ce_cypherkey"
	channels = list("Engineering" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/cmo
<<<<<<< HEAD
	name = "chief medical officer's encryption key"
=======
	name = "biolab overseer's encryption key"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "cmo_cypherkey"
	channels = list("Science" = 1, "Medical" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/hop
<<<<<<< HEAD
	name = "head of personnel's encryption key"
	icon_state = "hop_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 0, "NT Voice" = 0, "Science" = 0, "Medical" = 0, "Supply" = 0, "Service" = 0)

/obj/item/device/encryptionkey/heads/merchant
	name = "trade union merchant radio encryption key"
=======
	name = "steward's encryption key"
	icon_state = "hop_cypherkey"
	channels = list("Command" = 1, "Prospector" = 1,  "Engineering" = 0, "Church" = 0, "Science" = 0, "Medical" = 0, "Supply" = 0, "Service" = 0, "Blackshield" = 1, "Marshal" = 1, "Plasmatag B" = 0, "Plasmatag R" = 0, "Plasmatag G" = 0, "Plasmatag Y" = 0)

/obj/item/device/encryptionkey/heads/merchant
	name = "lonestar executive radio encryption key"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "qm_cypherkey"
	channels = list("Supply" = 1, "Command" = 1, "Service" = 1)

/obj/item/device/encryptionkey/heads/preacher
	name = "prime's radio encryption key"
	icon_state = "preach_cypherkey"
	channels = list("Church" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/preacher
	name = "Mekhane Preacher radio encryption key"
	icon_state = "preach_cypherkey"
	channels = list("NT Voice" = 1, "Command" = 1)

/obj/item/device/encryptionkey/headset_cargo
<<<<<<< HEAD
	name = "trade union member radio encryption key"
=======
	name = "lonestar radio encryption key"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "cargo_cypherkey"
	channels = list("Supply" = 1, "Service" = 1)

/obj/item/device/encryptionkey/headset_service
	name = "lonestar service radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Service" = 1)

/obj/item/device/encryptionkey/headset_pro
	name = "prospector radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Prospector" = 1)

/obj/item/device/encryptionkey/heads/foreman
	name = "prospector radio encryption key"
	icon_state = "qm_cypherkey"
	channels = list("Prospector" = 1, "Command" = 1)

/obj/item/device/encryptionkey/entertainment
	name = "entertainment radio key"
<<<<<<< HEAD
	channels = list("Entertainment" = 1)

//addition to /obj/item/card/id/all_access
/obj/item/device/encryptionkey/heads/admin
	name = "Admin encryption key"
	desc = "Full powers encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "NT Voice" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "AI Private" = 1, "Mercenary" = 1)
=======
	channels = list("Supply" = 1)

/obj/item/device/encryptionkey/headset_blueteam
	name = "entertainment radio key"
	channels = list("Plasmatag B" = 1)

/obj/item/device/encryptionkey/headset_redteam
	name = "entertainment radio key"
	channels = list("Plasmatag R" = 1)

/obj/item/device/encryptionkey/headset_yellowteam
	name = "entertainment radio key"
	channels = list("Plasmatag Y" = 1)

/obj/item/device/encryptionkey/headset_greenteam
	name = "entertainment radio key"
	channels = list("Plasmatag G" = 1)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
