// For life.dm Let's not let EVERY mob have vorecode, kthx - Pooj


	/*/ Start vore code. Digestion code is handled here.
	proc/handle_internal_contents()
		// For each belly type
		for (var/bellytype in internal_contents)
			var/datum/belly/B = internal_contents[bellytype]
			for(var/atom/movable/M in B.internal_contents)
				if(M.loc != src)
					B.internal_contents -= M
					log_debug("Had to remove [M] from belly [B] in [src]")
			B.process_Life()
	//End vore code.