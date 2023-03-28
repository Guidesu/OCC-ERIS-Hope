/datum/job/cmo
<<<<<<< HEAD
	title = "Chief Medical Officer"
	flag = CMO
	head_position = 1
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL | COMMAND
	faction = "CEV Northern Light"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain and NanoTrasen"
=======
	title = "Chief Biolab Overseer"
	flag = CBO
	head_position = 1
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL | COMMAND
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Nadezhda Council"
	difficulty = "Stressful."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	selection_color = "#94a87f"
	req_admin_notify = 1
	wage = WAGE_COMMAND
	outfit_type = /decl/hierarchy/outfit/job/medical/cmo
	disallow_species = list(FORM_AGSYNTH, FORM_BSSYNTH, FORM_CHURCHSYNTH, FORM_NASHEF)

	wl_config_heads = TRUE		//Eclipse edit.

	access = list(
		access_moebius, access_medical_equip, access_morgue, access_genetics, access_heads,
		access_chemistry, access_virology, access_cmo, access_surgery, access_RC_announce,
		access_keycard_auth, access_sec_doors, access_psychiatrist, access_eva, access_maint_tunnels,
<<<<<<< HEAD
		access_external_airlocks, access_paramedic, access_research_equipment, access_change_medbay
=======
		access_external_airlocks, access_paramedic, access_research_equipment, access_medical_suits,
		access_robotics, access_xenobiology
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	)

	ideal_character_age = 40
	minimum_character_age = 30
	playtimerequired = 1200

	stat_modifiers = list(
		STAT_BIO = 50,
		STAT_MEC = 10,
		STAT_COG = 25
	)

<<<<<<< HEAD
	perks = list(/datum/perk/selfmedicated)
=======
	perks = list(PERK_MEDICAL_EXPERT, PERK_ADVANCED_MEDICAL, PERK_SI_SCI, PERK_CHEMIST)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/chem_catalog,
							 /datum/computer_file/program/reports)

<<<<<<< HEAD
	description = "You are the head of the Medical Bay on the CEV Northern Light and provide medical services to the crew.<br>\
You are here to keep everyone alive and ideally, at work. You should make choices that preserve life as much as possible.<br>\

The handling of the medbay is your domain, although remember that both medical and science are branches of NanoTrasen, so your colleagues have free access to your resources, and vice versa"

	duties = "Organise the doctors under your command to help save lives. Assign patients, and check on their progress periodically<br>\
Dispatch your paramedics to distress calls, and corpse recoveries as needed<br>\
Use department funds to purchase medical supplies and equipment as needed<br>\
Advise the captain on medical issues that concern the crew<br>\
Advise the crew on ethical issues<br>\
In times of crisis, lock down the medbay to protect those within, from outside threats."

	loyalties = "As a doctor, your first loyalty is to your conscience. You swore an oath to save lives and do no harm. It falls on you to be the ethical and moral core of the crew. You should speak up for prisoners, captured lifeforms, and test subjects. Nobody else will.<br>\

Your second loyalty is to your career with NanoTrasen, and to your coworkers in both Medical and Research. Help out your scientific colleagues, and aid in their pursuit of knowledge."

/obj/landmark/join/start/cmo
	name = "Chief Medical Officer"
=======
	description = "The Chief Biolab Overseer is the head of the medical branch of the Soteria Institute, preserving and improving lives.<br>\
	Your main responsibility is to keep everyone alive, as is the objective of your department. Prioritize health over most other concerns. <br>\
	A variety of medical staff work under your command. Although these roles are clear-cut compared to the research branch, direct them appropriately.<br>\
	Of course, remember that you are a doctor yourself - feel free to help with less specialized activities to ease the burden.<br>\
	The Medical wing also falls under the ownership of Soteria. You may use their resources - and they may use yours - as needed."

	duties = "Direct the doctors under your command towards the bettering of all mankind.<br>\
	Dispatch your paramedics to distress calls, and corpse recoveries as needed.<br>\
	Use department funds to purchase medical supplies and equipment as needed.<br>\
	Advise the council on medical issues that concern the crew.<br>\
	Advise the crew on ethical issues.<br>\
	In times of crisis, lock down the medbay to protect those within, from outside threats."

