//Security Technology
//Sol 35 mag

/datum/design/sol35_mag_pistol
	name = "Sol .35 Short Pistol Magazine"
	desc = "A magazine for compatible Sol .35 Short Weaponry."
	id = "sol35_shortmag"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/plastic = SHEET_MATERIAL_AMOUNT * 5)
	build_path = /obj/item/ammo_box/magazine/c35sol_pistol/starts_empty
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/sol35_mag_ext_pistol
	name = "Sol .35 Short Extended Pistol Magazine"
	desc = "An extended capacity magazine for compatible Sol .35 Short Weaponry."
	id = "sol35_shortextmag"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/plastic = SHEET_MATERIAL_AMOUNT * 10)
	build_path = /obj/item/ammo_box/magazine/c35sol_pistol/stendo/starts_empty
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

// Sol 40 Rifle
//These use plastic so they are still material costly, but should be not as bad

/datum/design/sol40_mag_rifle
	name = "Sol .40 Rifle Magazine"
	desc = "A short Sol .40 Rifle magazine for compatible Weaponry."
	id = "sol40_riflemag"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/plastic = SHEET_MATERIAL_AMOUNT * 5)
	build_path = /obj/item/ammo_box/magazine/c40sol_rifle/starts_empty
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/sol40_mag_standard_rifle
	name = "Sol .40 Rifle Standard Magazine"
	desc = "A regular sized Sol .40 Rifle magazine for compatible Weaponry."
	id = "sol40_riflstandardemag"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/plastic = SHEET_MATERIAL_AMOUNT * 10)
	build_path = /obj/item/ammo_box/magazine/c40sol_rifle/standard/starts_empty
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

//Grenade Launcher stuff

/datum/design/kiboko_mag
	name = "Kiboko Grenade Magazine"
	desc = "A standard magazine for compatible grenade launcher."
	id = "solgrenade_mag"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 10)
	build_path = /obj/item/ammo_box/magazine/c980_grenade/starts_empty
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/kiboko_box_mag
	name = "Kiboko Grenade Box Magazine"
	desc = "An extended capacity box magazine for compatible grenade launcher."
	id = "solgrenade_extmag"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 10)
	build_path = /obj/item/ammo_box/magazine/c980_grenade/drum/starts_empty
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY
// 12 Gauge Shell.. Individually.
// Because People will kill me if they realised the scale of economic
/datum/design/s12c_fslug
	name = "Frangible slug(Destructive)"
	desc = "A 12 gauge slug intended for destroying airlocks"
	id = "s12c_fslug"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 1, /datum/material/titanium = HALF_SHEET_MATERIAL_AMOUNT)
	build_path = /obj/item/ammo_casing/shotgun/frangible
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/s12c_antitide
	name = "12 Gauge Advanced Anti Riot Cartridge(Less-Lethal)"
	desc = "A 12 gauge cartridge filled with nanite electrodes, these are less lethal and will embed into a target."
	id = "s12c_antitide"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = HALF_SHEET_MATERIAL_AMOUNT, /datum/material/silver = SHEET_MATERIAL_AMOUNT * 2, /datum/material/gold = SHEET_MATERIAL_AMOUNT * 1)
	build_path = /obj/item/ammo_casing/shotgun/antitide
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

//12 Gauge Ammunition Boxes
//This shit is a mistake but we embraced it instead of removing it, They all will require plastic to make alongside the iron cost
//I hate it

/datum/design/advancedgaugeboxes
	name = "12 Gauge Advanced Buckshot Ammunition Box(Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_buckshot"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 20)
	build_path = /obj/item/ammo_box/advanced/s12gauge/buckshot
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY | DEPARTMENT_BITFLAG_CARGO

/datum/design/advancedgaugeboxes_slug
	name = "12 Gauge Advanced Slug Ammunition Box(Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_slug"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 25)
	build_path = /obj/item/ammo_box/advanced/s12gauge
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY | DEPARTMENT_BITFLAG_CARGO

