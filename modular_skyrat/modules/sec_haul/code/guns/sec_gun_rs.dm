//Security Crafting Recipe

/datum/crafting_recipe/sol_rifle_carbine_kit
	name = "Romulus Carbine Conversion"
	result = /obj/item/gun/ballistic/automatic/rom_carbine/no_mag
	reqs = list(
		/obj/item/gun/ballistic/automatic/sol_rifle = 1,
		/obj/item/weaponcrafting/gunkit/sol_rifle_carbine_kit = 1,
	)
	steps = list(
		"Remove the magazine",
		"Rack the bolt, leaving it open"
	)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/sol_rifle_carbine_kit/check_requirements(mob/user, list/collected_requirements)
	var/obj/item/gun/ballistic/automatic/sol_rifle/the_piece = collected_requirements[/obj/item/gun/ballistic/automatic/sol_rifle][1]
	if(!the_piece.bolt_locked)
		return FALSE
	if(the_piece.magazine)
		return FALSE
	return ..()

/datum/crafting_recipe/sol_smg_rapidfire_kit
	name = "'Shaytan' SMG Conversion" //edited by Bangle
	result = /obj/item/gun/ballistic/automatic/rom_smg/no_mag
	reqs = list(
		/obj/item/gun/ballistic/automatic/sol_smg = 1,
		/obj/item/weaponcrafting/gunkit/sol_smg_rapidfire_kit = 1,
	)
	steps = list(
		"Remove the magazine",
		"Leave the bolt open"
	)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/sol_smg_rapidfire_kit/check_requirements(mob/user, list/collected_requirements)
	var/obj/item/gun/ballistic/automatic/sol_smg/the_piece = collected_requirements[/obj/item/gun/ballistic/automatic/sol_smg][1]
	if(the_piece.bolt_locked)
		return FALSE
	if(the_piece.magazine)
		return FALSE
	return ..()

/datum/crafting_recipe/sol_bolt_to_rifle
	name = "Sol Battle Rifle Conversion"
	result = /obj/item/gun/ballistic/automatic/sol_rifle/no_mag
	reqs = list(
		/obj/item/gun/ballistic/rifle/carwil = 1,
		/obj/item/weaponcrafting/gunkit/sol_bolt_to_rifle = 1,
	)
	steps = list(
		"Remove the magazine",
		"Rack the bolt, leaving it open"
	)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/sol_bolt_to_rifle/check_requirements(mob/user, list/collected_requirements)
	var/obj/item/gun/ballistic/rifle/carwil/the_piece = collected_requirements[/obj/item/gun/ballistic/rifle/carwil][1]
	if(!the_piece.bolt_locked)
		return FALSE
	if(the_piece.magazine)
		return FALSE
	return ..()

/datum/crafting_recipe/cck_to_glocknineteen
	name = "General Pistol Number 9 Conversion Kit"
	result = /obj/item/gun/ballistic/automatic/pistol/nt_glock/empty
	reqs = list(
		/obj/item/gun/ballistic/automatic/pistol/sec_glock/security = 1,
		/obj/item/weaponcrafting/gunkit/cck_to_glocknineteen = 1,
	)
	steps = list(
		"Remove the magazine",
		"Rack the bolt, leaving it open"
	)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/cck_to_glocknineteen/check_requirements(mob/user, list/collected_requirements)
	var/obj/item/gun/ballistic/automatic/pistol/sec_glock/security/the_piece = collected_requirements[/obj/item/gun/ballistic/automatic/pistol/nt_glock/empty][1]
	if(!the_piece.bolt_locked)
		return FALSE
	if(the_piece.magazine)
		return FALSE
	return ..()

/datum/crafting_recipe/cck_to_glockeightteen
	name = "General Pistol Number 8 Conversion Kit"
	result = /obj/item/gun/ballistic/automatic/pistol/nt_glock/spec/empty
	reqs = list(
		/obj/item/gun/ballistic/automatic/pistol/sec_glock = 1,
		/obj/item/weaponcrafting/gunkit/cck_to_glockeightteen = 1,
	)
	steps = list(
		"Remove the magazine",
		"Rack the bolt, leaving it open"
	)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/cck_to_glocknineteen/check_requirements(mob/user, list/collected_requirements)
	var/obj/item/gun/ballistic/automatic/pistol/sec_glock/security/the_piece = collected_requirements[/obj/item/gun/ballistic/automatic/pistol/nt_glock/spec/empty][1]
	if(!the_piece.bolt_locked)
		return FALSE
	if(the_piece.magazine)
		return FALSE
	return ..()

/datum/crafting_recipe/det_to_signalisrevolver
	name = "Revolver Conversion Kit"
	result = /obj/item/gun/ballistic/revolver/nt_revolver
	reqs = list(
		/obj/item/gun/ballistic/revolver/c38/detective = 1,
		/obj/item/weaponcrafting/gunkit/det_to_signalisrevolver = 1,
	)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED

//Generic Gun Resource here.. if any
