/datum/design/research/circuit
	build_type = IMPRINTER
	chemicals = list("silicon" = 5)

/datum/design/research/circuit/AssembleDesignName(atom/temp_atom)
	..()
<<<<<<< HEAD
	var/obj/item/electronics/circuitboard/C = temp_atom
=======
	var/obj/item/circuitboard/C = temp_atom
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!istype(C))
		return

	if(C.board_type == "machine")
		name = "Machine circuit ([item_name])"
	else if(C.board_type == "computer")
		name = "Computer circuit ([item_name])"

/datum/design/research/circuit/AssembleDesignDesc()
	if(!desc)
		desc = "Allows for the construction of \a [item_name] circuit board."

/datum/design/research/circuit/arcade_battle
	name = "battle arcade machine"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/arcade/battle
	sort_string = "MAAAA"
=======
	build_path = /obj/item/circuitboard/arcade/battle
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MISC

/datum/design/research/circuit/arcade_orion_trail
	name = "orion trail arcade machine"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/arcade/orion_trail
	sort_string = "MABAA"
=======
	build_path = /obj/item/circuitboard/arcade/orion_trail
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MISC

/datum/design/research/circuit/secdata
	name = "security records console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/secure_data
=======
	build_path = /obj/item/circuitboard/secure_data
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	sort_string = "DABAA"
	category = CAT_COMP

/datum/design/research/circuit/prisonmanage
	name = "prisoner management console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/prisoner
	sort_string = "DACAA"
=======
	build_path = /obj/item/circuitboard/prisoner
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/med_data
	name = "medical records console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/med_data
	sort_string = "FAAAA"
=======
	build_path = /obj/item/circuitboard/med_data
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/operating
	name = "patient monitoring console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/operating
	sort_string = "FACAA"
=======
	build_path = /obj/item/circuitboard/operating
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/scan_console
	name = "DNA machine"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/scan_consolenew
	sort_string = "FAGAA"
=======
	build_path = /obj/item/circuitboard/scan_consolenew
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MEDI

/datum/design/research/circuit/sleeper
	name = "Sleeper"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/sleeper
	sort_string = "FAGAB"
=======
	build_path = /obj/item/circuitboard/sleeper
	category = CAT_MEDI

/datum/design/research/circuit/autodoc
	name = "Autodoc"
	build_path = /obj/item/circuitboard/autodoc
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MEDI

/datum/design/research/circuit/clonepod
	name = "clone pod"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/clonepod
	sort_string = "FAGAE"
=======
	build_path = /obj/item/circuitboard/clonepod
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MEDI

/datum/design/research/circuit/clonescanner
	name = "cloning scanner"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/clonescanner
	sort_string = "FAGAG"
=======
	build_path = /obj/item/circuitboard/clonescanner
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MEDI

/datum/design/research/circuit/chemmaster
	name = "ChemMaster 3000"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/chemmaster
	sort_string = "FAHAA"
=======
	build_path = /obj/item/circuitboard/chemmaster
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MEDI

/datum/design/research/circuit/chem_heater
	name = "Chemical Heater"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/chem_heater
	sort_string = "FAHAB"
=======
	build_path = /obj/item/circuitboard/chem_heater
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MEDI

/datum/design/research/circuit/chemical_dispenser
	name = "Chemical Dispenser"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/chemical_dispenser
	sort_string = "FAHAC"
	category = CAT_MEDI

/datum/design/research/circuit/chemical_dispenser_industrial
	name = "Industrial Chemical Dispenser"
	build_path = /obj/item/electronics/circuitboard/chemical_dispenser/industrial
	sort_string = "FAHAD"
	category = CAT_MEDI

/datum/design/research/circuit/chemical_dispenser_soda
	name = "Soda Chemical Dispenser"
	build_path = /obj/item/electronics/circuitboard/chemical_dispenser/soda
	sort_string = "FAHAE"
	category = CAT_MISC

