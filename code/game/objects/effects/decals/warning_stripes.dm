/obj/effect/decal/warning_stripes
	icon = 'icons/effects/warning_stripes.dmi'

/obj/effect/decal/warning_stripes/Initialize()
	..()
	var/turf/T=get_turf(src)
	var/image/I=image(icon, icon_state = icon_state, dir = dir)
	I.color=color
<<<<<<< HEAD
	T.add_overlays(I)
=======
	T.add_overlay(I)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	return INITIALIZE_HINT_QDEL
