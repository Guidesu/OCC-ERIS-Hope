<<<<<<< HEAD
#define LOYALTY_CIVILIAN "As a civilian, your only loyalty is to yourself and your livelihood.<br>\
		You just want to survive, make a living, and get through the day. You shouldn't try to be a hero, or throw your life away for a cause. Nor should you hold any loyalties. Civilians should be easily corruptible, willing to take bribes to do anything someone wants and stay quiet about it."


/datum/job/clubmanager
	title = "Club Manager"
	flag = CLUBMANAGER
	department = DEPARTMENT_CIVILIAN
	department_flag = SERVICE
	faction = "CEV Northern Light"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the First Officer"
	selection_color = "#dddddd"
	also_known_languages = list(LANGUAGE_CYRILLIC = 25, LANGUAGE_SERBIAN = 15, LANGUAGE_JIVE = 80)
	access = list(access_bar, access_kitchen, access_maint_tunnels, access_change_club)
	initial_balance = 3000
	perks = list(PERK_CLUB)
	wage = WAGE_NONE // Makes his own money
=======
/datum/job/clubmanager
	title = "Bartender"
	flag = CLUBMANAGER
	department = DEPARTMENT_LSS
	department_flag = LSS
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Executive Officer"
	difficulty = "Easy."
	alt_titles = list("Barkeep","Barista","Mixologist")
	selection_color = "#dddddd"
	access = list(access_hydroponics, access_bar, access_kitchen)
	initial_balance = 3000
	wage = WAGE_LABOUR_DUMB // Makes his own money via tips and selling drinks
	health_modifier = -10
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_VIG = 15,
	)
<<<<<<< HEAD
	outfit_type = /decl/hierarchy/outfit/job/service/bartender //Re-using this.
	description = "As the Club Manager, you run the club aboard CEV Northern Light. Provide the crewmembers with drinks, food, and entertainment.<br>\
	<br>\
	Technically you take orders from no one, but the Captain and the Head of Personnel are the ones who hired you and you should strive to please them. Your Club Workers help you run the place and make money. Pay them well!"

	duties = "		Run the club, provide a safe haven for food, drinks, and entertainment.<br>\
		Make money, run deals through your place, provide entertainment, trade secrets.<br>\
		Keep the bar safe, clean, and free of fights."

	loyalties = LOYALTY_CIVILIAN

/obj/landmark/join/start/clubmanager
	name = "Club Manager"
=======

	perks = list(PERK_MARKET_PROF, /datum/perk/bartender)

	outfit_type = /decl/hierarchy/outfit/job/service/bartender //Re-using this.
	description = "The Bartender runs the colony bar, providing colonists with drinks and entertainment.<br>\
	Working with the Chef and Gardener, you make the big decisions. Run your business well - perhaps seek to maximise profits.<br>\
	Although tips are a good source of income, your wider business acumen will truly decide your prosperity here."

	duties = "Run the bar - provide a safe haven for food, drinks, and entertainment.<br>\
		Seek extra sources of income from the venue - perhaps run deals or trade secrets.<br>\
		Potentially take over cooking duties if a Chef is not present."

/obj/landmark/join/start/clubmanager
	name = "Bartender"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "player-grey"
	join_tag = /datum/job/clubmanager

/datum/job/clubworker
<<<<<<< HEAD
	title = "Club Worker"
	flag = CLUBWORKER
	department = DEPARTMENT_CIVILIAN
	department_flag = SERVICE
	faction = "CEV Northern Light"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Club Manager"
	selection_color = "#dddddd"
	access = list(access_bar, access_kitchen)
	initial_balance = 750
	perks = list(PERK_CLUB)
	wage = WAGE_NONE //They should get paid by the club owner, otherwise you know what to do.
	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 10,
		STAT_VIG = 5,
	)
	outfit_type = /decl/hierarchy/outfit/job/service/waiter
	description = "As a Club Worker, you work for the Club Manager. Your job is to fulfill your duties in running the Club and making sure all the customers are satisfied.<br>\
	<br>\
	You can cook, clean, server, tend the bar, entertain, or even be the bouncer. You have no limits to what you can do inside the Club granted your manager requests you do it.<br>\
	<br>\
	You are paid directly by the Club Manager, he gives you your allowance. The Club Manager only makes money if the Club is ran well, so work hard!"

	duties = "		Assist the Club Manager with running the club.<br>\
		Serve customers. Feed customers. Entertain customers.<br>\
		Protect the Club. Protect the Customers.<br>\
		Make enough money to stay alive aboard the Northern Light."
