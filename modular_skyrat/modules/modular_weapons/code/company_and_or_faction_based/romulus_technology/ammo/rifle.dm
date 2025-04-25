/obj/item/ammo_casing/caflechette
	name = "flechette steel penetrator (Armour Piercing)"
	desc = "A Romfed standard rifle flechette."

	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40sol"

	caliber = CALIBER_FLECHETTE
	projectile_type = /obj/projectile/bullet/caflechette
	custom_materials = AMMO_MATS_SHOTGUN_FLECH
	advanced_print_req = TRUE
	can_be_printed = TRUE

/obj/item/ammo_casing/caflechette/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)


/obj/projectile/bullet/caflechette
	name = "flechette penetrator"
	damage = 15
	armour_penetration = 60
	wound_bonus = 5
	bare_wound_bonus = 5
	embed_type = /datum/embedding/caflechette
	dismemberment = 0 // THIS MUST NOT DISMEMBER

/datum/embedding/caflechette
	embed_chance = 30
	pain_chance = 70
	fall_chance = 50
	jostle_chance = 80
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.1
	pain_mult = 5
	rip_time = 5 SECONDS

/obj/item/ammo_casing/caflechette/ripper
	name = "flechette silicon ripper (Wounding)"
	desc = "A Romfed standard rifle flechette."
	projectile_type = /obj/projectile/bullet/caflechette/ripper
	custom_materials = AMMO_MATS_SHOTGUN_FLECH

/obj/projectile/bullet/caflechette/ripper
	name = "flechette dart"
	damage = 10
	wound_bonus = 10
	bare_wound_bonus = 25
	embed_type = /datum/embedding/ripper
	armour_penetration = 40 //defeat basic armour

/datum/embedding/ripper
	embed_chance = 200
	pain_chance = 10
	fall_chance = 20
	jostle_chance = 80
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.9
	pain_mult = 1
	rip_time = 5 SECONDS

/obj/item/ammo_casing/caflechette/ballpoint
	name = "ballistic steel ball (Less Lethal)"
	desc = "A bullet casing with a large metallic ball as a projectile."
	projectile_type = /obj/projectile/bullet/caflechette/ballpoint
	custom_materials = AMMO_MATS_SHOTGUN_FLECH

/obj/projectile/bullet/caflechette/ballpoint
	name = "high velocity steel ball"
	damage = 12
	wound_bonus = 5
	bare_wound_bonus = 25
	sharpness = SHARP_EDGED
	armour_penetration = 20
	shrapnel_type = /obj/item/shrapnel/stingball
	embed_type = /datum/embedding/ballpoint
	stamina = 24
	ricochet_chance = 100
	ricochets_max = 3
	ricochet_auto_aim_angle = 90
	ricochet_auto_aim_range = 5
	eyeblur = 2 SECONDS

/datum/embedding/ballpoint
	embed_chance = 80
	fall_chance = 15
	jostle_chance = 15
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 1
	pain_mult = 2
	jostle_pain_mult = 3
	rip_time = 5 SECONDS
	pain_chance = 30

/obj/item/ammo_casing/caflechette/magnesium
	name = "magnesium rod"
	projectile_type = /obj/projectile/bullet/caflechette/magnesium
	custom_materials = AMMO_MATS_SHOTGUN_PLASMA

/obj/projectile/bullet/caflechette/magnesium
	name = "high velocity magnesium rod"
	damage = 8
	wound_bonus = 15
	bare_wound_bonus = 15
	embed_type = /datum/embedding/magnesium
	armour_penetration = 200 //does really low damage
	damage_type = BURN

/datum/embedding/magnesium
	embed_chance = 65
	pain_chance = 10
	fall_chance = 25
	jostle_chance = 90
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.5
	pain_mult = 2
	rip_time = 5 SECONDS

/obj/projectile/bullet/caflechette/magnesium/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(3)
		M.ignite_mob()
