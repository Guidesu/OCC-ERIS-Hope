// For items that are not pickable
/datum/design/research/structure/bidon
<<<<<<< HEAD
	build_type = AUTOLATHE | PROTOLATHE	// here should be machine that prints structures
=======
	build_type = AUTOLATHE | PROTOLATHE// here should be machine that prints structures
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/design/research/structure/bidonadv
	build_type = AUTOLATHE | PROTOLATHE

<<<<<<< HEAD
/datum/design/research/structure/bidon
	name = "B.I.D.O.N. canister"
	desc = "Bulk Industrial Dispenser Omnitech-Nanochem. A canister with acid-resistant linings intended for handling big volumes."
	build_path = /obj/structure/reagent_dispensers/bidon
	sort_string = "VAAAK"

/datum/design/research/structure/bidonadv
	name = "stasis B.I.D.O.N. canister"
	desc = "An advanced B.I.D.O.N. canister with stasis function."
	build_path = /obj/structure/reagent_dispensers/bidon/advanced
	sort_string = "VAAAL"
=======
/datum/design/research/structure/bidontrigger
	build_type = AUTOLATHE | PROTOLATHE

/datum/design/research/structure/solar
	build_type = AUTOLATHE | PROTOLATHE

/datum/design/research/structure/bidon
	name = "B.I.D.O.N. Canister"
	desc = "Bulk Industrial Dispenser Omnitech-Nanochem. A canister with acid-resistant linings intended for handling big volumes of chemicals."
	build_path = /obj/structure/reagent_dispensers/bidon
	category = "Medical"
	materials = list(MATERIAL_STEEL = 15, MATERIAL_GLASS = 5)

/datum/design/research/structure/bidonadv
	name = "Stasis B.I.D.O.N. Canister"
	desc = "An advanced B.I.D.O.N. canister with stasis function."
	build_path = /obj/structure/reagent_dispensers/bidon/advanced
	category = "Medical"
	materials = list(MATERIAL_STEEL = 25, MATERIAL_GLASS = 15)

/datum/design/research/structure/bidontrigger
	name = "Trigger-Stasis B.I.D.O.N. Canister"
	desc = "An advanced B.I.D.O.N. canister with stasis function that can be temporarily disabled with a multitool."
	build_path = /obj/structure/reagent_dispensers/bidon/trigger
	category = "Medical"
	materials = list(MATERIAL_STEEL = 25, MATERIAL_GLASS = 15)

/datum/design/research/structure/solar
	name = "Solar Assembly Panel"
	desc = "Simple yet hard to produce solar assembly."
	build_path = /obj/item/solar_assembly
	category = CAT_POWER
	materials = list(MATERIAL_STEEL = 5, MATERIAL_GLASS = 5)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