/datum/design/research/circuit/chemical_dispenser_beer
	name = "Beer Chemical Dispenser"
	build_path = /obj/item/electronics/circuitboard/chemical_dispenser/beer
	sort_string = "FAHAF"
	category = CAT_MISC

/datum/design/research/circuit/teleconsole
	name = "teleporter control console"
	build_path = /obj/item/electronics/circuitboard/teleporter
	sort_string = "HAAAA"
=======
	build_path = /obj/item/circuitboard/chemical_dispenser
	category = CAT_MEDI

/datum/design/research/circuit/teleconsole
	name = "teleporter control console"
	build_path = /obj/item/circuitboard/teleporter
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_BLUE

/datum/design/research/circuit/robocontrol
	name = "robotics control console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/robotics
	sort_string = "HAAAB"
	category = CAT_COMP

/datum/design/research/circuit/rdconsole
	name = "R&D control console"
	build_path = /obj/item/electronics/circuitboard/rdconsole
	sort_string = "HAAAE"
=======
	build_path = /obj/item/circuitboard/robotics
	category = CAT_COMP

/datum/design/research/circuit/mechacontrol
	name = "exosuit control console"
	build_path = /obj/item/circuitboard/mecha_control
	category = CAT_COMP

/datum/design/research/circuit/rdconsole
	name = "unlicensed R&D control console"
	build_path = /obj/item/circuitboard/rdconsole_unlicensed
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/aifixer
	name = "AI integrity restorer"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/aifixer
	sort_string = "HAAAF"
=======
	build_path = /obj/item/circuitboard/aifixer
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/comm_monitor
	name = "telecommunications monitoring console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/comm_monitor
	sort_string = "HAACA"
=======
	build_path = /obj/item/circuitboard/comm_monitor
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_TCOM

/datum/design/research/circuit/comm_server
	name = "telecommunications server monitoring console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/comm_server
	sort_string = "HAACB"
=======
	build_path = /obj/item/circuitboard/comm_server
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_TCOM

/datum/design/research/circuit/message_monitor
	name = "messaging monitor console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/message_monitor
	sort_string = "HAACC"
=======
	build_path = /obj/item/circuitboard/message_monitor
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_TCOM

/datum/design/research/circuit/aiupload
	name = "AI upload console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/aiupload
	sort_string = "HAABA"
=======
	build_path = /obj/item/circuitboard/aiupload
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/borgupload
	name = "cyborg upload console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/borgupload
	sort_string = "HAABB"
=======
	build_path = /obj/item/circuitboard/borgupload
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/destructive_analyzer
	name = "destructive analyzer"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/destructive_analyzer
	sort_string = "HABAA"
	category = CAT_COMP

/datum/design/research/circuit/protolathe
	name = "protolathe"
	build_path = /obj/item/electronics/circuitboard/protolathe
=======
	build_path = /obj/item/circuitboard/destructive_analyzer
	category = CAT_COMP

/datum/design/research/circuit/slime_compresser
	name = "slime compresser"
	build_path = /obj/item/circuitboard/slime_compresser
	category = CAT_MACHINE

/datum/design/research/circuit/protolathe
	name = "protolathe"
	build_path = /obj/item/circuitboard/protolathe
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	sort_string = "HABAB"
	category = CAT_MACHINE

/datum/design/research/circuit/circuit_imprinter
	name = "circuit imprinter"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/circuit_imprinter
	sort_string = "HABAC"
=======
	build_path = /obj/item/circuitboard/circuit_imprinter
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MACHINE

/datum/design/research/circuit/autolathe
	name = "autolathe"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/autolathe
	sort_string = "HABAD"
=======
	build_path = /obj/item/circuitboard/autolathe
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MACHINE

/datum/design/research/circuit/rdservercontrol
	name = "R&D server control console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/rdservercontrol
	sort_string = "HABBA"
=======
	build_path = /obj/item/circuitboard/rdservercontrol
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/rdserver
	name = "R&D server"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/rdserver
	sort_string = "HABBB"
