/datum/design/research/item/powercell
	build_type = AUTOLATHE | PROTOLATHE | MECHFAB
	category = CAT_POWER

/datum/design/research/item/powercell/AssembleDesignDesc()
	if(build_path)
		var/obj/item/cell/C = build_path
		desc = "Allows the construction of [initial(C.autorecharging) ? "microreactor" : "power"] cells that can hold [initial(C.maxcharge)] units of energy."

/datum/design/research/item/powercell/large/basic
<<<<<<< HEAD
	name = "Power-Geyser 2000L"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/large/moebius
	sort_string = "DAAAA"

/datum/design/research/item/powercell/large/high
	name = "Power-Geyser 7000L"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/large/moebius/high
	sort_string = "DAAAB"

/datum/design/research/item/powercell/large/super
	name = "Power-Geyser 13000L"
	build_path = /obj/item/cell/large/moebius/super
	sort_string = "DAAAC"

/datum/design/research/item/powercell/large/hyper
	name = "Power-Geyser 18000L"
	build_path = /obj/item/cell/large/moebius/hyper
	sort_string = "DAAAD"

/datum/design/research/item/powercell/medium/basic
	name = "Power-Geyser 700M"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/medium/moebius
	sort_string = "DAAAF"

/datum/design/research/item/powercell/medium/high
	name = "Power-Geyser 900M"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/medium/moebius/high
	sort_string = "DAAAI"

/datum/design/research/item/powercell/medium/super
	name = "Power-Geyser 1000M"
	build_path = /obj/item/cell/medium/moebius/super
	sort_string = "DAAAO"

/datum/design/research/item/powercell/medium/hyper
	name = "\"Power-Geyser 1300M\""
	build_path = /obj/item/cell/medium/moebius/hyper
	sort_string = "DAAAP"

/datum/design/research/item/powercell/small/basic
	name = "Power-Geyser 120S"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/small/moebius
	sort_string = "DAAAQ"

/datum/design/research/item/powercell/small/high
	name = "Power-Geyser 250S"
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/small/moebius/high
	sort_string = "DAAAV"

/datum/design/research/item/powercell/small/super
	name = "Power-Geyser 300S"
	build_path = /obj/item/cell/small/moebius/super
	sort_string = "DAAAW"

/datum/design/research/item/powercell/small/hyper
	name = "Power-Geyser 400S"
	build_path = /obj/item/cell/small/moebius/hyper
	sort_string = "DAAAX"

/datum/design/research/item/powercell/large/nuclear
	name = "Atomcell 13000L"
	build_path = /obj/item/cell/large/moebius/nuclear
	sort_string = "DAAAZ"

/datum/design/research/item/powercell/medium/nuclear
	name = "Atomcell 1000M"
	build_path = /obj/item/cell/medium/moebius/nuclear
	sort_string = "DAABA"

/datum/design/research/item/powercell/small/nuclear
	name = "Atomcell 300S"
	build_path = /obj/item/cell/small/moebius/nuclear
	sort_string = "DAABB"
=======
	name = "Soteria \"Power-Geyser 2000L\""
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/large/moebius

/datum/design/research/item/powercell/large/high
	name = "Soteria \"Power-Geyser 8000L\""
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/large/moebius/high

/datum/design/research/item/powercell/large/super
	name = "Soteria \"Power-Geyser 14000L\""
	build_path = /obj/item/cell/large/moebius/super

/datum/design/research/item/powercell/large/hyper
	name = "Soteria \"Power-Geyser 18000L\""
	build_path = /obj/item/cell/large/moebius/hyper

/datum/design/research/item/powercell/medium/basic
	name = "Soteria \"Power-Geyser 800M\""
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/medium/moebius

/datum/design/research/item/powercell/medium/high
	name = "Soteria \"Power-Geyser 1000M\""
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/medium/moebius/high

/datum/design/research/item/powercell/medium/super
	name = "Soteria \"Power-Geyser 1200M\""
	build_path = /obj/item/cell/medium/moebius/super

/datum/design/research/item/powercell/medium/hyper
	name = "Soteria \"Power-Geyser 1400M\""
	build_path = /obj/item/cell/medium/moebius/hyper

/datum/design/research/item/powercell/small/basic
	name = "Soteria \"Power-Geyser 120S\""
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/small/moebius

/datum/design/research/item/powercell/small/high
	name = "Soteria \"Power-Geyser 250S\""
	build_type = PROTOLATHE | MECHFAB
	build_path = /obj/item/cell/small/moebius/high

/datum/design/research/item/powercell/small/super
	name = "Soteria \"Power-Geyser 300S\""
	build_path = /obj/item/cell/small/moebius/super

/datum/design/research/item/powercell/small/hyper
	name = "Soteria \"Power-Geyser 400S\""
	build_path = /obj/item/cell/small/moebius/hyper

/datum/design/research/item/powercell/large/omega
	name = "Soteria \"Omega-Geyser 20000L\""
	build_path = /obj/item/cell/large/moebius/omega

/datum/design/research/item/powercell/medium/omega
	name = "Soteria \"Omega-Geyser 1600M\""
	build_path = /obj/item/cell/medium/moebius/omega

/datum/design/research/item/powercell/small/omega
	name = "Soteria \"Omega-Geyser 500S\""
	build_path = /obj/item/cell/small/moebius/omega

/datum/design/research/item/powercell/large/nuclear
	name = "Soteria \"Atomcell 14000L\""
	build_path = /obj/item/cell/large/moebius/nuclear

/datum/design/research/item/powercell/medium/nuclear
	name = "Soteria \"Atomcell 1000M\""
	build_path = /obj/item/cell/medium/moebius/nuclear

/datum/design/research/item/powercell/small/nuclear
	name = "Soteria \"Atomcell 300S\""
	build_path = /obj/item/cell/small/moebius/nuclear

/datum/design/research/item/powercell/small/nuclear/pda
	name = "Soteria \"Atomcell 50S\""
	build_path = /obj/item/cell/small/moebius/pda

//Magic rock cell

/datum/design/research/item/powercell/large/ameridian
	name = "Soteria \"Ameridian 20000L\""
	build_path = /obj/item/cell/large/ameridian
	chemicals = list(MATERIAL_AMERIDIAN = 120) //Beakers worth on top of normal cell costs

//Hand crank for cells
/datum/design/research/item/hand_charger
	name = "Soteria \"Hand Crank\""
	build_path = /obj/item/device/manual_charger
	category = CAT_POWER
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
