<<<<<<< HEAD

#define isweakref(A) istype(A, /weakref)

#define islist(A) istype(A, /list)

#define ismob(A) istype(A, /mob)

=======
// simple is_type and similar inline helpers

#define in_range(source, user) (get_dist(source, user) <= 1 && (get_step(source, 0)?:z) == (get_step(user, 0)?:z))

/// Within given range, but not counting z-levels
#define IN_GIVEN_RANGE(source, other, given_range) (get_dist(source, other) <= given_range && (get_step(source, 0)?:z) == (get_step(other, 0)?:z))

#define isatom(A) (isloc(A))

#define isdatum(thing) (istype(thing, /datum))

#define isweakref(D) (istype(D, /datum/weakref))


#define islist(A) istype(A, /list)


#define ismob(A) istype(A, /mob)

#define ismecha(A) istype(A, /obj/mecha)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
#define isobserver(A) istype(A, /mob/observer)

#define isghost(A) istype(A, /mob/observer/ghost)

#define isEye(A) istype(A, /mob/observer/eye)

#define isangel(A) istype(A, /mob/observer/eye/angel)

#define isnewplayer(A) istype(A, /mob/new_player)

#define isbst(A) istype(A, /mob/living/carbon/human/bst)
<<<<<<< HEAD

#define ismech(A) istype(A, /mob/living/exosuit)

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
//++++++++++++++++++++++++++++++++++++++++++++++

#define isliving(A) istype(A, /mob/living)
//---------------------------------------------------

#define iscarbon(A) istype(A, /mob/living/carbon)

#define isalien(A) istype(A, /mob/living/carbon/alien)

#define isslime(A) istype(A, /mob/living/carbon/slime)

#define isroach(A) istype(A, /mob/living/carbon/superior_animal/roach)

#define isbrain(A) istype(A, /mob/living/carbon/brain)

#define ishuman(A) istype(A, /mob/living/carbon/human)
//---------------------------------------------------

#define isanimal(A) istype(A, /mob/living/simple_animal)

#define iscorgi(A) istype(A, /mob/living/simple_animal/corgi)

<<<<<<< HEAD
=======
#define iscatto(A) istype(A, /mob/living/simple_animal/cat)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
#define ismouse(A) istype(A, /mob/living/simple_animal/mouse)

#define issuperioranimal(A) istype(A, /mob/living/carbon/superior_animal)

<<<<<<< HEAD
#define isburrow(A) istype(A, /obj/structure/burrow)
//---------------------------------------------------

=======
#define issuperiorhuman(A) istype(A, /mob/living/carbon/superior_animal/human)

#define issuperiortermite(A) istype(A, /mob/living/carbon/superior_animal/termite)

#define issuperiortermitenodespawn(A) istype(A, /mob/living/carbon/superior_animal/termite_no_despawn) //THIS SUCKS WHAT THE FUCK

#define issuperiorspider(A) istype(A, /mob/living/carbon/superior_animal/giant_spider)

#define issuperiorroach(A) istype(A, /mob/living/carbon/superior_animal/roach)

#define isburrow(A) istype(A, /obj/structure/burrow)
//---------------------------------------------------

#define issynthetic(A) istype(A, /mob) && A.mob_classification == CLASSIFICATION_SYNTHETIC //For when we really, really don't want any robots

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
#define issilicon(A) istype(A, /mob/living/silicon)

#define isAI(A) istype(A, /mob/living/silicon/ai)

#define ispAI(A) istype(A, /mob/living/silicon/pai)

#define isrobot(A) istype(A, /mob/living/silicon/robot)

#define isdrone(A) istype(A, /mob/living/silicon/robot/drone)

<<<<<<< HEAD
#define isblitzshell(A) istype(A, /mob/living/silicon/robot/drone/blitzshell)

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
//-----------------Objects
#define ismovable(A) istype(A, /atom/movable)

#define isobj(A) istype(A, /obj)

#define isHUDobj(A) istype(A, /obj/screen)

#define isitem(A) istype(A, /obj/item)

<<<<<<< HEAD
=======
#define isprojectile(A) istype(A, /obj/item/projectile)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
#define isorgan(A) istype(A, /obj/item/organ/external)

#define isgun(A) istype(A, /obj/item/gun)

<<<<<<< HEAD
#define istool(A) istype(A, /obj/item/tool)

#define isCoil(A) istype(A, /obj/item/stack/cable_coil)

#define isstructure(A) (istype(A, /obj/structure))

#define ismachinery(A) (istype(A, /obj/machinery))

=======
#define isarmor(A) istype(A, /obj/item/clothing)

#define istool(A) istype(A, /obj/item/tool)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
#define isWrench(A) istype(A, /obj/item/tool/wrench)

#define isWelder(A) istype(A, /obj/item/tool/weldingtool)

<<<<<<< HEAD
=======
#define isCoil(A) istype(A, /obj/item/stack/cable_coil)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
#define isWirecutter(A) istype(A, /obj/item/tool/wirecutters)

#define isScrewdriver(A) istype(A, /obj/item/tool/screwdriver)

#define isMultitool(A) istype(A, /obj/item/tool/multitool)

#define isCrowbar(A) istype(A, /obj/item/tool/crowbar)
