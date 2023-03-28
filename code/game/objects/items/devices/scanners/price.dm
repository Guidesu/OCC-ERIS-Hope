/obj/item/device/scanner/price
	name = "export scanner"
	desc = "A device used to check objects against Commercial database."
	icon = 'icons/obj/reader.dmi'
	icon_state = "reader0"
	item_state = "radio"
	flags = NOBLUDGEON
	w_class = ITEM_SIZE_SMALL
	siemens_coefficient = 1
	matter = list(MATERIAL_PLASTIC = 2, MATERIAL_GLASS = 1)
<<<<<<< HEAD
	charge_per_use = 3
	rarity_value = 25
=======

	charge_per_use = 3
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/device/scanner/price/is_valid_scan_target(atom/movable/target)
	return istype(target)

/obj/item/device/scanner/price/scan(atom/movable/target, mob/user)
	scan_title = "Price estimations"

<<<<<<< HEAD
=======
	if(!istype(target, /atom/movable))
		to_chat(user, SPAN_WARNING("This is a invalid target for scanning."))
		return

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!scan_data)
		scan_data = price_scan_results(target)
	else
		scan_data += "<br>[price_scan_results(target)]"
<<<<<<< HEAD
	FLICK("reader1", src)
=======
	flick("reader1", src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	show_results(user)

/obj/item/device/scanner/price/afterattack(atom/A, mob/user, proximity)
	if(!proximity)
		return
	return ..()

/proc/price_scan_results(atom/movable/target)
	var/list/data = list()
<<<<<<< HEAD
	var/price = SStrade.get_export_cost(target)

	if(price)
		data += "<span class='notice'>Scanned [target], value: <b>[price]</b> \
			credits[target.contents.len ? " (contents included)" : ""].</span>"
	else
		data += "<span class='warning'>Scanned [target], no export value. \
			</span>"

	data = jointext(data, "<br>")
	return data
=======
	var/price = SStrade.get_price(target)

	if(price)
		data += "<span class='notice'>Scanned [target], value: <b>[price]</b> \
			credits[target.contents.len ? " (contents included)" : ""]. [target.surplus_tag?"(surplus)":""]</span>"
	else
		data += "<span class='warning'>Scanned [target], no export value. \
			</span>"
	data = jointext(data, "<br>")
	return data
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
