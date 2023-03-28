//Determines starting account balance
/datum/job/proc/one_time_payment(var/custom_factor = 1)
	if (initial_balance != -1)
<<<<<<< HEAD
		return round (initial_balance * RAND_DECIMAL(0.7, 1.3) * custom_factor) // OCCULUS EDIT - Nobles get 5x the starting balance
	return round(wage * RAND_DECIMAL(1.5, 3.5) * custom_factor)			// OCCULUS EDIT ^
=======
		return round (initial_balance * ((rand(7, 13)) / 10) * custom_factor)
	return round(wage * ((rand(15, 35)) / 10) * custom_factor)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


//How much is this user getting paid?
//The passed in record indicates which user. This can be read to gather information about them.
//In future this can be expanded to give bonuses or penalize wages based on work performance
//Don't check for wage-blocking statuses like dead/suspended here, thats done before this is called
/datum/job/proc/get_wage(var/datum/data/record/R)

	return wage
