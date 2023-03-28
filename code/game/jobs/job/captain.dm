var/datum/announcement/minor/captain_announcement = new(do_newscast = 1)

/datum/job/premier
	title = "Premier"
	flag = PREMIER
	department = DEPARTMENT_COMMAND
	head_position = TRUE
	aster_guild_member = TRUE
	department_flag = COMMAND
<<<<<<< HEAD
	faction = "CEV Northern Light"
	total_positions = 1
	spawn_positions = 1
	supervisors = "your heart, wisdom and NanoTrasen"
=======
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	supervisors = "your heart and wisdom"
	difficulty = "Very Hard."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	selection_color = "#ccccff"
	req_admin_notify = 1
	playtimerequired = 2500
	wage = WAGE_COMMAND

<<<<<<< HEAD
	wl_config_heads = TRUE		//Eclipse edit.


	perks = list(/datum/perk/sommelier)

	ideal_character_age = 70 // Old geezer captains ftw
	outfit_type = /decl/hierarchy/outfit/job/captain

	description = "You are the Captain. <br>\
The assigned supervisor of the vast rusting hulk that is the CEV Northern Light. At least, as long as you keep sending the expedition reports.<br>\
This ship is a pinnacle of your career, crewed by an alliance of corporations and factions that must cooperate to survive.<br>\

You are the leader of this ship. Your word is law, but only as long as you can enforce that law.<br>\
Your command staff are comprised the leaders from each faction. They have their own agendas, and their interests must be served too. If you make them unhappy, the loyalty of their faction goes with them.<br>\
Treat your command officers with respect, and listen to their council. Try not to micromanage their departments or interfere in their affairs, and they should serve you well<br>\

You are a free agent, able to go where you will. Your loyalty given to whoever you see fit. You cannot run this ship alone, however. You need everyone."

	loyalties = "Your first loyalty is to The Board of Investors. The board appointed you here as their representative and CEO. Do not disappoint them. <br>\
	Your second loyalty is to the Northern Light, your ship. It is the pinnacle of your career, and you are nothing without it. If it were to be destroyed, you and your descendants would be ruined for centuries. <br>\
	Your third loyalty is to your command staff. They represent their entire faction while on-duty. Listen to their counsel. Ensure their interests are served. Keep them happy"
=======
	ideal_character_age = 50 // Old geezer captains ftw
	minimum_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/captain

	perks = list(PERK_SOMELLIER)

	description = "The Premier is the prime mediator of the colony itself, acting as a trusted advisor amongst their peers.<br>\
You are trusted with control of the colony primary accounts, and are also able to control access within the colony.<br>\
Your primary objective is to oversee council decisions, change access levels, and act as both lawyer and consultant in various decisions.<br>\
You are not the supreme leader of the colony and your word is only an advisement. The only person you can give legal orders to is the Steward.<br>\
The heads of the factions which make up the council each have their own agendas. Their interests must be served to avoid issues.<br>\
Treat your command officers with respect, and listen to their council. Try not to micromanage their departments or interfere in their affairs."

	duties = "Work between the varying interests of council members to achieve colony stability.<br>\
	Offer advise and counsel when approached, particularly during important decisions.<br>\
	Manage the colony primary accounts and access levels accordingly."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_BIO = 15,
		STAT_MEC = 15,
		STAT_VIG = 25,
		STAT_COG = 15,
		STAT_VIV = 1,
		STAT_ANA = 1
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)


	equip(var/mob/living/carbon/human/H)
		if(!..())	return 0
		if(H.age>49)
			var/obj/item/clothing/under/U = H.w_uniform
			if(istype(U)) U.accessories += new /obj/item/clothing/accessory/medal/gold/captain(U)
		return 1

	get_access()
		return get_all_station_access()

/obj/landmark/join/start/premier
	name = "Premier"
	icon_state = "player-gold-officer"
	join_tag = /datum/job/premier

/datum/job/pg
	title = "Steward"
	flag = STEWARD
	department = DEPARTMENT_COMMAND
	head_position = FALSE
	aster_guild_member = TRUE
	department_flag = COMMAND
