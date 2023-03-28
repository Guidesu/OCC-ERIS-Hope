/obj/item/implant/health
	name = "health implant"
	icon_state = "implant_health"
	var/healthstring = ""
	origin_tech = list(TECH_MATERIAL=3, TECH_BIO=4)

<<<<<<< HEAD
=======
	overlay_icon = "health"

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/implant/health/proc/sensehealth()
	if(!implanted)
		return "ERROR"
	else
		if(isliving(implanted))
			var/mob/living/L = implanted
			healthstring = "[round(L.getOxyLoss())] - [round(L.getFireLoss())] - [round(L.getToxLoss())] - [round(L.getBruteLoss())]"
		if(!healthstring)
			healthstring = "ERROR"
		return healthstring


/obj/item/implantcase/health
	name = "glass case - 'health'"
	desc = "A case containing a health tracking implant."
	implant = /obj/item/implant/health