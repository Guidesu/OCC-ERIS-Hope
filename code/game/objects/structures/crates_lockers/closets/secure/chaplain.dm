/obj/structure/closet/secure_closet/reinforced/chaplain
	name = "preacher's locker"
	req_access = list(access_chapel_office)
	icon_state = "head_preacher"

/obj/structure/closet/secure_closet/reinforced/chaplain/populate_contents()
	if(prob(25))
		new /obj/item/storage/backpack/neotheology(src)
	else if(prob(25))
		new /obj/item/storage/backpack/sport/neotheology(src)
	else
		new /obj/item/storage/backpack/satchel/neotheology(src)
	new /obj/item/clothing/under/rank/preacher(src)
	new /obj/item/clothing/under/rank/preacher(src)
	new /obj/item/storage/sheath(src)
	new /obj/item/device/radio/headset/church(src)
	new /obj/item/storage/belt/tactical/neotheology(src)
	new /obj/item/clothing/shoes/reinforced(src)
	new /obj/item/clothing/shoes/reinforced(src)
	new /obj/item/clothing/suit/storage/neotheology_jacket(src)
	new /obj/item/clothing/suit/storage/neotheology_jacket(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/clothing/under/rank/church/sport(src)
	new /obj/item/clothing/suit/storage/neotheosports(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/storage/fancy/candle_box/mek(src)//Occulus Edit
	new /obj/item/storage/fancy/candle_box/mek(src)//Occulus Edit
	new /obj/item/deck/tarot(src)
	new /obj/item/storage/box/headset/church
	new /obj/item/computer_hardware/hard_drive/portable/design/nt_boards (src)
	for (var/i in 1 to 10)
		new /obj/item/implant/core_implant/cruciform(src)
	new /obj/item/tool/knife/neotritual(src)
	new /obj/item/gun/energy/nt_svalinn(src)
	new /obj/item/cell/small(src)
	new /obj/item/tool/sword/nt/longsword(src)
	new /obj/item/tool/knife/dagger/nt(src)
