/obj/item/tool/wrench
	name = "wrench"
	desc = "A wrench with many common uses. Can be usually found in your hand."
	icon_state = "wrench"
	flags = CONDUCT
	force = WEAPON_FORCE_NORMAL
	worksound = WORKSOUND_WRENCHING
	throwforce = WEAPON_FORCE_NORMAL
	origin_tech = list(TECH_MATERIAL = 1, TECH_ENGINEERING = 1)
	matter = list(MATERIAL_STEEL = 3)
	attack_verb = list("bashed", "battered", "bludgeoned", "whacked")
<<<<<<< HEAD
	tool_qualities = list(QUALITY_BOLT_TURNING = 30, QUALITY_HAMMERING = 10)
	rarity_value = 6

/obj/item/tool/wrench/improvised
	name = "sheet spanner"
	desc = "A flat bit of metal with some usefully shaped holes cut into it. Would perform better than a regular wrench with some tool mods investment."
	icon_state = "impro_wrench"
	degradation = 4
	force = WEAPON_FORCE_HARMLESS
	tool_qualities = list(QUALITY_BOLT_TURNING = 20, QUALITY_HAMMERING = 5)
	matter = list(MATERIAL_STEEL = 1)
	max_upgrades = 5 //all makeshift tools get more mods to make them actually viable for mid-late game
	rarity_value = 3
	spawn_tags = SPAWN_TAG_JUNKTOOL
=======
	tool_qualities = list(QUALITY_BOLT_TURNING = 35, QUALITY_HAMMERING = 10)
	price_tag = 25

/obj/item/tool/wrench/bs
	name = "bluespace wrench"
	icon_state = "bs_wrench"
	tool_qualities = list(QUALITY_BOLT_TURNING = 100)

/obj/item/tool/wrench/improvised
	name = "sheet spanner"
	desc = "A piece of metal cut and twisted to grant bolt-turning capabilities. Would perform better than a regular wrench with some tool mods."
	icon_state = "impro_wrench"
	degradation = 4
	force = WEAPON_FORCE_HARMLESS
	tool_qualities = list(QUALITY_BOLT_TURNING = 20, QUALITY_HAMMERING = 10)
	matter = list(MATERIAL_STEEL = 1)
	max_upgrades = 5 //all makeshift tools get more mods to make them actually viable for mid-late game
	price_tag = 5
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/tool/wrench/big_wrench
	name = "big wrench"
	desc = "If everything else failed - bring a bigger wrench."
	icon_state = "big-wrench"
	w_class = ITEM_SIZE_NORMAL
<<<<<<< HEAD
	tool_qualities = list(QUALITY_BOLT_TURNING = 40,QUALITY_HAMMERING = 15)
	matter = list(MATERIAL_STEEL = 4, MATERIAL_PLASTEEL = 1)
	force = WEAPON_FORCE_PAINFUL * 1.2
=======
	tool_qualities = list(QUALITY_BOLT_TURNING = 50, QUALITY_HAMMERING = 30)
	matter = list(MATERIAL_STEEL = 4, MATERIAL_PLASTEEL = 1)
	force = WEAPON_FORCE_DANGEROUS
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	structure_damage_factor = STRUCTURE_DAMAGE_HEAVY
	throwforce = WEAPON_FORCE_PAINFUL
	degradation = 0.7
	max_upgrades = 4
<<<<<<< HEAD
	rarity_value = 24
	spawn_tags = SPAWN_TAG_TOOL_ADVANCED
=======
	price_tag = 225
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