/obj/landmark/join/start/cmo
	name = "Chief Biolab Overseer"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "player-green-officer"
	join_tag = /datum/job/cmo

/datum/job/doctor
<<<<<<< HEAD
	title = "Medical Doctor"
	flag = DOCTOR
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = "CEV Northern Light"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Chief Medical Officer"
	selection_color = "#a8b69a"
	wage = WAGE_PROFESSIONAL
	alt_titles = list("Surgeon", "Nurse", "Medical Intern")
=======
	title = "Soteria Doctor"
	flag = DOCTOR
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = MAP_FACTION
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Chief Biolab Overseer"
	difficulty = "Boring to Overwhelming."
	selection_color = "#a8b69a"
	wage = WAGE_PROFESSIONAL
	minimum_character_age = 25
	alt_titles = list("Soteria Medical Student"=/decl/hierarchy/outfit/job/medical/doctor/medStudent,"Soteria Nurse"=/decl/hierarchy/outfit/job/medical/doctor/medNurse, "Soteria Emergency Physician"=/decl/hierarchy/outfit/job/medical/doctor/medERPhys, "Soteria Surgeon"=/decl/hierarchy/outfit/job/medical/doctor/medSurgeon)
	noob_name = "Soteria Medical Student"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	outfit_type = /decl/hierarchy/outfit/job/medical/doctor
	department_account_access = TRUE
	disallow_species = list(FORM_AGSYNTH, FORM_BSSYNTH, FORM_CHURCHSYNTH, FORM_NASHEF)

	access = list(
		access_moebius, access_medical_equip, access_morgue, access_surgery, access_chemistry, access_virology,
		access_genetics, access_external_airlocks, access_research_equipment, access_medical_suits, access_xenobiology
	)

	stat_modifiers = list(
		STAT_BIO = 40,
		STAT_COG = 10
	)

<<<<<<< HEAD
	perks = list(/datum/perk/selfmedicated)
=======
	perks = list(PERK_MEDICAL_EXPERT, PERK_ADVANCED_MEDICAL, PERK_CHEMIST)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							/datum/computer_file/program/chem_catalog,
							/datum/computer_file/program/camera_monitor)

	description = "The Doctor is a professional medic and surgeon dedicated to healing the sick and injured, at all costs.<br>\
	A broad range of medical procedures fall under your purview - diagnostics, general treatment, surgery, and virology.<br>\
	You are not expected to be an expert in all: specializing in an area is fine. Divide tasks amongst colleagues, with CBO guidance.<br>\
	Remember that chemistry has a dedicated specialist. Avoid this department unless it is notably short-staffed.<br>\
	Due to the nature of your work, you may find yourself confined to the department for the shift majority. Don't abandon patients."

<<<<<<< HEAD
	description = "You are a highly educated professional doctor, working a placement aboard the CEV Northern Light to treat the injured.<br>\
Your tasks will primarily keep you inside medbay, the place needs to have a doctor onsite at all times to treat incoming wounded. As a general rule, you should not leave medbay if you're the only one in it, make sure someone is covering for you if you go elsewhere.<br>\

As a doctor, a broad range of medical procedures fall under your potential purview. You are not expected to be able to perform all of these yourself, being a specialist is fine. <br>\
<br>\
	-Diagnostics: Figuring out what's wrong and how to fix it as quickly as possible. <br>\
	-General Treatment: Administering bandages, medicine, casts and placing people in a cryocell as necessary<br>\
	-Surgery: Opening the body under general anaesthetic to treat broken bones, organ damage and internal bleeding<br>\
	-Virology: The study and manipulation of viruses<br>\
	<br>\
Divide responsibilities among your colleagues to ensure each patient gets the treatment they need<br>\
You also have full access to chemistry, and can utilize  it if medical is short staffed. But if there is a dedicated chemist on staff, they take priority and the lab belongs to them<br>\
<br>\
Character Expectations:<br>\
You are a real doctor, and as such you are expected to hold a lot of qualifications. You've most likely completed many years of medical study, and hold a PHD in one or more medical fields.<br>\
You are expected to be knowledgeable and competent in at least basic treatment, you may have a specialty though."


	loyalties = "As a doctor, your first loyalty is to your conscience. You swore an oath to save lives and do no harm. It falls on you to be the ethical and moral core of the crew. You should speak up for prisoners, captured lifeforms, and test subjects. Nobody else will.<br>\

