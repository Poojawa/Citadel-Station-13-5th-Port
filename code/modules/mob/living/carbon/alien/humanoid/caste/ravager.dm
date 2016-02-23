/mob/living/carbon/alien/humanoid/ravager
	name = "alien ravager"
	caste = "rav"
	maxHealth = 250
	health = 250
	icon = 'icons/mob/alienqueen.dmi'
	icon_state = "alienrav"
	heat_protection = 2 //the only fire resistant caste
	ventcrawler = 0
	pixel_x = -16
	mob_size = MOB_SIZE_LARGE
	butcher_results = list(/obj/item/weapon/xeno_skull/r = 1,
	/obj/item/weapon/reagent_containers/food/snacks/meat/slab/xeno = 5,
	/obj/item/stack/sheet/animalhide/xeno = 3,
	/obj/item/weapon/xenos_tail = 1,
	/obj/item/weapon/xenos_claw = 2)
	pressure_resistance = 200
	layer = 6
	unique_name = 0
	var/alt_inhands_file = 'icons/mob/alienqueen.dmi'

/mob/living/carbon/alien/humanoid/ravager/movement_delay()
	. = ..()
	. += 1

/mob/living/carbon/alien/humanoid/ravager/New()
	real_name = name
	internal_organs += new /obj/item/organ/internal/alien/plasmavessel/ravager
	..()

/mob/living/carbon/alien/humanoid/ravager/handle_hud_icons_health()
	if (healths)
		if(stat != DEAD)
			switch(health)
				if(250 to INFINITY)
					healths.icon_state = "health0"
				if(200 to 250)
					healths.icon_state = "health1"
				if(150 to 200)
					healths.icon_state = "health2"
				if(100 to 150)
					healths.icon_state = "health3"
				if(50 to 100)
					healths.icon_state = "health4"
				if(0 to 50)
					healths.icon_state = "health5"
				else
					healths.icon_state = "health6"
		else
			healths.icon_state = "health7"

/mob/living/carbon/alien/humanoid/ravager/adjustFireLoss(amount)
	if(amount > 0)
		..(amount * 0.5) //normal fire damage, 1/2 double damage
	else
		..(amount)
	return