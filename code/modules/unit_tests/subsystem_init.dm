/datum/unit_test/subsystem_init/Run()
	for(var/i in Master.subsystems)
		var/datum/controller/subsystem/ss = i
		if(ss.flags & SS_NO_INIT)
			continue
		if(!ss.initialized)
<<<<<<< HEAD:code/unit_tests/subsystem_init.dm
			Fail("[ss]([ss.type]) is a subsystem meant to initialize but doesn't get set as initialized.")
=======
			TEST_FAIL("[ss]([ss.type]) is a subsystem meant to initialize but doesn't get set as initialized.")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e:code/modules/unit_tests/subsystem_init.dm