Your second loyalty is to your career with NanoTrasen, and to your coworkers in both Medical and Research. Help out your scientific colleagues, and aid in their pursuit of knowledge."

/obj/landmark/join/start/doctor
	name = "Medical Doctor"
	icon_state = "player-green"
	join_tag = /datum/job/doctor



/datum/job/chemist
	title = "Pharmacist"
	flag = CHEMIST
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = "CEV Northern Light"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Medical Officer"
	selection_color = "#a8b69a"
	wage = WAGE_PROFESSIONAL
	outfit_type = /decl/hierarchy/outfit/job/medical/chemist
=======
	duties = "Heal the sick and injured, whatever their complaint.<br>\
		Diagnose illnesses, offer general services, perform surgery, or even study viruses.<br>\
		Fill in at chemistry if a Chemist is unavailable."

/obj/landmark/join/start/doctor
	name = "Soteria Doctor"
	icon_state = "player-green"
	join_tag = /datum/job/doctor

/datum/job/recovery_team
	title = "Soteria Lifeline Technician"
	flag = RECOVERYTEAM
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = MAP_FACTION
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Chief Biolab Overseer"
	difficulty = "Ungratifying."
	selection_color = "#a8b69a"
	wage = WAGE_PROFESSIONAL
	outfit_type = /decl/hierarchy/outfit/job/medical/recovery_team
	disallow_species = list(FORM_AGSYNTH, FORM_CHURCHSYNTH, FORM_NASHEF)

	health_modifier = 5
	perks = list(PERK_MEDICAL_EXPERT, PERK_CHEMIST)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	access = list(
		access_moebius, access_medical_equip, access_morgue, access_surgery, access_chemistry, access_virology, access_orderly, access_medical_suits,
		access_psychiatrist, access_genetics, access_robotics, access_xenobiology, access_tox, access_xenoarch
	)

	stat_modifiers = list(
<<<<<<< HEAD
		STAT_COG = 10,
		STAT_MEC = 10,
		STAT_BIO = 30
	)

	perks = list(/datum/perk/selfmedicated/chemist)

	software_on_spawn = list(/datum/computer_file/program/chem_catalog,
							/datum/computer_file/program/scanner)

	description = "The pharmacist is a man of medicine, as much as of science. You mix up colorful liquids to make other, equally colorful, but more useful liquids.<br>\
	<br>\
	Your primary responsibility is working as a pharmacist. Prepare medicines for use by the medical staff, so that they can capably treat a broad variety of conditions. It's good to keep a stock of bicaridine, dexalin, peridaxon, and alkysine.<br>\
	<br>\
	Your secondary responsibility is as a chemical manufacturer for NanoTrasen generally. You may be requested to make non-medical chemicals for your colleagues in science, or even for other medical staff. Anyone within NanoTrasen's Medical and Research departments should be freely and quickly provided with anything they request. Don't question why, it's above your paygrade.<br>\
	<br>\
	Your third duty is to run a chemical sales outlet. You may get requests from other crewmembers to make acid, chemical grenades, smoke, cleaning products, napalm, or perhaps even just to make medicines. You are fully licensed to sell any and all chemicals to those outside of your department. Sell being the operative word here. If someone isn't a member of the Research and Medical departments, charge them for their chemicals.<br>\
	<br>\
	Its worth noting that you don't always have everything you need on hand. Some recipes will require external ingredients. Bicaridine, most notably, requires the roach toxin blattedin, so you should gather up roach corpses to hack apart for their chemicals. Pay assistants to do this if necessary"

	duties = "		Mix medicines for doctors<br>\
		Fill chemical requests for NanoTrasen staff<br>\
		Sell chemicals and chem grenades to outsiders"

	loyalties = "Your loyalty is to your career with NanoTrasen corp, and to your coworkers in both branches of NanoTrasen. Help out your scientific colleagues, and aid in their pursuit of knowledge."


/obj/landmark/join/start/chemist
	name = "Pharmacist"
