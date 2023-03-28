/datum/unit_test/timer_sanity/Run()
<<<<<<< HEAD:code/unit_tests/timer_sanity.dm
	if(SStimer.bucket_count < 0)
		Fail("SStimer is going into negative bucket count from something")
=======
	TEST_ASSERT(SStimer.bucket_count >= 0,
		"SStimer is going into negative bucket count from something")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e:code/modules/unit_tests/timer_sanity.dm
