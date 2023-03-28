/obj/spawner/tank
	name = "random tanks"
	icon_state = "cannister-blue"
	tags_to_spawn = list(SPAWN_TANK_GAS)

<<<<<<< HEAD
/obj/spawner/tank/low_chance
=======
/obj/random/tank/item_to_spawn()
	return pickweight(list(/obj/item/tank/air = 3,\
				/obj/item/tank/anesthetic = 1,\
				/obj/item/tank/emergency_oxygen = 2,\
				/obj/item/tank/emergency_oxygen/double = 2,\
				/obj/item/tank/oxygen/yellow = 2,\
				/obj/item/tank/nitrogen = 1))

/obj/random/tank/low_chance
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "low chance random tank"
	icon_state = "cannister-blue-low"
	spawn_nothing_percentage = 60
