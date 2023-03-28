//114 x 114
//165 secs
/obj/procedural/dungenerator
	var/obj/procedural/jp_DungeonGenerator/generate = null //The actual generator.
	var/width_x = 136
	var/height_y = 136

<<<<<<< HEAD
=======
// Skip deepmaint. DO NOT REMOVE ELSE, it becomes unreachable
#if defined(UNIT_TESTS)
/obj/procedural/dungenerator/New()
	log_test("Skipping dungeon generation for unit tests")
	return
#else
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/procedural/dungenerator/New()
	var/obj/procedural/jp_DungeonGenerator/generate = new /obj/procedural/jp_DungeonGenerator(src)
	generate.setArea(locate(x - round(width_x/2) + 1, y + round(height_y/2) + 1, z), locate(x + round(width_x/2) - 1, y - round(height_y/2) - 1, z))
	generate.setWallType(/turf/simulated/wall/untinted/onestar)
	generate.setFloorType(/turf/simulated/floor/tiled/derelict/red_white_edges)
	generate.setAllowedRooms(list(/obj/procedural/jp_DungeonRoom/preexist/square, /obj/procedural/jp_DungeonRoom/preexist/circle))
	generate.setNumRooms(13)
	generate.setExtraPaths(7)
	generate.setMinPathLength(8)
	generate.setMaxPathLength(45)
	generate.setMinLongPathLength(25)
	generate.setLongPathChance(30)
	generate.setPathEndChance(30)
	generate.setPathWidth(2)
	generate.setRoomMinSize(3)
	generate.setRoomMaxSize(7)
	generate.generate()
<<<<<<< HEAD


=======
#endif
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
