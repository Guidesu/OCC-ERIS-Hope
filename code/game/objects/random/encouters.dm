#define DAMAGE_POWER_TRANSFER 450 //used to transfer power to containment field generators
#define ENCOUTER_PROBALITY 100

<<<<<<< HEAD
/obj/spawner/encouter
	exclusion_paths = list(/obj/spawner/encouter)
	spawn_tags = SPAWN_TAG_SPAWNER_ENCOUNER
	tags_to_spawn = list(SPAWN_SPAWNER_ENCOUNER)
=======
/obj/random/encouter
	spawn_nothing_percentage = 0
	var/list/obj/random/spawner/encouter/encouters = list(/obj/random/spawner/encouter/mine, /obj/random/spawner/encouter/miningbot, /obj/random/spawner/encouter/strangebeacon, \
	/obj/random/spawner/encouter/satellite, /obj/random/spawner/encouter/coffin, /obj/random/spawner/encouter/omnius)

/obj/random/encouter/item_to_spawn()
	..()
	return pick(encouters)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

///////ENCOUTERS
//////////////////////

<<<<<<< HEAD
/obj/spawner/encouter/mine
	tags_to_spawn = list(SPAWN_MINE)

/obj/spawner/encouter/miningbot
	allow_blacklist = TRUE
	tags_to_spawn = list(SPAWN_BOT_OS)

/obj/spawner/encouter/strangebeacon
	tags_to_spawn = list(SPAWN_STRANGEBEACON)

/obj/spawner/encouter/cryopod
	tags_to_spawn = list(SPAWN_ENCOUNTER_CRYOPOD)

/obj/spawner/encouter/satellite
	tags_to_spawn = list(SPAWN_SATELITE)

/obj/spawner/encouter/coffin
	allow_blacklist = TRUE
	tags_to_spawn = list(SPAWN_CLOSET_COFFIN)

/obj/spawner/encouter/omnius
	tags_to_spawn = list(SPAWN_OMINOUS)
=======
/obj/random/spawner/encouter
	spawn_nothing_percentage = 0
	var/justspawn = TRUE
	var/list/obj/randspawn = list()

/obj/random/spawner/encouter/item_to_spawn()
	..()
	if(justspawn == TRUE)
		return pick(randspawn)

/obj/random/spawner/encouter/mine
	randspawn = list(/obj/structure/mine/mine_no_primer, /obj/item/mine, /obj/structure/mine/mine_scraps)

/obj/random/spawner/encouter/miningbot
	randspawn = list(/mob/living/bot/miningonestar/resources, /mob/living/bot/miningonestar/resources/agressive, /mob/living/bot/miningonestar/resources/agressive/with_support, \
	/mob/living/bot/miningonestar/resources/in_work)

/obj/random/spawner/encouter/strangebeacon
	randspawn = list(/obj/structure/strangebeacon, /obj/structure/strangebeacon/bots, /obj/structure/strangebeacon/pods, \
	/obj/structure/strangebeacon/bombard)

/* - Unused spawners. If you want to re-add a cryopod system use ghostspawner.dm ones
/obj/random/spawner/encouter/cryopod
	randspawn = list(/obj/structure/cryopod_spawner/ironhammer, /obj/structure/cryopod_spawner/medical, /obj/structure/cryopod_spawner/technomancer, \
	/obj/structure/cryopod_spawner/serbian)
*/
/obj/random/spawner/encouter/satellite
	randspawn = list(/obj/structure/satellite, /obj/structure/satellite/science)

/obj/random/spawner/encouter/coffin
	randspawn = list(/obj/structure/closet/coffin/spawnercorpse)

/obj/random/spawner/encouter/omnius
	randspawn = list(/obj/structure/ominous, /obj/structure/ominous/emitter, /obj/structure/ominous/teleporter)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

///////ENCOUTERS
//////////////////////

