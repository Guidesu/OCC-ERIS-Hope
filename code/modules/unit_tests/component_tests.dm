/datum/unit_test/component_duping/Run()
	var/list/bad_dms = list()
	var/list/bad_dts = list()
	for(var/t in typesof(/datum/component))
		var/datum/component/comp = t
		if(!isnum(initial(comp.dupe_mode)))
			bad_dms += t
		var/dupe_type = initial(comp.dupe_type)
		if(dupe_type && !ispath(dupe_type))
			bad_dts += t
<<<<<<< HEAD:code/unit_tests/component_tests.dm
	if(length(bad_dms) || length(bad_dts))
		Fail("Components with invalid dupe modes: ([bad_dms.Join(",")]) ||| Components with invalid dupe types: ([bad_dts.Join(",")])")
=======
	TEST_ASSERT(!length(bad_dms) && !length(bad_dts),
		"Components with invalid dupe modes: ([bad_dms.Join(",")]) ||| Components with invalid dupe types: ([bad_dts.Join(",")])")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e:code/modules/unit_tests/component_tests.dm
