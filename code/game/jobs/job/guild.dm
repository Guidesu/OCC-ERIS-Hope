//Cargo
/datum/job/merchant
<<<<<<< HEAD
	title = "Free Trade Union Merchant"
	flag = MERCHANT
	department = DEPARTMENT_GUILD
	head_position = 1
	department_flag = GUILD | COMMAND
	faction = "CEV Northern Light"
=======
	title = "Chief Executive Officer"
	flag = MERCHANT
	department = DEPARTMENT_LSS
	head_position = TRUE
	aster_guild_member = TRUE
	department_flag = LSS | COMMAND
	faction = MAP_FACTION
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Nadezhda Council"
	difficulty = "Medium."
	selection_color = "#b3a68c"
<<<<<<< HEAD
	wage = WAGE_NONE	//Guild merchant draws a salary from the guild account
	access = list(
		access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_merchant, access_mining,
		access_heads, access_mining_station, access_RC_announce, access_keycard_auth, access_sec_doors,
		access_eva, access_external_airlocks, access_change_cargo
=======
	wage = WAGE_COMMAND	//CEO now gets paid the money moola muh [redacted] -Kaz
	access = list(
		access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_merchant, access_mining,
		access_heads, access_mining_station, access_RC_announce, access_keycard_auth, access_sec_doors,
		access_eva, access_external_airlocks, access_hydroponics, access_bar, access_kitchen, access_theatre
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	)
	disallow_species = list(FORM_SOTSYNTH, FORM_AGSYNTH, FORM_BSSYNTH, FORM_CHURCHSYNTH, FORM_NASHEF)

	ideal_character_age = 40
	minimum_character_age = 25
	playtimerequired = 1200
	health_modifier = 5

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_COG = 20,
		STAT_MEC = 15,
		STAT_VIG = 10
	)
<<<<<<< HEAD

	description = "You are the head of the local branch of Free Trade Union, and Northern Light's Union representative<br>\
A staunch entrepreneur, you are motivated by profit, for the Union and especially for yourself. You are here firstly to make as much money as you can, and secondly to keep the crew supplied. You can order things at cargo using the local Union funds, these will not magically replenish so you will run out of money quickly if you don't charge. Take payments by card or cash, and deposit them into the Union account to enable more purchases.<br>\
<br>\
The Union also operates all the vendors on the ship, every credit paid into them goes to your Union account. Naturally operating is a two way street, you are expected, when necessary, to refill those vendors. Or send a technician to do it<br>\
<br>\
You do not recieve a salary, but the local Union funds are yours to use. You may pay yourself as much as you like from that account, take the funds and use them for any purpose.  Bribery is a good one, you can get people to do a lot of things if you flash some cash, and its a good idea to keep a few thousand credits on hand in-cash to bribe your way through potentially difficult situations.<br>\
<br>\
Things to bear in mind:<br>\
	-Nobody has a right to free stuff. You are well within your rights to charge for anything you distribute, and you won't make a penny if you don't.<br>\
	-CEV Northern Light has few laws on contraband. If someone wants something and they can afford it, you get it for them. Don't try to play moral guardian and don't ask questions. You are not responsible for whatever they do with your products.<br>\
	-Loyalty is a priceless resource, yet cheap to maintain. Don't screw over the miners and technicians working under you. <br>\
	-Charity is a weapon. Used correctly, it can do wonders for your public image.  A few gifts spread around makes for good returning customers"

	perks = list(/datum/perk/merchant, /datum/perk/deep_connection, /datum/perk/oddity/market_prof)

	duties = "Keep the crew supplied with anything they might need, at a healthy profit to you of course<br>\
Buy up valueable items from scavengers, and make a profit reselling them<br>\
Deploy your mining staff to harvest matter and materials<br>\
Counsel the captain on directing the ship towards profitable opportunities"

	loyalties = "As a merchant, your first loyalty is to money. You should be unscrupulous, willing to sell anything to anyone if they can pay your prices. Direct the ship towards profitable endeavours, and press the captain to make choices that will be financially lucrative<br>\
Your second loyalty is to the Union. Ensure it retains good relations with privateers like the captain of the Northern Light, and don't embarass it. This means limiting your price gouging to only moderate levels. If you make an enemy of everyone, it may prove a costly mistake"
=======
	description = "The Chief Executive Officer coordinates the affairs of the local branch of Lonestar Shipping Solutions.<br>\
Your main objective, bluntly, is to make as much money as you can. Purchase and acquire goods, and sell them on for a profit.<br>\
Your Cargo Technicians will handle most of the grunt work and your Miners will acquire minerals. They are capable - utilize them well.<br>\
The vendors found throughout the colony are also operated by your organization. They make you money - ensure they are functional and well-stocked.<br>\
There is a market for contraband and more unscrupulous services. Venturing into this area may prove profitable, but comes with risk.<br>\
You do not receive a salary, but can fund yourself from the company account. Strike a balance between the needs of yourself and the wider company."

	duties = "Keep the crew supplied with anything they might need - for a healthy profit.<br>\
Buy up valuable items from scavengers and make a profit reselling them.<br>\
Deploy your mining staff to harvest matter and materials.<br>\
Counsel the council on directing the colony towards profitable opportunities."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/trade,
							 /datum/computer_file/program/scanner,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

	outfit_type = /decl/hierarchy/outfit/job/cargo/merchant

	perks = list(PERK_TIMEISMONEY, PERK_MARKET_PROF, PERK_BARTENDER, PERK_CHEM_CONTRABAND)