=======
	title = "Chef"
	flag = CLUBWORKER
	department = DEPARTMENT_LSS
	department_flag = LSS
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Executive Officer"
	difficulty = "Easy."
	alt_titles = list("Culinary Artist","Cook", "Line Chef")
	selection_color = "#dddddd"
	health_modifier = -10
	access = list(access_hydroponics, access_bar, access_kitchen)
	initial_balance = 750
	wage = WAGE_LABOUR_DUMB //They should get paid by making food.
	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 10,
		STAT_BIO = 10, // They need it to butcher animals without hurting themselves.
	)

	perks = list(PERK_MARKET_PROF, /datum/perk/bartender, /datum/perk/foodappraise)

	outfit_type = /decl/hierarchy/outfit/job/service/waiter
	description = "The Chef works in the kitchen, ensuring that the colony remains well-fed and energetic.<br>\
	You will typically work closely with a Bartender while cooking, cleaning, serving, and perhaps entertaining.<br>\
	You are paid mainly through fulfilling requests for food. The successful Chef takes initiative by asking for customer orders."

	duties = "Provide enough meals to feed the colony. Aim for a variety of interesting and tasty dishes.<br>\
		Ensure your customers are well-fed and looked after.<br>\
		Potentially take over bartending duties if a Bartender is not present."


/obj/landmark/join/start/clubworker
	name = "Chef"
	icon_state = "player-grey"
	join_tag = /datum/job/clubworker

/datum/job/hydro
	title = "Gardener"
	flag = BOTANIST
	department = DEPARTMENT_LSS
	department_flag = LSS
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Executive Officer"
	difficulty = "Easy."
	selection_color = "#dddddd"
	alt_titles = list("Hydroponicist")
	health_modifier = -10
	also_known_languages = list(LANGUAGE_CYRILLIC = 15, LANGUAGE_JIVE = 80)
	access = list(access_hydroponics, access_bar, access_kitchen)
	wage = WAGE_LABOUR_DUMB //The gardener can make money selling his fruits to the church or to the chef and bartender.

	outfit_type = /decl/hierarchy/outfit/job/service/gardener
	stat_modifiers = list(
		STAT_BIO = 15,
		STAT_TGH = 15,
		STAT_ROB = 10,
	)

	perks = list(PERK_MARKET_PROF, /datum/perk/greenthumb, /datum/perk/bartender)

	description = "The Gardener toils in hydroponics - utilising seeds, tools, and fertilisers to grow bountiful crops.<br>\
	More talented gardeners may dip into ranching. Your paddocks contain a few chickens and a cow. More exotic animals can be acquired as cargo imports.<br>\
	You are the go-to expert for flora destruction - use shovels and hatchets, or seek more advanced equipment like flamethrowers and chainsaws.<br>\
	Remember that your goods come at a price, and more exotic crops can command a higher price."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	duties = "Grow food. Ensure a good supply of raw vegetables and core grains - rice and wheat.<br>\
		Raise animals for eggs, meat and recreation.<br>\
		Maintain the potted plants around the colony.<br>\
		Manage invasive flora around the colony and control fungal infestations."

<<<<<<< HEAD
/obj/landmark/join/start/clubworker
	name = "Club Worker"
	icon_state = "player-grey"
	join_tag = /datum/job/clubworker

/*	OCCULUS EDIT: Actor has been merged with Club Worker.
/datum/job/actor
	title = "Actor"
	flag = ACTOR
	department = DEPARTMENT_CIVILIAN
	department_flag = SERVICE
	faction = "CEV Northern Light"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Head of Personnel"
	selection_color = "#dddddd"
	access = list(access_maint_tunnels, access_theatre)
	alt_titles = list("Clown", "Mime", "Musician", "Entertainer")

	outfit_type = /decl/hierarchy/outfit/job/service/actor/clown
=======
/obj/landmark/join/start/hydro
	name = "Gardener"
	icon_state = "player-black"
	join_tag = /datum/job/hydro

/datum/job/artist
	title = "Artist"
	flag = ARTIST
	department = DEPARTMENT_LSS
	department_flag = LSS
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Executive Officer"
	difficulty = "Easy."
	selection_color = "#dddddd"
	access = list(access_theatre)
	outfit_type = /decl/hierarchy/outfit/job/cargo/artist
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	wage = WAGE_LABOUR_DUMB	//Barely a retaining fee. Actor can busk for credits to keep themselves fed
	alt_titles = list("Artist","Clown","Entertainer","Mime")
	stat_modifiers = list(
		STAT_TGH = 20, //basically a punching bag, he can't robust anyone or shoot guns anyway
		STAT_MEC = 10  //They often deal with tool mods guns and other things that need these
	)

<<<<<<< HEAD
	loyalties = LOYALTY_CIVILIAN
*/
=======
	//You need insperation to do your job.
	disallow_species = list(FORM_FBP, FORM_UNBRANDED, FORM_SOTSYNTH, FORM_AGSYNTH, FORM_BSSYNTH, FORM_CHURCHSYNTH, FORM_NASHEF)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


	perks = list(PERK_MARKET_PROF, PERK_ARTIST, /datum/perk/stalker)
	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/scanner,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

	description = "The Artist serves as a versatile performance artist here to entertain the colony.<br>\
	You may find your colleagues distracted by boring duties or senseless bickering, so work hard to bring them some real culture.<br>\
	The CEO pays you a terrible retaining fee, so use your wits to sustain yourself - perhaps ask your audience for donations.<br>\
	In addition you do not gain desires like other members of the colony, instead you spend your insight at your workbench to create expensive works of art worth selling."

	duties = "Provide (family-friendly) entertainment to the crew with your varied talents.<br>\
		Create and sell valuable works of art in your artist bench.<br>\
		Try to be a successful rather than starving artist. The costume vendor and equipment in your cramped studio may prove useful."

