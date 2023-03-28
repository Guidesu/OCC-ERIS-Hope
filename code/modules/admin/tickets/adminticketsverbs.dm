//Verbs

<<<<<<< HEAD
ADMIN_VERB_ADD(/client/proc/openAdminTicketUI, R_ADMIN, FALSE)
=======
ADMIN_VERB_ADD(/client/proc/openAdminTicketUI, R_ADMIN|R_MOD|R_MENTOR|R_DEBUG, FALSE)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/client/proc/openAdminTicketUI()

	set name = "Open Admin Ticket Interface"
	set category = "Admin"

<<<<<<< HEAD
	if(!check_rights(R_ADMIN))
=======
	if(!check_rights(R_ADMIN|R_MOD|R_MENTOR|R_DEBUG))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		return

	SStickets.showUI(usr)

<<<<<<< HEAD
ADMIN_VERB_ADD(/client/proc/resolveAllAdminTickets, R_ADMIN, FALSE)
=======
ADMIN_VERB_ADD(/client/proc/resolveAllAdminTickets, R_ADMIN|R_MOD, FALSE)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/client/proc/resolveAllAdminTickets()
	set name = "Resolve All Open Admin Tickets"
	set category = null

<<<<<<< HEAD
	if(!check_rights(R_ADMIN))
=======
	if(!check_rights(R_ADMIN|R_MOD))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		return

	if(alert("Are you sure you want to resolve ALL open admin tickets?","Resolve all open admin tickets?","Yes","No") != "Yes")
		return

	SStickets.resolveAllOpenTickets()

<<<<<<< HEAD
ADMIN_VERB_ADD(/client/verb/openAdminUserUI, R_ADMIN, FALSE)
=======
//This shouldn't be permissions locked.
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/client/verb/openAdminUserUI()
	set name = "My Admin Tickets"
	set category = "Admin"
	SStickets.userDetailUI(usr)