=======
	build_path = /obj/item/circuitboard/rdserver
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MACHINE

/datum/design/research/circuit/mechfab
	name = "exosuit fabricator"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/mechfab
	sort_string = "HABAE"
=======
	build_path = /obj/item/circuitboard/mechfab
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MACHINE

/datum/design/research/circuit/mech_recharger
	name = "mech recharger"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/mech_recharger
	sort_string = "HACAA"
=======
	build_path = /obj/item/circuitboard/mech_recharger
	category = CAT_MACHINE

/datum/design/research/circuit/repair_station
	name = "cyborg auto-repair platform"
	build_path = /obj/item/circuitboard/repair_station
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MACHINE

/datum/design/research/circuit/recharge_station
	name = "cyborg recharge station"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/recharge_station
	sort_string = "HACAC"
	category = CAT_MACHINE

/datum/design/research/circuit/repair_station
	name = "cyborg auto-repair platform"
	build_path = /obj/item/electronics/circuitboard/repair_station
	sort_string = "HACAE"
=======
	build_path = /obj/item/circuitboard/recharge_station
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MACHINE

/datum/design/research/circuit/recharger
	name = "recharger"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/recharger
	sort_string = "HACAD"
=======
	build_path = /obj/item/circuitboard/recharger
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_POWER

/datum/design/research/circuit/atmosalerts
	name = "atmosphere alert console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/atmos_alert
	sort_string = "JAAAA"
=======
	build_path = /obj/item/circuitboard/atmos_alert
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/air_management
	name = "atmosphere monitoring console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/air_management
	sort_string = "JAAAB"
=======
	build_path = /obj/item/circuitboard/air_management
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/dronecontrol
	name = "drone control console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/drone_control
	sort_string = "JAAAD"
=======
	build_path = /obj/item/circuitboard/drone_control
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/powermonitor
	name = "power monitoring console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/powermonitor
	sort_string = "JAAAE"
=======
	build_path = /obj/item/circuitboard/powermonitor
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/solarcontrol
	name = "solar control console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/solar_control
	sort_string = "JAAAF"
=======
	build_path = /obj/item/circuitboard/solar_control
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_COMP

/datum/design/research/circuit/pacman
	name = "PACMAN-type generator"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/pacman
	sort_string = "JBAAA"
=======
	build_path = /obj/item/circuitboard/pacman
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_POWER

/datum/design/research/circuit/superpacman
	name = "SUPERPACMAN-type generator"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/pacman/super
	sort_string = "JBAAB"
=======
	build_path = /obj/item/circuitboard/pacman/super
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_POWER

/datum/design/research/circuit/mrspacman
	name = "MRSPACMAN-type generator"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/pacman/mrs
	sort_string = "JBAAC"
=======
	build_path = /obj/item/circuitboard/pacman/mrs
	category = CAT_POWER

/datum/design/research/circuit/miss
	name = "MISS-PACMAN-type generator"
	build_path = /obj/item/circuitboard/pacman/miss
	category = CAT_POWER

/datum/design/research/circuit/camp
	name = "CAMP-PACMAN-type generator"
	build_path = /obj/item/circuitboard/pacman/camp
	category = CAT_POWER

/datum/design/research/circuit/diesel
	name = "diesel-type generator"
	build_path = /obj/item/circuitboard/diesel
	category = CAT_POWER

/datum/design/research/circuit/hydrogen_gen
	name = "hydrogen-type generator"
	build_path = /obj/item/circuitboard/hydrogen_gen
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_POWER

/datum/design/research/circuit/batteryrack
	name = "cell rack PSU"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/batteryrack
	sort_string = "JBABA"
=======
	build_path = /obj/item/circuitboard/batteryrack
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_POWER

/datum/design/research/circuit/smes_cell
	name = "'SMES' superconductive magnetic energy storage"
	desc = "Allows for the construction of circuit boards used to build a SMES."
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/smes
	sort_string = "JBABB"
