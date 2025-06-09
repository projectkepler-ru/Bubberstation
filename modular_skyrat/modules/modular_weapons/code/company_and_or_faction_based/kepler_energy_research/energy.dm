/*
Lever Rifle
*/

/obj/item/gun/energy/laser/thermal //the common parent of these guns, it just shoots hard bullets, somoene might like that?
	name = "hardlight rifle"
	desc = "A high velocity slugthrower created by kepler energy research."
	icon_state = "infernopistol"
	inhand_icon_state = null
	ammo_type = list(/obj/item/ammo_casing/energy/nanite)
	shaded_charge = TRUE
	ammo_x_offset = 1
	obj_flags = UNIQUE_RENAME
	dual_wield_spread = 5 //as intended by the coders

/obj/item/gun/energy/laser/thermal/add_bayonet_point()
	AddComponent(/datum/component/bayonet_attachable, offset_x = 19, offset_y = 13)

/obj/item/gun/energy/laser/thermal/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/empprotection, EMP_PROTECT_SELF|EMP_PROTECT_CONTENTS)
	AddComponent( \
		/datum/component/crank_recharge, \
		charging_cell = get_cell(), \
		spin_to_win = TRUE, \
		charge_amount = LASER_SHOTS(8, STANDARD_CELL_CHARGE), \
		cooldown_time = 0.8 SECONDS, \
		charge_sound = 'sound/items/weapons/kinetic_reload.ogg', \
		charge_sound_cooldown_time = 0.8 SECONDS, \
	)
