/obj/structure/closet/secure_closet/reinforced/engineering_chief
<<<<<<< HEAD
	name = "chief engineer's locker"
=======
	name = "guild master's locker"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	req_access = list(access_ce)
	icon_state = "ce"

/obj/structure/closet/secure_closet/reinforced/engineering_chief/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/industrial(src)
	else
		new /obj/item/storage/backpack/satchel/industrial(src)
	new /obj/item/blueprints(src)
	new /obj/item/clothing/under/rank/exultant(src)
	new /obj/item/clothing/head/firefighter/chief(src)
	new /obj/item/clothing/head/welding(src)
	new /obj/item/clothing/gloves/insulated(src)
	new /obj/item/clothing/shoes/color/brown(src)
<<<<<<< HEAD
	new /obj/item/device/radio/headset/heads/ce(src)
	new /obj/item/storage/toolbox/mechanical(src)
	new /obj/item/clothing/suit/storage/te_coat(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/tool/multitool(src)
	new /obj/item/device/flash(src)
	new /obj/item/taperoll/engineering(src)
	new /obj/item/storage/pouch/engineering_supply(src)
	new /obj/item/electronics/circuitboard/nanite_reconstitution_apparatus(src)
=======
	new /obj/item/clothing/accessory/halfcape/gm(src)
	new /obj/item/device/radio/headset/heads/ce(src)
	new /obj/item/storage/toolbox/mechanical(src)
	new /obj/item/clothing/suit/storage/hazardvest(src)
	new /obj/item/clothing/mask/gas/artificer(src)
	new /obj/item/tool/multitool(src)
	new /obj/item/device/flash(src)
	new /obj/item/taperoll/engineering(src)
	new /obj/item/tool/tape_roll/flextape(src)
	new /obj/item/storage/pouch/engineering_supply(src)
	new /obj/item/device/t_scanner/advanced(src)
	new /obj/item/storage/hcases/parts(src)
	new /obj/item/storage/hcases/engi(src)
	new /obj/item/rpd(src)
	new /obj/item/gun/energy/laser/railgun/pistol/slab(src)
	if(prob(50))
		new /obj/item/tool_upgrade/augment/ai_tool(src)
	else if(prob(50))
		new /obj/item/tool_upgrade/augment/repair_nano(src)
	else
		new /obj/item/tool_upgrade/augment/randomizer(src)
	new /obj/item/clothing/glasses/powered/meson(src)
	new /obj/item/hand_labeler(src)
	new /obj/item/storage/briefcase(src)
	new /obj/item/storage/lunchbox(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/structure/closet/secure_closet/engineering_electrical
	name = "electrical supplies"
	req_access = list(access_engine_equip)
	icon_state = "eng"
	icon_door = "eng_elec"

/obj/structure/closet/secure_closet/engineering_electrical/populate_contents()
	new /obj/item/clothing/gloves/insulated(src)
	new /obj/item/clothing/gloves/insulated(src)
	new /obj/item/storage/toolbox/electrical(src)
	new /obj/item/storage/toolbox/electrical(src)
	new /obj/item/storage/toolbox/electrical(src)
<<<<<<< HEAD
	new /obj/item/electronics/circuitboard/apc(src)
	new /obj/item/electronics/circuitboard/apc(src)
	new /obj/item/electronics/circuitboard/apc(src)
	new /obj/item/tool/multitool(src)
	new /obj/item/tool/multitool(src)
	new /obj/item/tool/multitool(src)
=======
	new /obj/item/circuitboard/apc(src)
	new /obj/item/circuitboard/apc(src)
	new /obj/item/circuitboard/apc(src)
	new /obj/item/tool/multitool(src)
	new /obj/item/tool/multitool(src)
	new /obj/item/tool/multitool(src)
	new /obj/item/storage/hcases/parts(src)
	new /obj/item/storage/hcases/engi(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/structure/closet/secure_closet/engineering_welding
	name = "welding supplies"
	req_access = list(access_construction)
	icon_state = "eng"
	icon_door = "eng_weld"

/obj/structure/closet/secure_closet/engineering_welding/populate_contents()
	new /obj/item/clothing/head/welding(src)
	new /obj/item/clothing/head/welding(src)
	new /obj/item/clothing/head/welding(src)
	new /obj/item/tool/weldingtool(src)
	new /obj/item/tool/weldingtool(src)
	new /obj/item/tool/weldingtool(src)
	new /obj/item/weldpack(src)
	new /obj/item/weldpack(src)
	new /obj/item/weldpack(src)
	new /obj/item/tool_upgrade/augment/fuel_tank(src)
	new /obj/item/tool_upgrade/augment/fuel_tank(src)
	new /obj/item/tool_upgrade/augment/fuel_tank(src)
<<<<<<< HEAD

/obj/structure/closet/secure_closet/personal/engineering_personal
	name = "engineer's locker"
=======
	new /obj/item/storage/hcases/parts(src)
	new /obj/item/storage/hcases/engi(src)

/obj/structure/closet/secure_closet/personal/engineering_personal
	name = "guild adept's locker"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	req_access = list(access_ce)
	access_occupy = list(access_engine_equip)
	icon_state = "eng"
	icon_door = "eng_secure"

/obj/structure/closet/secure_closet/personal/engineering_personal/populate_contents()
	if(prob(50))
		new /obj/item/storage/backpack/industrial(src)
	else
		new /obj/item/storage/backpack/satchel/industrial(src)
	new /obj/item/storage/toolbox/mechanical(src)
	new /obj/item/clothing/under/rank/engineer(src)
	new /obj/item/clothing/head/hardhat(src)
	new /obj/item/clothing/head/welding(src)
	new /obj/item/clothing/gloves/insulated(src)
	new /obj/item/device/radio/headset/headset_eng(src)
<<<<<<< HEAD
	new /obj/item/clothing/suit/storage/hazardvest/orange(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/clothing/glasses/powered/meson(src)
	new /obj/item/clothing/head/armor/helmet/technomancer(src)
	new /obj/item/clothing/suit/storage/vest/insulated(src)
=======
	new /obj/item/clothing/suit/storage/hazardvest(src)
	new /obj/item/clothing/mask/gas/artificer(src)
	new /obj/item/clothing/glasses/powered/meson(src)
	new /obj/item/device/t_scanner/advanced(src)
	new /obj/item/storage/hcases/parts(src)
	new /obj/item/storage/hcases/engi(src)
	new /obj/item/rpd(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