/obj/landmark/join/start/merchant
<<<<<<< HEAD
	name = "Free Trade Union Merchant"	//SYZYGY EDIT - Fixes landmarks
=======
	name = "Chief Executive Officer"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "player-beige-officer"
	join_tag = /datum/job/merchant

/datum/job/cargo_tech
<<<<<<< HEAD
	title = "Union Cargo Technician"
	flag = GUILDTECH
	department = DEPARTMENT_GUILD
	department_flag = GUILD
	faction = "CEV Northern Light"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Free Trade Union Merchant"
	selection_color = "#c3b9a6"
	wage = WAGE_LABOUR_DUMB
	alt_titles = list("Union Salvage Technician")	// OCCULUS EDIT
=======
	title = "Cargo Technician"
	flag = CARGOTECH
	department = DEPARTMENT_LSS
	department_flag = LSS
	faction = MAP_FACTION
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Chief Executive Officer"
	difficulty = "Easy."
	alt_titles = list("Cargo Specialist", "Lonestar Sales Technician", "Lonestar Retail Assistant")
	selection_color = "#c3b9a6"
	wage = WAGE_LABOUR_DUMB
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	department_account_access = TRUE
	outfit_type = /decl/hierarchy/outfit/job/cargo/cargo_tech

	disallow_species = list(FORM_BSSYNTH)


	access = list(
		access_mailsorting, access_cargo, access_cargo_bot, access_mining,
		access_mining_station
	)

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 10,
		STAT_VIG = 10,
	)

<<<<<<< HEAD
	perks = list(/datum/perk/deep_connection)
=======
	perks = list(PERK_MARKET_PROF)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/scanner,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)


<<<<<<< HEAD
	description = "You are a low ranking member of the Free Trade Union, and an apprentice to the local merchant.  You may one day take over his position. You are equal parts scavenger, loader, shopkeeper and salesman. Remember the guild's core role here. To keep everyone supplied with everything they could need, and to profit from this endeavour<br>\
<br>\
Your main duties are to keep the local Union branch operational and profitable. To that end you should look out for all of the following tasks:"

	duties = "	-Delivering goods to persons or departments that ordered them<br>\
	-Staffing the front desk, taking payments and orders, buying up items from scavengers that come to sell things.<br>\
	-Visiting departments to take orders in person, ask if there's anything they need, and try to sell them unusual items that may aid their efforts.<br>\
	-Providing lesser services. Busted lights? Broken vendors? The Union can be there to help, for a small fee.<br>\
	-In quieter times, head into maintenance areas and scavenge for useful goods to resell"

	loyalties = "		Your first loyalty is to yourself and survival. This ship is mostly just a paycheck to you<br>\
		Your second loyalty is to the merchant, he ensures you're well paid and respected, in a universe where workers are often treated as interchangeable parts."

/obj/landmark/join/start/cargo_tech
	name = "Union Cargo Technician"	//OCCULUS EDIT - Fixes landmarks
=======
	description = "The Cargo Technician forms the backbone of Lonestar Shipping Solutions, equal parts scavenger, loader, and salesman.<br>\
Your main duty is to keep the local company branch operational and profitable. Deliver goods, take payments and orders, and buy from scavengers.<br>\
In quieter times, use your initiative. Visit departments to ask if there's anything they need and try to sell them unusual items.<br>\
Busted lights? Broken vendors? Offer your services for a small fee. You may also find profit in the maintenance tunnels.<br>\
Avoid the deeper tunnels unless otherwise instructed, however - this domain is hazardous and for training mining specialists."

	duties = "Staff the front desk and be ready to process payments and orders.<br>\
	Deliver goods to departments and individuals in good time.<br>\
	Always seek other forms of profit, but do so while keeping the company in a good light."

/obj/landmark/join/start/cargo_tech
	name = "Cargo Technician"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "player-beige"
	join_tag = /datum/job/cargo_tech