=======
	build_path = /obj/item/circuitboard/smes
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_POWER

/datum/design/research/circuit/breakerbox
	name = "breaker box"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/breakerbox
	sort_string = "JBABC"
=======
	build_path = /obj/item/circuitboard/breakerbox
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_POWER

/datum/design/research/circuit/gas_heater
	name = "gas heating system"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/unary_atmos/heater
	sort_string = "JCAAA"
=======
	build_path = /obj/item/circuitboard/unary_atmos/heater
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MACHINE

/datum/design/research/circuit/gas_cooler
	name = "gas cooling system"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/unary_atmos/cooler
	sort_string = "JCAAB"
=======
	build_path = /obj/item/circuitboard/unary_atmos/cooler
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MACHINE

/datum/design/research/circuit/secure_airlock
	name = "secure airlock electronics"
	desc =  "Allows for the construction of a tamper-resistant airlock electronics."
<<<<<<< HEAD
	build_path = /obj/item/electronics/airlock/secure
	sort_string = "JDAAA"
	category = CAT_MISC

/datum/design/research/circuit/ordercomp
	name = "supply ordering console"
	build_path = /obj/item/electronics/circuitboard/ordercomp
	sort_string = "KAAAA"
	category = CAT_COMP

/datum/design/research/circuit/supplycomp
	name = "supply control console"
	build_path = /obj/item/electronics/circuitboard/supplycomp
	sort_string = "KAAAB"
	category = CAT_COMP
=======
	build_path = /obj/item/airlock_electronics/secure
	category = CAT_MISC
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/* /datum/design/research/circuit/biogenerator OCCULUS EDIT. Comments out the non-Mekhane Biogenerator for lore reasons
	name = "biogenerator"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/biogenerator
	sort_string = "KBAAA"
	category = CAT_MEDI */

/datum/design/research/circuit/miningdrill
	name = "mining drill head"
	build_path = /obj/item/electronics/circuitboard/miningdrill
	sort_string = "KCAAA"
=======
	build_path = /obj/item/circuitboard/biogenerator
	category = CAT_MACHINE

/datum/design/research/circuit/miningdrill
	name = "mining drill head"
	build_path = /obj/item/circuitboard/miningdrill
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MINING

/datum/design/research/circuit/miningdrillbrace
	name = "mining drill brace"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/miningdrillbrace
	sort_string = "KCAAB"
=======
	build_path = /obj/item/circuitboard/miningdrillbrace
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_MINING

/datum/design/research/circuit/comconsole
	name = "communications console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/communications
	sort_string = "LAAAA"
	category = CAT_COMP

=======
	build_path = /obj/item/circuitboard/communications
	category = CAT_COMP
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

// Telecomms
/datum/design/research/circuit/tcom
	name_category = "telecommunications machinery"
	category = CAT_TCOM

/datum/design/research/circuit/tcom/server
	name = "server mainframe"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/telecomms/server
	sort_string = "PAAAA"

/datum/design/research/circuit/tcom/processor
	name = "processor unit"
	build_path = /obj/item/electronics/circuitboard/telecomms/processor
	sort_string = "PAAAB"

/datum/design/research/circuit/tcom/bus
	name = "bus mainframe"
	build_path = /obj/item/electronics/circuitboard/telecomms/bus
	sort_string = "PAAAC"

/datum/design/research/circuit/tcom/hub
	name = "hub mainframe"
	build_path = /obj/item/electronics/circuitboard/telecomms/hub
	sort_string = "PAAAD"

/datum/design/research/circuit/tcom/relay
	name = "relay mainframe"
	build_path = /obj/item/electronics/circuitboard/telecomms/relay
	sort_string = "PAAAE"

/datum/design/research/circuit/tcom/broadcaster
	name = "subspace broadcaster"
	build_path = /obj/item/electronics/circuitboard/telecomms/broadcaster
	sort_string = "PAAAF"