<<<<<<< HEAD
	faction = "CEV Northern Light"
=======
	faction = MAP_FACTION
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Premier"
	difficulty = "Hard."
	selection_color = "#ddddff"
	req_admin_notify = 1
	playtimerequired = 1200
	wage = WAGE_COMMAND
<<<<<<< HEAD
	also_known_languages = list(LANGUAGE_CYRILLIC = 20, LANGUAGE_SERBIAN = 15)
	perks = list(/datum/perk/sommelier)
	ideal_character_age = 50

	wl_config_heads = TRUE		//Eclipse edit.

	description = "You are the captain's right hand. Their second in command. Wherever they go, you follow. Wherever they lead, you drag everyone else along. You make sure their will is done, their orders obeyed, and their laws enforced.<br>\
If they make mistakes, discreetly inform them. Help to cover up their indiscretions and smooth relations with the crew, especially other command staff. Keep the captain safe, by endangering yourself in their stead if necessary.<br>\
<br>\
Do not embarrass them or harm relations with faction leaders.<br>\
<br>\
But who are you?<br>\
Perhaps you are the captain's lifelong friend, or a trusted associate to whom they gave a position of power.<br>\
Perhaps you're a consummate professional who comes highly recommended.<br>\
A retired general or naval officer?<br>\
Perhaps you're the captain's sibling, firstborn, or spouse. Nobody can prevent nepotism if they choose<br>\
Perhaps you're a foreign diplomat, your position a ceremonial one to ensure a treaty.<br>\

Whatever your origin, you are fiercely loyal to the captain"

	duties = "Oversee everyone else, especially the other command staff, to ensure the captain's orders are being carried out.<br>\
Handle job reassignments and promotion requests, if an appropriate faction leader isn't available<br>\
Act as the captain's surrogate in risky situations where a command presence is required<br>\
Replace the captain if they become incapacitated, need to take a break, or suffer a premature death<br>\
Act as the captain's sidekick, bodyguard, and last line of defense in a crisis or mutiny situation"

	loyalties = "Your first and only loyalty is to the captain. Unless you're an antagonist and have a good reason for betrayal, you should remain loyal to the death. You are the only one they can truly trust"
=======
	ideal_character_age = 35
	minimum_character_age = 25

	health_modifier = 5
	description = "The Steward is the loyal right-hand of the Premier. Serving as a personal guard, follow him wherever he goes.<br>\
	Your primary, and perhaps only, responsibility is to ensure the safety of the Premier at all costs - even your own life if necessary.<br>\
	However, you are an adviser as well as a bodyguard. Discreetly inform him of mistakes. Make sure he follows the law and remains popular.<br>\
	You may be assigned special tasks by the Premier for whatever reason. Ensure these orders are fulfilled.<br>\
	Do not embarass him, and especially do not harm his relations with faction leaders. You may not do much talking, but you have great impact."

	duties = "Act as a bodyguard, adviser, and confidant to the Premier.<br>\
	Remain conscious of any potential threats to the safety of the Premier.<br>\
	Perform tasks as assigned by the Premier - such as filling paperwork or reassigning roles.<br>\
	Demonstrate true loyalty and do not let your superior down."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	outfit_type = /decl/hierarchy/outfit/job/hop

	perks = list(PERK_SOMELLIER)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)


	get_access()
		return get_all_station_access()

	stat_modifiers = list(
		STAT_VIG = 35,
		STAT_TGH = 30,
		STAT_ROB = 25,
		STAT_BIO = 25,
		STAT_MEC = 25,
		STAT_COG = 25,
		STAT_VIV = 2,
		STAT_ANA = 2
	)

/obj/landmark/join/start/pg
	name = "Steward"
	icon_state = "player-gold"
<<<<<<< HEAD
	join_tag = /datum/job/hop

/datum/job/ensign //Occulus Edit - We define this here for list ordering
	title = "Ensign" //Occulus Edit - We define this here for list ordering


=======
	join_tag = /datum/job/pg
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
