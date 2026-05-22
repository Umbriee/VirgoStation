// Hi there!
#ifdef MAP_TEST
#include "spacedock.dmm"
#endif

// ---------------------------------------------------------------------------
// Map Template
// ---------------------------------------------------------------------------

/datum/map_template/om_ships/spacedock
	name = "OM Ship - SpaceDock"
	desc = "A Space Dock Construction Yard."
	mappath = "maps/umbreesships/spacedock.dmm"

/obj/effect/landmark/map_data/spacedock
	height = 1

// ---------------------------------------------------------------------------
// Areas
// ---------------------------------------------------------------------------

/area/spacedock
	name = "SpaceDock - Unknown"
	requires_power = 1

/area/spacedock/bridge
	name = "SpaceDock - Bridge"

/area/spacedock/hallway
	name = "SpaceDock - Hallway"

/area/spacedock/engine_room
	name = "SpaceDock - Engine Room"
	flags = RAD_SHIELDED

/area/spacedock/crew_quarters
	name = "SpaceDock - Crew Quarters"

/area/spacedock/medical
	name = "SpaceDock - Medical Bay"

/area/spacedock/storage
	name = "SpaceDock - Storage"

/area/spacedock/hanger
	name = "SpaceDock - Hanger"

/area/spacedock/uncategorized
	name = "SpaceDock - Uncategorized"
	dynamic_lighting = FALSE

// ---------------------------------------------------------------------------
// Waypoint Instances
// ---------------------------------------------------------------------------

// Generic space waypoint
/obj/effect/shuttle_landmark/premade/spacedock
	name = "SpaceDock Waypoint"
	base_area = /area/space
	base_turf = /turf/space

// Forward waypoint
/obj/effect/shuttle_landmark/premade/spacedock/fore
	name = "SpaceDock - Fore"
	landmark_tag = "dockyard_fore"

// Aft waypoint
/obj/effect/shuttle_landmark/premade/spacedock/aft
	name = "SpaceDock - Aft"
	landmark_tag = "dockyard_aft"

// Port waypoint
/obj/effect/shuttle_landmark/premade/spacedock/port
	name = "SpaceDock - Port"
	landmark_tag = "dockyard_port"

// Starboard waypoint
/obj/effect/shuttle_landmark/premade/spacedock/starboard
	name = "SpaceDock - Starboard"
	landmark_tag = "dockyard_starboard"

// Ferry Point 2
/obj/effect/shuttle_landmark/premade/spacedock/spacedock_shuttle2
	name = "SpaceDock Shuttle Dock Aft"
	landmark_tag = "omship_spawn_spacedock_shuttle2"
	base_area = /area/spacedock/engine_room
	base_turf = /turf/simulated/floor/reinforced/airless

// ---------------------------------------------------------------------------
// Shuttle Landmarks
// Give or take the same thing as above. Just that these are slightly coded more.
// ---------------------------------------------------------------------------

/obj/effect/shuttle_landmark/shuttle_initializer/spacedock_shuttle1
	name = "SpaceDock Shuttle Dock Fore"
	base_area = /area/spacedock/engine_room
	base_turf = /turf/simulated/floor/reinforced/airless
	landmark_tag = "omship_spawn_spacedock_shuttle1"
	docking_controller = "spacedock_shuttle_dock"
	shuttle_type = /datum/shuttle/autodock/overmap/spacedock_shuttle

// ---------------------------------------------------------------------------
// Shuttle Areas
// ---------------------------------------------------------------------------

/area/shuttle/spacedock_shuttle
	name = "SpaceDock - Ferry"
	requires_power = 1
	dynamic_lighting = 1
	base_turf = /turf/simulated/floor/reinforced/airless

// ---------------------------------------------------------------------------
// Shuttle Console
// ---------------------------------------------------------------------------

/obj/machinery/computer/shuttle_control/explore/spacedock_shuttle
	name = "shuttle control console"
	shuttle_tag = "SpaceDock Shuttle"
	// req_one_access = list(ACCESS_CENT_GENERAL)
	ai_control = TRUE

// ---------------------------------------------------------------------------
// Shuttle Data
// ---------------------------------------------------------------------------

/datum/shuttle/autodock/overmap/spacedock_shuttle
	name = "SpaceDock Ferry"
	current_location = "omship_spawn_spacedock_shuttle"
	docking_controller_tag = "spacedock_shuttle_docker"
	shuttle_area = /area/shuttle/spacedock_shuttle
	fuel_consumption = 0
	defer_initialisation = TRUE
	range = 1

// ---------------------------------------------------------------------------
// The Actual Ship Object Finally
// ---------------------------------------------------------------------------

/obj/effect/overmap/visitable/ship/spacedock
	name = "Space Dock"
	desc = "A Space Dock used to repair or construct whole ships."
	icon_state = "moe_station"
	color = "#ffaa00"
	scanner_desc = @{"[i]Registration[/i]: Space Dock Yard
[i]Class[/i]: Industrial Station
[i]Transponder[/i]: Transmitting (CIV), non-hostile"}
	vessel_mass = 8000
	vessel_size = SHIP_SIZE_LARGE
	initial_generic_waypoints = list("dockyard_fore", "dockyard_aft", "dockyard_port", "dockyard_starboard","spacedock_shuttle2")
	initial_restricted_waypoints = list("SpaceDock Ferry" = list("omship_spawn_spacedock_shuttle1","omship_spawn_spacedock_shuttle2"))
	fore_dir = NORTH
	known = FALSE

	skybox_icon = 'umbreesships130x120.dmi' 
	skybox_icon_state = "Salvage_rig"
	skybox_pixel_x = 130
	skybox_pixel_y = 120