/obj/landmark/join/start/artist
	name = "Artist"
	icon_state = "player-grey"
<<<<<<< HEAD
	// join_tag = /datum/job/actor // OCCULUS EDIT: Comment out the datum so the spawn can stay on the map if it's ever separated again
/*
/datum/job/hydro
	title = "Botanist"
	flag = BOTANIST
	department = DEPARTMENT_CIVILIAN
	department_flag = SERVICE
	faction = "CEV Northern Light"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Head of Personnel"
	selection_color = "#ecd37d"
	//alt_titles = list("Hydroponicist")
	access = list(access_morgue, access_crematorium, access_maint_tunnels, access_hydroponics)
	wage = WAGE_PROFESSIONAL

	outfit_type = /decl/hierarchy/outfit/job/church/gardener
	stat_modifiers = list(
		STAT_BIO = 15,
		STAT_TGH = 15,
		STAT_ROB = 10,
	)

	description = "You are the cultivator of the ship's plants, and assist in the production of biomatter. All duties of plant growth fall to you, making your role critical.<br>\
	<br>\
	Though the growing of plants and raising livestock is your primary concern, many others aboard the ship rely upon your work as well. The crew requires food, and the club manager seeks to provide. Though the manager cannot make food without fresh produce grown from the garden.<br>\
	<br>\
	You can still charge the club manager, as well as the crew for the price of food of course. And perhaps in time earn the favor of new converts."

	duties = "Grow plants for use as biomatter.<br>\
	Provide fresh produce."

/obj/landmark/join/start/hydro
	name = "Botanist"
	icon_state = "player-black"
	join_tag = /datum/job/hydro
=======
	join_tag = /datum/job/artist
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/job/janitor
	title = "Custodian"
	flag = JANITOR
<<<<<<< HEAD
	department = DEPARTMENT_CIVILIAN
	department_flag = SERVICE
	faction = "CEV Northern Light"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Head of Personnel"
	selection_color = "#ecd37d"
	//alt_titles = list("Janitor","Sanitation Technician")
	access = list(access_janitor, access_maint_tunnels, access_crematorium, access_morgue)
	wage = WAGE_PROFESSIONAL
	outfit_type = /decl/hierarchy/outfit/job/church/janitor
=======
	department = DEPARTMENT_LSS
	department_flag = LSS
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Executive Officer"
	difficulty = "Easy."
	selection_color = "#dddddd"
	alt_titles = list("Custodian","Sanitation Technician")
	access = list(access_janitor, access_maint_tunnels, access_morgue, access_hydroponics, access_bar, access_kitchen)
	wage = WAGE_PROFESSIONAL
	health_modifier = 5
	outfit_type = /decl/hierarchy/outfit/job/service/janitor
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	perks = list(PERK_MARKET_PROF, /datum/perk/job/jingle_jangle, /datum/perk/neat) //Union has revoked their chemistry privileges

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_BIO = 10,
		STAT_VIG = 15
	)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor)
	description = "The lowly Janitor, well paid but rarely respected, nevertheless provides a valuable service.<br>\
	You will trundle around the colony, armed with your trusty janicart full of cleaning supplies, disposing of trash and pests.<br>\
	Some minor maintenance also falls within your duties. Fix lights, correct broken vendors, replace floor tiles - ease the guild burden.<br>\
	Although your status is miserable, your knowledge of maintenance may lead you to some valuable salvage for some extra cash."

<<<<<<< HEAD
	description = "You are the Custodian, the person charged with keeping the entire ship clean.<br>\
	<br>\
	Though dead roaches and dead spiders, like you, are more than what they seem. Their corpses are useful for biomatter, both for the bioreactor and for the cloner. Thus in your duty to keep the halls clean, you also provide precious biomatter for cloning."

	duties = "Keep the hallways clean of blood, dirt, and bug carcasses."

/obj/landmark/join/start/janitor
	name = "Custodian"
=======
	duties = "Clean blood, dirt, rubble and messes. Don't clean up crime scenes!<br>\
		Conduct minor repairs and maintenance when guild adepts aren't available.<br>\
		Restock Newscasters to at lest 15 prints.<br>\
		Deploy traps on burrows and do your best to handle the ongoing roach and spider problem."

/obj/landmark/join/start/janitor
	name = "Janitor"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "player-black"
	join_tag = /datum/job/janitor


*/