/datum/design/research/circuit/tcom/receiver
	name = "subspace receiver"
	build_path = /obj/item/electronics/circuitboard/telecomms/receiver
	sort_string = "PAAAG"

/datum/design/research/circuit/ntnet_relay
	name = "NTNet Quantum Relay"
	build_path = /obj/item/electronics/circuitboard/ntnet_relay
	sort_string = "WAAAA"
=======
	build_path = /obj/item/circuitboard/telecomms/server

/datum/design/research/circuit/tcom/processor
	name = "processor unit"
	build_path = /obj/item/circuitboard/telecomms/processor

/datum/design/research/circuit/tcom/bus
	name = "bus mainframe"
	build_path = /obj/item/circuitboard/telecomms/bus

/datum/design/research/circuit/tcom/hub
	name = "hub mainframe"
	build_path = /obj/item/circuitboard/telecomms/hub

/datum/design/research/circuit/tcom/relay
	name = "relay mainframe"
	build_path = /obj/item/circuitboard/telecomms/relay

/datum/design/research/circuit/tcom/broadcaster
	name = "subspace broadcaster"
	build_path = /obj/item/circuitboard/telecomms/broadcaster

/datum/design/research/circuit/tcom/receiver
	name = "subspace receiver"
	build_path = /obj/item/circuitboard/telecomms/receiver

/datum/design/research/circuit/ntnet_relay
	name = "NTNet Quantum Relay"
	build_path = /obj/item/circuitboard/ntnet_relay
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_TCOM

// Shield Generators
/datum/design/research/circuit/shield
	name_category = "shield generator"
	category = CAT_MISC

/datum/design/research/circuit/shield/hull
	name = "hull"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/shield_generator
	sort_string = "VAAAB"
=======
	build_path = /obj/item/circuitboard/shield_generator
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/*
/datum/design/research/circuit/shield/capacitor
	name = "capacitor"
	desc = "Allows for the construction of a shield capacitor circuit board."
<<<<<<< HEAD
	req_tech = list(TECH_MAGNET = 3, TECH_POWER = 4)
	build_path = /obj/item/electronics/circuitboard/shield_cap
	sort_string = "VAAAC"*/

// Long range scanner
/datum/design/research/circuit/lrange_scanner
	name_category = "long range scanner"
	category = CAT_MISC

/datum/design/research/circuit/lrange_scanner/hull
	name = "long range scanner"
	build_path = /obj/item/electronics/circuitboard/long_range_scanner
	sort_string = "VAAAC"
=======
	build_path = /obj/item/circuitboard/shield_cap
*/
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

//BS
/datum/design/research/circuit/telesci/console
	name = "TeleSci Console"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/telesci_console
=======
	build_path = /obj/item/circuitboard/telesci_console
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	sort_string = "VAAAD"
	category = CAT_BLUE

/datum/design/research/circuit/telesci/hub
	name = "TeleSci Pad"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/telesci_pad
	sort_string = "VAAAE"
	category = CAT_BLUE

/datum/design/research/circuit/bssilk/console
	name = "Bluespace Snare Control Console"
	build_path = /obj/item/electronics/circuitboard/bssilk_cons
	sort_string = "VAAAK"
=======
	build_path = /obj/item/circuitboard/telesci_pad
	sort_string = "VAAAE"
	category = CAT_BLUE

/datum/design/research/circuit/telesci/relay
	name = "TeleSci Relay"
	build_path = /obj/item/circuitboard/telesci_relay
	sort_string = "VAAF"
	category = CAT_BLUE

/datum/design/research/circuit/telesci/inhibit
	name = "Teleporter Inhibitor"
	build_path = /obj/item/circuitboard/tele_inhibitor
	sort_string = "VAAQ"
	category = CAT_BLUE

/datum/design/research/circuit/bssilk/console
	name = "Bluespace Snare Control Console"
	build_path = /obj/item/circuitboard/bssilk_cons
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_BLUE