/datum/design/advancedgaugeboxes_flech
	name = "12 Gauge Advanced Flechette Ammunition Box(Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_flechette"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 20, /datum/material/titanium = SHEET_MATERIAL_AMOUNT * 6, /datum/material/plastic = SHEET_MATERIAL_AMOUNT * 25)
	build_path = /obj/item/ammo_box/advanced/s12gauge/flechette
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/advancedgaugeboxes_antitide
	name = "12 Gauge Advanced Anti Riot Ammunition Box(Less-Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_antitide"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 10, /datum/material/silver = SHEET_MATERIAL_AMOUNT, /datum/material/plastic = SHEET_MATERIAL_AMOUNT * 25)
	build_path = /obj/item/ammo_box/advanced/s12gauge/antitide
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/advancedgaugeboxes_incinslug
	name = "12 Gauge Advanced Incendiary Slug Ammunition Box(Very Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_incinslug"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 25, /datum/material/plastic = SHEET_MATERIAL_AMOUNT * 25)
	build_path = /obj/item/ammo_box/advanced/s12gauge/incendiary
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/advancedgaugeboxes_hornet
	name = "12 Gauge Advanced Hornet Ammunition Box(Less-Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_hornet"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 8, /datum/material/silver = SHEET_MATERIAL_AMOUNT, /datum/material/plastic = SHEET_MATERIAL_AMOUNT * 25)
	build_path = /obj/item/ammo_box/advanced/s12gauge/beehive
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY | DEPARTMENT_BITFLAG_CARGO

/datum/design/advancedgaugeboxes_magnum
	name = "12 Gauge Advanced Magnum Ammunition Box(Very Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_magnum"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 35, /datum/material/plastic = SHEET_MATERIAL_AMOUNT * 25)
	build_path = /obj/item/ammo_box/advanced/s12gauge/magnum
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/advancedgaugeboxes_express
	name = "12 Gauge Advanced Express Ammunition Box(Very Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_express"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 25, /datum/material/plastic = SHEET_MATERIAL_AMOUNT * 25)
	build_path = /obj/item/ammo_box/advanced/s12gauge/express
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/advancedgaugeboxes_beanbagslug
	name = "12 Gauge Advanced Bean Bag Ammunition Box(Less-Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_bslug"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 10, /datum/material/plastic = SHEET_MATERIAL_AMOUNT * 25)
	build_path = /obj/item/ammo_box/advanced/s12gauge/bean
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY | DEPARTMENT_BITFLAG_CARGO

/datum/design/advancedgaugeboxes_rubbershot
	name = "12 Gauge Advanced Rubber Shot Ammunition Box(Less-Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_rubber"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 10, /datum/material/plastic = SHEET_MATERIAL_AMOUNT * 25)
	build_path = /obj/item/ammo_box/advanced/s12gauge/rubber
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY | DEPARTMENT_BITFLAG_CARGO

/datum/design/advancedgaugeboxes_db
	name = "12 Gauge Advanced Dragons Breath Ammunition Box(Very Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_db"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 20,  /datum/material/plasma = SHEET_MATERIAL_AMOUNT * 15 , /datum/material/plastic = SHEET_MATERIAL_AMOUNT * 25)
	build_path = /obj/item/ammo_box/advanced/s12gauge/dragonsbreath
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/advancedgaugeboxes_breaching
	name = "12 Gauge Advanced Frangible Slug Ammunition Box(Destructive)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_br"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 20,  /datum/material/titanium = SHEET_MATERIAL_AMOUNT * 35 , /datum/material/plastic = SHEET_MATERIAL_AMOUNT * 25)
	build_path = /obj/item/ammo_box/advanced/s12gauge/frangible
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/advancedgaugeboxes_laser
	name = "12 Gauge Advanced Scatter Laser Ammunition Box(Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_laser"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 15, /datum/material/glass = SMALL_MATERIAL_AMOUNT * 15, /datum/material/gold = SHEET_MATERIAL_AMOUNT * 10)
	build_path = /obj/item/ammo_box/advanced/s12gauge/laser
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/advancedgaugeboxes_ion
	name = "12 Gauge Advanced Scatter Ion Ammunition Box(Very Lethal - Silicon)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_ion"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 15, /datum/material/plastic = SMALL_MATERIAL_AMOUNT * 15, /datum/material/gold = SHEET_MATERIAL_AMOUNT * 10)
	build_path = /obj/item/ammo_box/advanced/s12gauge/scatterion
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/advancedgaugeboxes_hunting
	name = "12 Gauge Advanced Hunting Slug Ammunition Box(Less Lethal)"
	desc = "A 12 gauge ammunition box for shotgun shells."
	id = "s12g_huntingslug"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 8)
	build_path = /obj/item/ammo_box/advanced/s12gauge/hunter
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY | DEPARTMENT_BITFLAG_CARGO

