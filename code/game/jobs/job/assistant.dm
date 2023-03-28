/datum/job/assistant
<<<<<<< HEAD
	title = ASSISTANT_TITLE
	flag = ASSISTANT
	department = DEPARTMENT_CIVILIAN
	department_flag = CIVILIAN
	faction = "CEV Northern Light"
=======
	title = "Colonist"
	flag = ASSISTANT
	department = DEPARTMENT_CIVILIAN
	department_flag = CIVILIAN
	faction = MAP_FACTION
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	total_positions = -1
	spawn_positions = -1
	supervisors = "anyone who pays you"
	difficulty = "Very Easy."
	selection_color = "#dddddd"
	initial_balance = 800
	wage = WAGE_NONE //Get a job ya lazy bum
<<<<<<< HEAD
	alt_titles = list("Intern", "Vagabond", "Assistant")
	access = list(access_maint_tunnels)
=======
	alt_titles = list("Freelancer")

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	outfit_type = /decl/hierarchy/outfit/job/assistant

	stat_modifiers = list(
		STAT_ROB = 8,
		STAT_TGH = 8,
		STAT_BIO = 8,
		STAT_MEC = 8,
		STAT_VIG = 8,
		STAT_COG = 8
	)

<<<<<<< HEAD
	description = "You are a drifter, journeying through the vast expanses of space upon the CEV Northern Light. You will not be paid a wage.<br>\
Though this does not mean you have no home, as the Northern Light is your home. Whatever planet you may have came from a now distant memory.<br>\
You remember boarding the Northern Light sometime in your past, when it had a different purpose and a different captain.<br>\
Over time you've become accustomed to the dangers of this ship.<br>\
The ID you wear likely not even your own. At least as far as you can remember.<br>\
But this chunk of plastic still can be a rare oddity, that can change your character.<br>\
As an drifter, you should strive to help out anyone you can. Or at least, anyone who offers you a paying job. Find a way to make money, stay out of trouble, and survive."

	perks = list(/datum/perk/vagabond)
	loyalties = "Your loyalty is yours to decide"

/obj/landmark/join/start/assistant
	name = ASSISTANT_TITLE
=======
	description = "The ideal newcomer role. You have no official position within the colony or are simply off duty. You will not be paid a wage.<br>\
Where did you come from? Why are you here? These things are up to you.<br>\
<br>\
Perhaps you're a new arrival, who paid for transit. What are you seeking, or what are you running from?<br>\
Perhaps you're a young apprentice or intern. What new and exciting career are you pursuing?<br>\
Perhaps you're a friend, relative, spouse or lover of an existing colonist. How can you support them in their work?<br>\
Perhaps you're a former prisoner, ready to join the crew after your served time. What was your crime?<br>\
Perhaps you're a refugee, stranded in the wilderness and rescued by the colony. Why were you out there?<br>\
Perhaps you're a known crew member, taking some time off to relax and enjoy the surface life without the need for work?<br>\
<br>\
Your story is yours to write. What matters is that you're here now - find some purpose.<br>\
To form connections, strive to help out anyone you can. Or at least, anyone who offers you a paying job.<br>\
Find a way to make money, stay out of trouble, and survive."

/obj/landmark/join/start/assistant
	name = "Colonist"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "player-grey"
	join_tag = /datum/job/assistant

/datum/job/assistant/New()
	..()
	for(var/alt in subtypesof(/datum/job_flavor/assistant))
		random_flavors += new alt
