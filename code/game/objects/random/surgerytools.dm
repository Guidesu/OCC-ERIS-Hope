/obj/spawner/surgery_tool
	name = "random surgery tool"
	icon_state = "meds-blue"
	tags_to_spawn = list(SPAWN_SURGERY_TOOL)

<<<<<<< HEAD
/obj/spawner/surgery_tool/low_chance
=======
/obj/random/surgery_tool/item_to_spawn()
	return pick(/obj/item/tool/bonesetter,\
				/obj/item/tool/scalpel,\
				/obj/item/tool/scalpel/advanced,\
				/obj/item/tool/scalpel/laser,\
				/obj/item/tool/tape_roll/bonegel,\
				/obj/item/tool/cautery,\
				/obj/item/tool/retractor,\
				/obj/item/tool/saw/circular,\
				/obj/item/tool/hemostat)

/obj/random/surgery_tool/low_chance
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "low chance random surgery tool"
	icon_state = "meds-blue-low"
	spawn_nothing_percentage = 60
