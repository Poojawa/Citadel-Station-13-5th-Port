/mob/living/simple_animal/dragon
	name = "\improper dragon"
	real_name = "dragon"
	desc = "Aww, how cute!"
	icon = 'icons/mob/dragon.dmi'
	icon_state = "dragongreen"
	icon_living = "dragongreen"
	icon_dead = "dragongreen"
	response_help  = "pets"
	response_disarm = "gently moves aside"
	response_harm   = "hits"
//	stop_automated_movement = 1
	harm_intent_damage = 15
	maxHealth = 150
	health = 150
	see_in_dark = 7
	turns_per_move = 5
	pixel_x = -8
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab = 9)
	mob_size = MOB_SIZE_LARGE

/mob/living/simple_animal/dragon/green
/mob/living/simple_animal/dragon/red
/mob/living/simple_animal/dragon/white
	icon_state = "dragonwhite"
	icon_living = "dragonwhite"
	icon_dead = "dragonwhite"
/mob/living/simple_animal/dragon/white/randomcolor
/mob/living/simple_animal/dragon/white/randomcolor/New()
	..()
	color = rgb(rand(0, 96), rand(0, 96), rand(0, 96))