/datum/design/research/circuit/bssilk/hub
	name = "Bluespace Snare Hub"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/bssilk_hub
	sort_string = "VAAAG"
=======
	build_path = /obj/item/circuitboard/bssilk_hub
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_BLUE

/datum/design/research/circuit/teleporter/station
	name = "Teleporter Station"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/teleporterstation
	sort_string = "VAAAO"
=======
	build_path = /obj/item/circuitboard/teleporterstation
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	category = CAT_BLUE

/datum/design/research/circuit/teleporter/hub
	name = "Teleporter Hub"
<<<<<<< HEAD
	build_path = /obj/item/electronics/circuitboard/teleporterhub
	sort_string = "VAAAP"
	category = CAT_BLUE

//Experimental devices
/datum/design/research/circuit/mindswapper
	name = "experimental mind swapper"
	build_path = /obj/item/electronics/circuitboard/mindswapper
	sort_string = "WAAAA"
	category = CAT_MEDI
=======
	build_path = /obj/item/circuitboard/teleporterhub
	category = CAT_BLUE

/*
//Experimental devices
/datum/design/research/circuit/mindswapper
	name = "experimental mind swapper"
	build_path = /obj/item/circuitboard/mindswapper
	category = CAT_MEDI
*/

/datum/design/research/circuit/tesla_turret
	name = "experimental tesla turret"
	build_path = /obj/item/circuitboard/tesla_turret
	category = CAT_POWER

/datum/design/research/circuit/ameridian_refinery
	name = "ameridian refinery"
	build_path = /obj/item/circuitboard/ameridian_refinery
	category = CAT_AMERIDIAN

/datum/design/research/circuit/liquid_ameridian_processor
	name = "liquid ameridian processor"
	build_path = /obj/item/circuitboard/liquid_ameridian_processor
	category = CAT_AMERIDIAN

/datum/design/research/circuit/ameridian_analyzer
	name = "liquid ameridian analyzer"
	build_path = /obj/item/circuitboard/ameridian_analyzer
	category = CAT_AMERIDIAN

/datum/design/research/circuit/ameridianshieldwallgen
	name = "sonic fence generator"
	build_path = /obj/item/circuitboard/ameridianshieldwallgen
	category = CAT_AMERIDIAN



//Industrial Printing

/datum/design/research/circuit/industrial_chems
	name = "Industrial Chem Dispenser"
	build_path = /obj/item/circuitboard/chemical_dispenser/industrial
	category = CAT_MEDI

/datum/design/research/circuit/industrial_autolathe
	name = "Industrial Autolathe"
	build_path = /obj/item/circuitboard/autolathe_industrial
	category = CAT_MACHINE

/datum/design/research/circuit/recharger_industrial
	name = "Industrial Recharger"
	build_path = /obj/item/circuitboard/recharger/industrial
	category = CAT_POWER

/datum/design/research/circuit/industrial_grinder
	name = "Industrial Grinder"
	build_path = /obj/item/circuitboard/industrial_grinder
	category = CAT_MEDI

//Hydro

/datum/design/research/circuit/extractor
	name = "Lysis Isolation Centrifuge"
	build_path = /obj/item/circuitboard/extractor
	category = CAT_MACHINE

/datum/design/research/circuit/seed_extractor
	name = "Seed Extractor"
	build_path = /obj/item/circuitboard/seed_extractor
	category = CAT_MACHINE

/datum/design/research/circuit/editor
	name = "Bioballistic Delivery System"
	build_path = /obj/item/circuitboard/editor
	category = CAT_MACHINE

/*
// Cargo
/datum/design/research/circuit/ordercomp
	name = "supply ordering console"
	build_path = /obj/item/circuitboard/ordercomp
	category = CAT_COMP

/datum/design/research/circuit/supplycomp
	name = "supply control console"
	build_path = /obj/item/circuitboard/supplycomp
	category = CAT_COMP
*/
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