/datum/job/mining
<<<<<<< HEAD
	title = "Union Miner"
	flag = MINER
	department = DEPARTMENT_GUILD
	department_flag = GUILD
	faction = "CEV Northern Light"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Free Trade Union Merchant"
	selection_color = "#c3b9a6"
	wage = WAGE_LABOUR_HAZARD //The miners union is stubborn
	alt_titles = list("Union Prospector")	// OCCULUS EDIT
	outfit_type = /decl/hierarchy/outfit/job/cargo/mining

	description = "You are an asteroid miner, working in resource Procurement for the local branch of the Free Trade Union.<br>\
Your primary responsibility is to head out on the Mining Barge, and dig up as much ore as you can on an asteroid. The barge contains all the facilities to process that ore too, and allows you to deliver refined materials ready for use.<br>\
<br>\
All the stuff you dig up goes to the Union, and from then on it's the merchant's responsibility to sell it to other departments. <br>\
<br>\
Your second responsibility is to help out aboard ship, while waiting to reach an asteroid. Quite notably, the roaches infesting the ship make heavy use of burrows to get around. You have the tools and expertise to effectively deal with these burrows, and you should try to destroy them wherever you find them<br>\
<br>\
Your third responsibility is as an unofficial security guard. The Union is a popular target for thieves, and one of the unspoken reasons for keeping rough, sturdy people like you on the payroll is to deter those thieves, and punish them with a swift beating for attempting to steal from the merchant. Try to keep the beatings nonlethal though, murder generates too much bad publicity<br>\
<br>\
Character Expectations:<br>\
	Miners should be tough and physically strong. Unafraid to get their hands dirty.<br>\
	You should be competent in an EVA suit and in operating heavy machinery"


	duties = "Dig up ores and minerals, process them into useable material.<br>\
	Collapse burrows around the ship to help fight off the roach infestation<br>\
	Protect the Union wing and the mMrchant, from thieves and intruders."

	loyalties = "	Your first loyalty is to yourself and survival. This ship is mostly just a paycheck to you<br>\
	Your second loyalty is to the merchant, he ensures you're well paid and respected, in a universe where workers are often treated as interchangeable parts.	"
=======
	title = "Lonestar Miner"
	flag = MINER
	department = DEPARTMENT_LSS
	department_flag = LSS
	faction = MAP_FACTION
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Chief Executive Officer"
	difficulty = "Easy."
	alt_titles = list("Lonestar Drill Technician", "Junior Lonestar Miner")
	selection_color = "#c3b9a6"
	wage = WAGE_LABOUR_HAZARD //The miners union is stubborn
	health_modifier = 5

	disallow_species = list(FORM_BSSYNTH, FORM_CHURCHSYNTH)
	outfit_type = /decl/hierarchy/outfit/job/cargo/mining

	description = "The Miner is a professional resource procurer, acquiring valuable minerals for Lonestar Shipping Solutions.<br>\
Your primary responsibility is to descend into the deep tunnels and dig up as much ore as you can.<br>\
Accessed by elevator, the area contains an outpost with all the facilities to process said ore and deliver refined materials ready for use.<br>\
Whatever you dig up will go to the cargo department, and from then on it is the responsibility of others within Lonestar to sell it.<br>\
The deep tunnels are far less dangerous than the wilderness, but pack well - disappearances are not unheard of."

	duties = "Dig up ores and minerals to be processed into usable material.<br>\
	Locate other valuables within the tunnels that may be turned to profit."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	access = list(
		access_maint_tunnels, access_mailsorting, access_mining,
		access_mining_station
	)

	perks = list(PERK_MARKET_PROF)

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_VIG = 15,
		STAT_MEC = 15
	)

	perks = list(/datum/perk/deep_connection)

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

/obj/landmark/join/start/mining
<<<<<<< HEAD
	name = "Union Miner"
=======
	name = "Lonestar Miner"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "player-beige"
	join_tag = /datum/job/mining
/*
/datum/job/artist
	title = "Guild Artist"
	flag = ARTIST
	department = DEPARTMENT_GUILD
	department_flag = GUILD
	faction = "CEV Eris"
	total_positions = 3
	spawn_positions = 2
	supervisors = "the Guild Merchant"
	selection_color = "#dddddd"
	also_known_languages = list(LANGUAGE_CYRILLIC = 15, LANGUAGE_SERBIAN = 5, LANGUAGE_JIVE = 80)
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mining, access_mining_station, access_artist, access_theatre)

	outfit_type = /decl/hierarchy/outfit/job/cargo/artist
	wage = WAGE_LABOUR_DUMB	//Barely a retaining fee. Actor can busk for credits to keep themselves fed
	stat_modifiers = list(
		STAT_TGH = 30,
	)

	perks = list(PERK_ARTIST)

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/scanner,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

	description = "You are a creative soul aboard this vessel. You have been conscripted by the Aster's Guild to create masterful works of art to be sold at mind-boggling prices... and something about the CEV Eris and it's doomed journey sparks the fire of creation within you.<br>\
	You do not gain desires like other members of the crew. Instead, you stop gaining insight once you max out at 100 points.<br>\
	You can gain desires by spending this insight at your Artist's Bench to build a work of art, this art you create vary wildly in type, quality, and (most importantly, in the eyes of the Merchant) value. Sell your artwork to the unwashed masses, or give you work to the merchant to sell for a profit."

	duties = "Create works of art using your insight.<br>\
	Sell your work, or give it to the merchant to sell for you.<br>\
	Be in the midst of action or combat to level your insight faster."

	loyalties = "You are loyal to your soul, first and foremost. You are fascinated by this cursed ship, and want to mold this interest into your works of art.<br>\
	Your second loyalty is to the merchant and the Aster's Guild as a whole. After all, they're the ones giving you housing, payment, and materials to create your art."

/obj/landmark/join/start/artist
	name = "Guild Artist"
	icon_state = "player-grey"
	join_tag = /datum/job/artist
*/