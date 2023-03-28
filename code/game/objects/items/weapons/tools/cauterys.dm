/obj/item/tool/cautery
<<<<<<< HEAD
	name = "cautery"
	desc = "This stops bleeding."
=======
	name = "electrocautery"
	desc = "This tool is used to cauterize open surgical incisions, the finishing touch of all procedures."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "cautery"
	item_state = "cautery"
	matter = list(MATERIAL_STEEL = 5, MATERIAL_GLASS = 2)
	flags = CONDUCT
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	attack_verb = list("burnt")
<<<<<<< HEAD
	tool_qualities = list(QUALITY_CAUTERIZING = 30)
	spawn_tags = SPAWN_TAG_SURGERY_TOOL
=======
	tool_qualities = list(QUALITY_CAUTERIZING = 35)
	price_tag = 40

/obj/item/tool/cautery/adv
	name = "high powered electrocautery"
	icon_state = "cautery_adv"
	desc = "An electrocautery with self-regulating heat transfer capabilities, allowing for quicker and more precise cauterization of surgical incisions."
	matter = list(MATERIAL_STEEL = 12, MATERIAL_GLASS = 4, MATERIAL_PLASTEEL = 1)
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 2)
	tool_qualities = list(QUALITY_CAUTERIZING = 60)
	price_tag = 90

/obj/item/tool/cautery/adv/si
	icon_state = "cautery_SI"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
