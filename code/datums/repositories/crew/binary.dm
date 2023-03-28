/* Binary */
/crew_sensor_modifier/binary/process_crew_data(var/mob/living/carbon/human/H, var/obj/item/clothing/under/C, var/turf/pos, var/list/crew_data)
	crew_data["alert"] = FALSE
<<<<<<< HEAD
	if(!H.isSynthetic() && H.should_have_process(OP_HEART))//Occulus Edit Start
		var/obj/item/organ/internal/heart/O = H.random_organ_by_process(OP_HEART)
		if (!O || !BP_IS_ROBOTIC(O)) // Don't make medical freak out over prosthetic hearts
=======
	crew_data["muted"] = FALSE
	if(H.name in GLOB.ignore_health_alerts_from)
		crew_data["muted"] = TRUE
	if(!H.isSynthetic())
		var/obj/item/organ/internal/heart/O = H.random_organ_by_process(OP_HEART)
		if(O && BP_IS_ORGANIC(O))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			var/pulse = H.pulse()
			if(pulse == PULSE_NONE || pulse == PULSE_THREADY)
				crew_data["alert"] = TRUE
		else if(BP_IS_ROBOTIC(O))
			crew_data["pulse_span"] = "highlight"
			crew_data["pulse"] = "synthetic"
		if(H.getOxyLoss() >= 20)
			crew_data["alert"] = TRUE
		if(H.getBruteLoss() >= 100)
			crew_data["alert"] = TRUE
		if(H.getFireLoss() >= 100)
			crew_data["alert"] = TRUE
		if(H.getToxLoss() >= 70) // At this point liver failure and MSOF start to happen, it's necessary that medical knows as soon as it happens
			crew_data["alert"] = TRUE
	return ..()

/* Jamming */
/crew_sensor_modifier/binary/jamming
	priority = 5

/crew_sensor_modifier/binary/jamming/alive/process_crew_data(var/mob/living/carbon/human/H, var/obj/item/clothing/under/C, var/turf/pos, var/list/crew_data)
	crew_data["alert"] = FALSE
	return MOD_SUIT_SENSORS_HANDLED

/crew_sensor_modifier/binary/jamming/dead/process_crew_data(var/mob/living/carbon/human/H, var/obj/item/clothing/under/C, var/turf/pos, var/list/crew_data)
	crew_data["alert"] = TRUE
	return MOD_SUIT_SENSORS_HANDLED

/* Random */
/crew_sensor_modifier/binary/jamming/random
	var/error_prob = 25

/crew_sensor_modifier/binary/jamming/random/moderate
	error_prob = 50

/crew_sensor_modifier/binary/jamming/random/major
	error_prob = 100

/crew_sensor_modifier/binary/jamming/random/process_crew_data(var/mob/living/carbon/human/H, var/obj/item/clothing/under/C, var/turf/pos, var/list/crew_data)
	. = ..()
	if(prob(error_prob))
		crew_data["alert"] = pick(TRUE, FALSE)
