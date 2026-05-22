// ============================================================================
// Basic Ship Map Template by Umbree J.
// Use this as a starting point for creating new overmap ships.
// ----------------------------------------------------------------------------
// Make sure to add this file to "maps\offmap_vr\common_offmaps.dm" as an include. Prob near ctrl+f 'Overmap ship spawns' or line 642 maybe..
// You'll know how to do that when you get there. :>
// ============================================================================

// Optional: Compile map for CI testing if needed :>
#ifdef MAP_TEST
#include "baseship.dmm"
#endif

// ---------------------------------------------------------------------------
// Map Template
// ---------------------------------------------------------------------------
// OH! And I forgot. Just as a picky personal thing make sure vars are all lowercase. Can keep the string stuff to what you like, but folders and vars should be lowercase~
/datum/map_template/om_ships/baseship
	name = "OM Ship - BaseShip"
	desc = "A simple base template for creating new ships."
	mappath = "maps/umbreesships/baseship.dmm"

// ---------------------------------------------------------------------------
// Areas
// ---------------------------------------------------------------------------

/area/baseship
	name = "BaseShip - Unknown"
	requires_power = 1

/area/baseship/bridge
	name = "BaseShip - Bridge"

/area/baseship/hallway
	name = "BaseShip - Hallway"

/area/baseship/engine_room
	name = "BaseShip - Engine Room"
	flags = RAD_SHIELDED

/area/baseship/crew_quarters
	name = "BaseShip - Crew Quarters"

/area/baseship/medical
	name = "BaseShip - Medical Bay"

/area/baseship/storage
	name = "BaseShip - Storage"

/area/baseship/hanger
	name = "BaseShip - Hanger"

// More so used as a 'fix me' area for when you want to add more areas but not stop mapping .v.
/area/baseship/uncategorized
	name = "BaseShip - Uncategorized"
	dynamic_lighting = FALSE

// If your ship uses Ion Engines -- they require an APC area to use. Place a singular area with an APC in like the corner of your engineering if you want to use them.
// Looks kinda funky but it works.
///area/baseship/engines
//	name = "BaseShip - Engines"
//	dynamic_lighting = FALSE

// ---------------------------------------------------------------------------
// Waypoint Instances
// ---------------------------------------------------------------------------
//
// These allow quick placement in the map editor without having to
// reconfigure vars like base_area, base_turf, and landmark_tag each time. Saves me time :<
//

// Generic space waypoint
/obj/effect/shuttle_landmark/premade/baseship
	name = "BaseShip Waypoint"
	base_area = /area/space
	base_turf = /turf/space

// Forward waypoint
/obj/effect/shuttle_landmark/premade/baseship/fore
	name = "BaseShip - Fore"
	landmark_tag = "base_fore"

// Aft waypoint
/obj/effect/shuttle_landmark/premade/baseship/aft
	name = "BaseShip - Aft"
	landmark_tag = "base_aft"

// Port waypoint
/obj/effect/shuttle_landmark/premade/baseship/port
	name = "BaseShip - Port"
	landmark_tag = "base_port"

// Starboard waypoint
/obj/effect/shuttle_landmark/premade/baseship/starboard
	name = "BaseShip - Starboard"
	landmark_tag = "base_starboard"

// ---------------------------------------------------------------------------
// Shuttle Landmarks
// Give or take the same thing as above. Just that these are slightly coded more.
// ---------------------------------------------------------------------------

/obj/effect/shuttle_landmark/shuttle_initializer/baseship_shuttle
	name = "BaseShip Shuttle Dock"
	base_area = /area/baseship/hanger
	base_turf = /turf/simulated/floor/reinforced
	landmark_tag = "omship_spawn_BaseShip_shuttle"
	docking_controller = "BaseShip_shuttle_dock"
	shuttle_type = /datum/shuttle/autodock/overmap/baseship_shuttle

// ---------------------------------------------------------------------------
// Shuttle Areas
// ---------------------------------------------------------------------------

/area/shuttle/baseship_shuttle
	name = "BaseShip - Shuttle"
	requires_power = 1
	dynamic_lighting = 1
	base_turf = /turf/simulated/floor/reinforced

// ---------------------------------------------------------------------------
// Shuttle Console
// ---------------------------------------------------------------------------

/obj/machinery/computer/shuttle_control/explore/baseship_shuttle
	name = "shuttle control console"
	shuttle_tag = "BaseShip Shuttle"
	req_one_access = list(ACCESS_CENT_GENERAL)

// ---------------------------------------------------------------------------
// Shuttle Data
// ---------------------------------------------------------------------------

/datum/shuttle/autodock/overmap/baseship_shuttle
	name = "BaseShip Shuttle"
	current_location = "omship_spawn_BaseShip_shuttle"
	docking_controller_tag = "BaseShip_shuttle_docker"
	shuttle_area = /area/shuttle/baseship_shuttle
	fuel_consumption = 0
	defer_initialisation = TRUE
	range = 1

// ---------------------------------------------------------------------------
// The Actual Ship Object Finally
// ---------------------------------------------------------------------------

/obj/effect/overmap/visitable/ship/baseship
	name = "BaseShip"
	desc = "A basic spacefaring vessel."
	// icon = 'icons/obj/overmap.dmi'
	icon_state = "moe_cruiser_g"
	// color = "#00aaff" // Incase you want some spice.
	scanner_desc = @{"[i]Registration[/i]: Civilian Vessel
[i]Class[/i]: Light Transport
[i]Transponder[/i]: Transmitting (CIV), non-hostile"} // Flavortext mostly. Seen when the ship is scanned and put onto a piece of paper for some reason. Follows those formatting.
	vessel_mass = 8000
	vessel_size = SHIP_SIZE_SMALL
	initial_generic_waypoints = list("base_fore", "base_aft", "base_port", "base_starboard")
	initial_restricted_waypoints = list("BaseShip Shuttle" = list("omship_spawn_BaseShip_shuttle"))
	// For the two above me. These both point to the premade waypoint stuff. To add more here. Add more there. Quick'n easy :)
	fore_dir = NORTH
	known = FALSE

	// Skybox .dmi here. Visible when on the same 'overmap' grid and not as the ship.
	// 		-- Excluding the random empty space z you sometimes go to if you fall away. I'm not sure on that one..
	skybox_icon = 'umbreesships130x120.dmi'
	skybox_icon_state = "TempestShipIcon"
	skybox_pixel_x = 130
	skybox_pixel_y = 120

// ---------------------------------------------------------------------------
// Defined Vars.
// ---------------------------------------------------------------------------

// Used in 'vessel_size' // affects a few things like meteor amount and speed.
// SHIP_SIZE_TINY	= 1
// SHIP_SIZE_SMALL	= 2
// SHIP_SIZE_LARGE	= 3
