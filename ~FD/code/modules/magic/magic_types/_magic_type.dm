GLOBAL_REFERENCE_LIST_INDEXED(magic_types, /datum/magic_type, name)

/datum/magic_type
    var/name = ""
    var/list/allowed_weapons = list(
        /obj/item/weapon/gun,
        )
    
/datum/magic_type/proc/is_allowed(atom/weapon)
    return is_type_in_list(weapon, allowed_weapons)

/datum/magic_type/proc/use(obj/projectile/bullet, mob/user, atom/weapon)
    if(istype(weapon, /obj/item/weapon/gun/shotgun))
        return fire_shotgun(bullet, user, weapon)
    if(istype(weapon, /obj/item/weapon/gun/flamer))
        return fire_flamer(bullet, user, weapon)
    else
        return fire_basic(bullet, user, weapon)

/datum/magic_type/proc/fire_shotgun(obj/projectile/bullet, mob/user, atom/weapon)

/datum/magic_type/proc/fire_flamer(obj/projectile/bullet, mob/user, atom/weapon)

/datum/magic_type/proc/fire_basic(obj/projectile/bullet, mob/user, atom/weapon)