// Misc Gun Stuff

/datum/design/m9mm_mag
	name = "9x25mm Mk2 Pistol Magazine(Lethal)"
	desc = "A standard magazine for pistol using 9x25mm Mk2."
	id = "m9mm_mag"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 12)
	build_path = /obj/item/ammo_box/magazine/m9mm
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/m9mm_mag_rubber
	name = "9x25mm Mk2 Pistol Magazine(Less-Lethal)"
	desc = "A standard magazine for pistol using 9x25mm Mk2."
	id = "m9mm_mag_rubber"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 5)
	build_path = /obj/item/ammo_box/magazine/m9mm/rubber
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/m9mm_mag_ihdf
	name = "9x25mm Mk2 Pistol Magazine(Non-Lethal)"
	desc = "A standard magazine for pistol using 9x25mm Mk2."
	id = "m9mm_mag_ihdf"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/plastic = SHEET_MATERIAL_AMOUNT * 5)
	build_path = /obj/item/ammo_box/magazine/m9mm/ihdf
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/m9mm_mag_ext
	name = "9x25mm Mk2 Extended Pistol Magazine(Lethal)"
	desc = "A standard magazine for pistol using 9x25mm Mk2."
	id = "m9mm_mag_ext"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 38)
	build_path = /obj/item/ammo_box/magazine/m9mm/stendo
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/m9mm_mag_ext_rubber
	name = "9x25mm Mk2 Extended Rubber Pistol Magazine(Less-Lethal)"
	desc = "A standard magazine for pistol using 9x25mm Mk2."
	id = "m9mm_mag_ext_b"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 38)
	build_path = /obj/item/ammo_box/magazine/m9mm/stendo/rubber
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/m9mm_mag_ext_hp
	name = "9x25mm Mk2 Extended Hollow Point Pistol Magazine(Very Lethal)"
	desc = "A standard magazine for pistol using 9x25mm Mk2."
	id = "m9mm_mag_ext_hp"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 38)
	build_path = /obj/item/ammo_box/magazine/m9mm/stendo/hp
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/m45_mag
	name = ".460 Ceres Pistol Magazine(Lethal)"
	desc = "A standard magazine for pistol using .460 Ceres."
	id = "m45_mag"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 5)
	build_path = /obj/item/ammo_box/magazine/m45
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

//IDMA Gun Stuff

//Conversion Kit

/datum/design/sol_smg_rapidfire_kit //this is currently un-balanced, please fix it when convenient - Aka now. It should be fine
	name = "Romulus SMG 'Shaytan' Full-Auto Conversion Kit(Very Lethal)"
	desc = "The kit to brutalise your functional submachine gun into a monstrosity that fires full-auto, all the time."
	id = "sol_smg_rapidfire_kit"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 5, /datum/material/glass =SHEET_MATERIAL_AMOUNT, /datum/material/plastic =SHEET_MATERIAL_AMOUNT * 3.5, /datum/material/titanium =HALF_SHEET_MATERIAL_AMOUNT)
	build_path = /obj/item/weaponcrafting/gunkit/sol_smg_rapidfire_kit
	category = list(
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_KITS
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY
	autolathe_exportable = FALSE
