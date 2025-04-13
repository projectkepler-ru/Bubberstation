//Choice Beacon for blueshield, old.

/obj/item/choice_beacon/old_blueshield
	name = "blueshield weapon beacon"
	desc = "A single use beacon to deliver a weapon of your choice. Please only call this in your office"
	company_source = "Sol Security Solution"
	company_message = span_bold("Supply Pod incoming please stand by")

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
	company_message = span_bold("Supply Pod incoming please stand by")

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
	company_message = span_bold("Supply Pod incoming please stand by")

/obj/item/choice_beacon/station_magistrate/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Energy Revolver" = /obj/item/gun/energy/e_gun/blueshield,
		".457 Romulus Revolver" = /obj/item/storage/toolbox/guncase/skyrat/hos_revolver,
		".460 Rowland Magnum Pistol" = /obj/item/storage/toolbox/guncase/skyrat/pistol/m45a5
	)

	return selectable_gun_types

/obj/item/choice_beacon/blueshield
	name = "nanotrasen dignitaries weapon beacon"
	desc = "A single use beacon to deliver a weapon of your choice. Please only call this in your office"
	company_source = "Romulus Armoury"
	company_message = span_bold("Supply Pod incoming please stand by")

/obj/item/choice_beacon/blueshield/generate_display_names()
    var/list/options = list(
		"Energy Revolver" = /obj/item/gun/energy/e_gun/blueshield,
		".457 Romulus Revolver" = /obj/item/storage/toolbox/guncase/skyrat/hos_revolver,
		".460 Rowland Magnum Pistol" = /obj/item/storage/toolbox/guncase/skyrat/pistol/m45a5
	)
    var/list/radial_display = list(
		"Energy Revolver" = /obj/item/gun/energy/e_gun/blueshield,
		".457 Romulus Revolver" = /obj/item/storage/toolbox/guncase/skyrat/hos_revolver,
		".460 Rowland Magnum Pistol" = /obj/item/storage/toolbox/guncase/skyrat/pistol/m45a5
	)
            continue
        options[all_clans::name] = all_clans

        var/datum/radial_menu_choice/option = new
        option.image = image(icon = all_clans::join_icon, icon_state = all_clans::join_icon_state)
        option.info = "[all_clans::name] - [span_boldnotice(all_clans::join_description)]"
        radial_display[all_clans::name] = option

    var/selectable_gun_types = show_radial_menu(person_selecting, owner.current, radial_display)
    selectable_gun_types = options[selectable_gun_types]
    if(QDELETED(src) || QDELETED(owner.current))
        return FALSE
    if(!chosen_clan)
        to_chat(person_selecting, span_announce("You choose to remain ignorant, for now."))
        return
    my_clan = new chosen_clan(src)

//Security Sidearm

/obj/item/choice_beacon/security_pistol
	name = "sidearm weapon beacon"
	desc = "A single use beacon to deliver a weapon of your choice. Please only call this in your office"
	company_source = "Romulus Armoury"
	company_message = span_bold("Supply Pod incoming please stand by")

/obj/item/choice_beacon/security_pistol/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Standard 9x25mm Mk2 Pistol" = /obj/item/storage/toolbox/guncase/skyrat/pistol/trappiste_small_case/nt_glock,
		"Police Special 10mm Auto Revolver" = /obj/item/storage/toolbox/guncase/skyrat/pistol/trappiste_small_case/nt_revolver
	)

	return selectable_gun_types