=======
		STAT_TGH = 20,
		STAT_ROB = 20,
		STAT_VIG = 10,
		STAT_BIO = 20
	)

	software_on_spawn = list(/datum/computer_file/program/chem_catalog,
							/datum/computer_file/program/scanner)

	description = "Members of the recovery team are not men of science nor medicine, they are strictly in charge of enforcing the chief biolabs orders and sometimes the chief research overseer's orders.<br>\
	Your primary role is that of an armed thug for medical. You make sure that medical remains safe by ensuring people don't trespass or steal items and remove those who shouldn't be there, by force if necessary.<br>\
	Your secondary responsibility is that of an soteria enforcer. Actions that require in house enforcement such as aiding doctors and security with violent patients in medical, securing the virology lab during an outbreak, and aiding in the destruction of escape slimes or kudzu from science.<br>\
	Your third duty is to aid medical doctors and act as a paramedic in fixing patients and collecting patients, this can include retrieving chemicals, doing basic triage, and going out to recover injured patients.<br>\
	You are fully licensed to enforce the will of the overseer and to protect the soteria, its staff, and your patients with your personal weapons and armor.<br>\
	It's worth noting that you function heavily as a nurse when not acting as muscle and treatment of patients should be priority, in particular when assisting doctors."

	duties = "Act as a guard for medical, ensuring unneeded colonist leave and nothing is stolen.<br>\
		Aid medical doctors in any way you can.<br>\
		Act as a nurse for minor injuries, treating patients that a doctor needn't bother with.<br>\
		Ensure that any outbreaks are contained, such as slimes, infected monkeys, or kudzu."

/obj/landmark/join/start/chemist //This says chemist so I didn't have to edit the map shit when I changed this. Fix later. || Update: Whoever did this, you never fucking fixed it. I hate you. - Rebel0
	name = "Soteria Recovery Team"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "player-green"
	join_tag = /datum/job/recovery_team

/obj/landmark/join/start/paramedic // Same thing as above tbh. || I still hate you. -Rebel0
	name = "Soteria Recovery Team"
	icon_state = "player-green"
	join_tag = /datum/job/recovery_team


/datum/job/psychiatrist
<<<<<<< HEAD
	title = "Psychiatrist"
	flag = PSYCHIATRIST
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = "CEV Northern Light"
	total_positions = 1
	spawn_positions = 1
	wage = WAGE_PROFESSIONAL
	supervisors = "the Chief Medical Officer"
	selection_color = "#a8b69a"
=======
	title = "Soteria Psychiatrist"
	flag = PSYCHIATRIST
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	wage = WAGE_PROFESSIONAL
	supervisors = "the Soteria Biolab Overseer"
	difficulty = "Soul Crushing."
	selection_color = "#a8b69a"
	alt_titles = list("Soteria Psychologist", "Soteria Empath")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	outfit_type = /decl/hierarchy/outfit/job/medical/psychiatrist
	access = list(
		access_moebius, access_medical_equip, access_morgue, access_psychiatrist, access_chemistry, access_medical_suits
	)
	disallow_species = list(FORM_AGSYNTH, FORM_BSSYNTH, FORM_CHURCHSYNTH, FORM_NASHEF)

	perks = list(PERK_MEDICAL_EXPERT, PERK_PSI_PSYCHOLOGIST, PERK_CHEMIST)

	stat_modifiers = list(
		STAT_BIO = 25,
<<<<<<< HEAD
		STAT_COG = 15,
=======
		STAT_COG = 20,
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		STAT_VIG = 5
	)

	perks = list(/datum/perk/selfmedicated)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							/datum/computer_file/program/chem_catalog,
							/datum/computer_file/program/camera_monitor)

	description = "The Psychiatrist is a mental specialist that works to help colonists through their various issues and concerns.<br>\
	In some ways you are a professional conversationalist. Despite knowing advanced therapy techniques, sometimes a mere chat can work wonders.<br>\
	More eventful days may involve you having particularly unstable colonists sectioned, or interviewing criminals in coordination with Security.<br>\
	Remember that patient confidentiality is highly important in your profession. Keep sensitive information between you and the patient.<br>\
	Soteria psychs are also one of the most psionically adept members of the colony, with an innate understanding of how the mind works.<br>\
	If you become a psion, you have a greater variety of beneficial powers which you can use to aid the colony."

	duties = "Speak with anyone who desires help, no matter their rank or relation.<br>\
		Prescribe medicine and offer therapy courses for those who need it.<br>\
		Determine if individuals are fit for work or not. Help those who are proven unfit.<br>\
		Use your psionic gifts to assist the colony."

