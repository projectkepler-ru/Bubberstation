//Choice Beacon for blueshield, old.

/obj/item/choice_beacon/old_blueshield
	name = "blueshield weapon beacon"
	desc = "A single use beacon to deliver a weapon of your choice. Please only call this in your office"
	company_source = "Sol Security Solution"
	company_message = span_bold("Supply pod incoming, please stand by.")

/obj/item/choice_beacon/old_blueshield/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Energy Revolver" = /obj/item/gun/energy/e_gun/blueshield,
		"Energy Carbine" = /obj/item/gun/energy/e_gun/stun/blueshield,
		".585 SMG" = /obj/item/storage/toolbox/guncase/skyrat/xhihao_large_case/bogseo //This can obviously be replaced out with any gun of your choice for future coder
	)

	return selectable_gun_types


//Both of these are defunk but still exist for archival purpose incase someone want to re-visit them later, or as references


/obj/item/choice_beacon/ntc
	name = "gunset beacon"
	desc = "A single use beacon to deliver a gunset of your choice. Please only call this in your office"
	company_source = "Trappiste Fabriek Company"
	company_message = span_bold("Supply pod incoming, please stand by.")

/obj/item/choice_beacon/ntc/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Takbok" = /obj/item/storage/toolbox/guncase/skyrat/pistol/trappiste_small_case/takbok,
		"Skild" = /obj/item/storage/toolbox/guncase/skyrat/pistol/trappiste_small_case/skild
	)

	return selectable_gun_types

//Station Central Command Staff, Aka BS and CCR, use as needed!

/obj/item/choice_beacon/station_magistrate
	name = "nanotrasen dignitaries weapon beacon"
	desc = "A single use beacon to deliver a weapon of your choice. Please only call this in your office"
	company_source = "Romulus Armoury"
	company_message = span_bold("Supply pod incoming, please stand by.")

/obj/item/choice_beacon/station_magistrate/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Energy Revolver" = /obj/item/gun/energy/e_gun/blueshield,
		".457 Romulus Revolver" = /obj/item/storage/toolbox/guncase/skyrat/hos_revolver,
		".460 Rowland Magnum Pistol" = /obj/item/storage/toolbox/guncase/skyrat/pistol/m45a5
	)

	return selectable_gun_types

/obj/item/advanced_choice_beacon/blueshield
	name = "blushield equipment beacon"
	desc = "A single use beacon to deliver a weapon of your choice. Please only call this in your office"
	possible_choices = list(/obj/structure/closet/crate/secure/weapon/blueshied/paradise, /obj/structure/closet/crate/secure/weapon/blueshied/romtech, /obj/structure/closet/crate/secure/weapon/blueshied/aegis, /obj/structure/closet/crate/secure/weapon/blueshied/hero)


/obj/item/advanced_choice_beacon/blueshield/get_available_options()
	var/list/options = list()
	for(var/iterating_choice in possible_choices)
		var/obj/structure/closet/crate/secure/weapon/blueshied/praetorian_choice = iterating_choice
		var/datum/radial_menu_choice/option = new
		option.image = image(icon = initial(praetorian_choice.icon), icon_state = initial(praetorian_choice.icon_state))
		option.info = span_boldnotice("[initial(praetorian_choice.loadout_desc)]")

		options[praetorian_choice] = option

	sort_list(options)

	return options

/obj/structure/closet/crate/secure/weapon/blueshied
	var/loadout_desc
/obj/structure/closet/crate/secure/weapon/blueshied/paradise
	name = "Cyberiad Blueshield"
	loadout_desc = "An assortment of classic blueshied equipment. \
		Contains X-02 Energy Revolver, self recharging. A box of tracking implants, and a silver tipped telescopic baton"

/obj/structure/closet/crate/secure/weapon/blueshied/paradise/PopulateContents()
	new /obj/item/gun/energy/e_gun/blueshield(src)

/obj/structure/closet/crate/secure/weapon/blueshied/romtech
	name = "Romulus Executive Protection Detail"
	loadout_desc = "Standard Romulus and Terran secret service equipment. \
		Contains CMG-2 Commando, 2 .117 Magazines, a colt police revolver with 2 speedloaders, an ammo pouch, a telescopicshield and a webbing."

/obj/structure/closet/crate/secure/weapon/blueshied/romtech/PopulateContents()
	new /obj/item/storage/toolbox/guncase/skyrat/pistol/blueshield_cmg(src)

//Security Sidearm

/obj/item/choice_beacon/security_pistol
	name = "sidearm weapon beacon"
	desc = "A single use beacon to deliver a weapon of your choice. Please only call this in your office"
	company_source = "Romulus Armoury"
	company_message = span_bold("Supply pod incoming, please stand by.")

/obj/item/choice_beacon/security_pistol/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Standard 9x25mm Mk2 Pistol" = /obj/item/storage/toolbox/guncase/skyrat/pistol/trappiste_small_case/ladon,
		"Police Special 10mm Auto Revolver" = /obj/item/storage/toolbox/guncase/skyrat/pistol/trappiste_small_case/nt_revolver
	)

	return selectable_gun_types