/obj/landmark/join/start/psychiatrist
<<<<<<< HEAD
	name = "Psychiatrist"
	icon_state = "player-green"
	join_tag = /datum/job/psychiatrist


/datum/job/paramedic
	title = "Paramedic"
	flag = PARAMEDIC
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = "CEV Northern Light"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Chief Medical Officer"
	selection_color = "#a8b69a"
	wage = WAGE_LABOUR_HAZARD
	outfit_type = /decl/hierarchy/outfit/job/medical/paramedic
	access = list(
		access_moebius, access_medical_equip, access_morgue, access_surgery, access_paramedic,
		access_eva, access_maint_tunnels, access_external_airlocks
	)

	stat_modifiers = list(
		STAT_BIO = 20,
		STAT_ROB = 10,
		STAT_TGH = 10,
		STAT_VIG = 10,
	)

	perks = list(/datum/perk/selfmedicated)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							/datum/computer_file/program/chem_catalog,
							 /datum/computer_file/program/camera_monitor)

	description = "You are a NanoTrasen Paramedic, The hero of the hour! While doctors largely spend their time cloistered away in medbay, your job is to be out there on the frontlines. You work in the field, sometimes treating people on the spot, sometimes bringing them back to medical for specialist treatment. <br>\

You have significant medical training, but typically you are not a doctor, and will most likely lack a medical degree. The actual doctors have seniority, and you should follow their orders, especially concerning treatment and diagnosis of a patient<br>\
<br>\
You need to be ready to run at a moment's notice, and as such you should take careful care of your gear. Pack as many medicines, treatments, rollerbeds and other equipment as you can. Be sure to bring along some kind of heavy tool for breaching sealed areas.<br>\
<br>\
When the wounded are inside medbay, you will often act as a porter, transporting patients to and from various specialist treatment rooms. If your labour can save time for a doctor, get to it.<br>\
<br>\
Once your duty to the living is dispensed, your secondary duty is to the dead. You are the designated corpse recovery staff, and you will often need to retrieve bodies from where they died, bring them back and store them in the morgue. This gives a reduction in that player's respawn time.<br>\
<br>\
This is the most dangerous part of your job, and recovery should only be attempted if you can reasonably do so without endangering yourself. If there are hostile creatures preventing recovery, call Security to deal with them.<br>\
<br>\
Character Expectations:<br>\
Paramedic is a physically demanding job, your character must be fit and strong. No fat bodies allowed<br>\
EVA training is expected, you should be confident in a medical Voidsuit, and optionally in driving an odysseus mech<br>\

Remember that you are a noncombatant. Any weapons you carry should be used for breaching and rescue, not for killing. Use violence only as a last resort to defend yourself or your patient"

	duties = "	Respond to distress calls, extract wounded people from dangerous situations, stabilize them at the scene, and take them to medbay for farther treatment as necessary<br>\
	Watch the crew monitor for signs of injuries or deaths and respond accordingly.<br>\
	Tour around departments checking up on the health of the crew. Administer first aid on scene as required<br>\
	During quieter times, retrieve the corpses of the dead from around the ship<br>\
	Run errands for the medbay staff, act as their hands outside of the medbay"

	loyalties = "	As a medical specialist, your first loyalty is to save lives, you swore an oath to do no harm. When in any dangerous situation, do your best to ensure as many as possible come out of it alive. A martyr complex is not uncommon in paramedics<br>\
	<br>\
	Your second loyalty is to your immediate superior, the Chief Medical Officer. Follow their instructions and policies."

/obj/landmark/join/start/paramedic
	name = "Paramedic"
	icon_state = "player-green"
	join_tag = /datum/job/paramedic

=======
	name = "Soteria Psychiatrist"
	icon_state = "player-green"
	join_tag = /datum/job/psychiatrist
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
