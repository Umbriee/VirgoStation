#ifdef MAP_TEST
#include "spaceyacht.dmm"
#endif

/datum/map_template/om_ships/echoveil
	name = "OM Ship - Echoveil"
	desc = "The Echoveil. A large battleship turned pleasure cruise. To the battle stations and full relax ahead!"
	mappath = "maps/umbreesships/spaceyacht.dmm"

// ---------------------------------------------------------------------------
// Areas
// ---------------------------------------------------------------------------
/area/echoveil
	name = "Echoveil - hull"
	requires_power = 1

/area/echoveil/utility
	name = "Echoveil - Hallway"
/area/echoveil/utility/port
	name = "Echoveil - Port Hallway"
/area/echoveil/utility/starboard
	name = "Echoveil - Starboard Hallway"
/area/echoveil/utility/forward
	name = "Echoveil - Forward Hallway"
/area/echoveil/utility/aft
	name = "Echoveil - Aft Hallway"

/area/echoveil/engineering
	name = "Echoveil - Engineering"
	flags = RAD_SHIELDED
/area/echoveil/engineering/hallway
	name = "Echoveil - Engineering Hallway"
/area/echoveil/engineering/thruster
	name = "Echoveil - Engineering Thruster Hall"
/area/echoveil/engineering/portreserve
	name = "Echoveil - Engineering Port Reserve"
/area/echoveil/engineering/starboardreserve
	name = "Echoveil - Engineering Starboard Reserve"
/area/echoveil/engineering/portstowage
	name = "Echoveil - Engineering Port Stowage"
/area/echoveil/engineering/starboardstowage
	name = "Echoveil - Engineering Starboard Stowage"

/area/echoveil/engineering/engine
	name = "Echoveil - Engine"
/area/echoveil/engineering/engine/controlroom
	name = "Echoveil - Engine Control Room"
/area/echoveil/engineering/engine/controlroomstow
	name = "Echoveil - Engine Stowage"
/area/echoveil/engineering/engine/radlock
	name = "Echoveil - Engine Radlock"
/area/echoveil/engineering/engine/generatorcore
	name = "Echoveil - Engine Generator Core"

/area/echoveil/crew
	name = "Echoveil - Crew Hall"
/area/echoveil/crew/quarters
	name = "Echoveil - Crew Quarters"
/area/echoveil/crew/wc
	name = "Echoveil - Crew WC"

/area/echoveil/command
	name = "Echoveil - Command"
/area/echoveil/command/hallway
	name = "Echoveil - Command Hallway"
/area/echoveil/command/bridge
	name = "Echoveil - Bridge"
/area/echoveil/command/captain
	name = "Echoveil - Captains Quarters"
/area/echoveil/command/captainwc
	name = "Echoveil - Captains WC"

/area/echoveil/medical
	name = "Echoveil - Medical Bay"
/area/echoveil/stowage
	name = "Echoveil - Stowage Bay"
/area/echoveil/hangerport
	name = "Echoveil - Port Hanger"
/area/echoveil/hangerstarboard
	name = "Echoveil - Starboard Hanger"

/area/echoveil/maints
	name = "Echoveil - Maintenance"
/area/echoveil/maints/bridge
	name = "Echoveil - Bridge Maintenance"
/area/echoveil/maints/engineering
	name = "Echoveil - Engineering Maintenance"
/area/echoveil/maints/crew
	name = "Echoveil - Crew Maintenance"
/area/echoveil/maints/medical
	name = "Echoveil - Medical Maintenance"

/area/echoveil/substation
	name = "Echoveil - Power Substation"
/area/echoveil/substation/bridge
	name = "Echoveil - Bridge Substation"
/area/echoveil/substation/engineering
	name = "Echoveil - Engineering Substation"
/area/echoveil/substation/crew
	name = "Echoveil - Crew Substation"
/area/echoveil/substation/medical
	name = "Echoveil - Medical Substation"
/area/echoveil/substation/utility
	name = "Echoveil - Utility Substation"
/area/echoveil/substation/shield
	name = "Echoveil - Shield Substation"

/area/echoveil/exterior
	name = "Echoveil - Exterior"
	flags = NONE
/area/echoveil/exterior/uncategorized
	name = "Echoveil - Uncategorized"
	dynamic_lighting = FALSE
/area/echoveil/exterior/engines
	name = "Echoveil - Engines"
	// dynamic_lighting = FALSE

// Generic space waypoint
/obj/effect/shuttle_landmark/premade/echoveil
	name = "Echoveil Waypoint"
	base_area = /area/space
	base_turf = /turf/space
// list("echoveil_portbow", "echoveil_portabeam", "echoveil_portquarter",  "echoveil_starboardbow", "echoveil_starboardabeam", "echoveil_starboardquarter")
/obj/effect/shuttle_landmark/premade/echoveil/port_bow
	name = "Echoveil - Port Bow"
	landmark_tag = "echoveil_portbow"
/obj/effect/shuttle_landmark/premade/echoveil/port_abeam
	name = "Echoveil - Port Abeam"
	landmark_tag = "echoveil_portabeam"
/obj/effect/shuttle_landmark/premade/echoveil/port_quarter
	name = "Echoveil - Port Quarter"
	landmark_tag = "echoveil_portquarter"

/obj/effect/shuttle_landmark/premade/echoveil/starboard_bow
	name = "Echoveil - Starboard Bow"
	landmark_tag = "echoveil_starboardbow"
/obj/effect/shuttle_landmark/premade/echoveil/starboard_abeam
	name = "Echoveil - Starboard Abeam"
	landmark_tag = "echoveil_starboardabeam"
/obj/effect/shuttle_landmark/premade/echoveil/starboard_quarter
	name = "Echoveil - Starboard Quarter"
	landmark_tag = "echoveil_starboardquarter"

// Shuttle Landmark
/obj/effect/shuttle_landmark/shuttle_initializer/echoveil_shuttleport
	name = "Echoveil - Port Shuttle Dock"
	base_area = /area/echoveil/hangerport
	base_turf = /turf/simulated/floor/reinforced
	landmark_tag = "omship_spawn_echoveil_shuttle_port"
	docking_controller = "Echoveil_shuttle_dock_port"
	shuttle_type = /datum/shuttle/autodock/overmap/echoveil_shuttle
/obj/effect/shuttle_landmark/premade/echoveil/starboard_dock
	name = "Echoveil - Starboard Shuttle Dock"
	landmark_tag = "omship_spawn_echoveil_shuttle_starboard"
	docking_controller = "Echoveil_shuttle_dock_starboard"
// Shuttle Areas
/area/shuttle/echoveil_shuttle
	name = "Echoveil - Shuttle"
	requires_power = 1
	dynamic_lighting = 1
	base_turf = /turf/simulated/floor/reinforced
// Shuttle Console
/obj/machinery/computer/shuttle_control/explore/echoveil_shuttle
	name = "shuttle control console"
	shuttle_tag = "Echoveil Shuttle"
	req_one_access = list(ACCESS_CENT_GENERAL)
// Docking Port
/obj/machinery/embedded_controller/radio/airlock/docking_port/premade
/obj/machinery/embedded_controller/radio/airlock/docking_port/premade/echoveilport
	id_tag = "Echoveil_shuttle_dock_port"
/obj/machinery/embedded_controller/radio/airlock/docking_port/premade/echoveilstarboard
	id_tag = "Echoveil_shuttle_dock_starboard"
// Shuttle Data
/datum/shuttle/autodock/overmap/echoveil_shuttle
	name = "Echoveil Shuttle"
	current_location = "omship_spawn_echoveil_shuttle"
	docking_controller_tag = "Echoveil_shuttle_docker"
	shuttle_area = /area/shuttle/echoveil_shuttle
	fuel_consumption = 0
	defer_initialisation = TRUE
	range = 1
// Ship Data
/obj/effect/overmap/visitable/ship/echoveil
	name = "UMB - Echoveil"
	desc = "A long low profile vessel with a newly refined civilian finish."
	// icon = 'icons/obj/overmap.dmi'
	icon_state = "moe_cruiser_g"
	color = "#ff000050" // Incase you want some spice.
	scanner_desc = @{"[i]Registration[/i]: Civilian Luxury Vessel
[i]Hull Classification[/i]: Converted Military Capital Frame
[i]Sensor Profile[/i]: Minimal detectable mass and emissions. Identification reliant on active transponder.
[i]Transponder[/i]: Transmitting (CIV), Authenticated.
[i]Status[/i]: Non-Hostile."}
	vessel_mass = 8000
	vessel_size = SHIP_SIZE_SMALL
	initial_generic_waypoints = list("echoveil_portbow", "echoveil_portabeam", "echoveil_portquarter",  "echoveil_starboardbow", "echoveil_starboardabeam", "echoveil_starboardquarter", "omship_spawn_echoveil_shuttle_starboard")
	initial_restricted_waypoints = list("Echoveil Shuttle" = list("omship_spawn_echoveil_shuttle"))
	fore_dir = NORTH
	known = FALSE

	skybox_icon = 'umbreesships84x264.dmi'
	skybox_icon_state = "ValkyrieShipIcon"
	skybox_pixel_x = 186
	skybox_pixel_y = 264
	// Defines where the skybox icon is-- not the sprite size. Though I think the origin is bottom left or so.

// Now here is a sleuth of my edits for various things that I wanted edited.

// The gyrotron sprite fucking fires BACKWARDS. AAAAAAAAA. //
/obj/machinery/power/emitter/gyrotron/umbedit

/obj/machinery/power/emitter/gyrotron/umbedit/anchored
	anchored = TRUE
	state = 2

/obj/machinery/power/emitter/gyrotron/umbedit/get_emitter_beam()
	var/obj/item/projectile/beam/emitter/A = ..()
	var/angle = dir2angle(dir)
	A.fire(turn(angle, 180))
	return A

// Start on and working please. I am lazy. //
/obj/machinery/power/rad_collector/mapped
	anchored = TRUE
	active = TRUE
	locked = 1
	icon_state = "ca_on"

/obj/machinery/power/rad_collector/mapped/Initialize(mapload)
	. = ..()
	P = new /obj/item/tank/phoron(src)
	P.air_contents.gas[GAS_PHORON] = 10
	connect_to_network()
	update_icons()
	return .

/obj/machinery/power/rad_collector/mapped/Destroy()
	disconnect_from_network()
	return ..()

/obj/structure/window/plastitanium/full/evnorads
	rad_insulation = RAD_FULL_INSULATION
/obj/structure/window/plastitanium/evnorads
	rad_insulation = RAD_FULL_INSULATION
/turf/simulated/wall/r_lead/evnorads
	rad_insulation = RAD_FULL_INSULATION

// They spawn in dir = 2 which means they're *suppose* to be up and down. Breaks a few things since their sprites don't support it. //
// /obj/machinery/door/airlock/angled_tgmc/wide/dropship1/edit
// 	dir = 8
// /obj/machinery/door/airlock/angled_tgmc/wide/dropship2/edit
// 	dir = 8
// SMES Upgraded on start-- they have some custom init function bs.
/obj/machinery/power/smes/buildable/hyper_prefab
	cur_coils = 6
/obj/machinery/power/smes/buildable/hyper_prefab/Initialize(mapload)
	. = ..()
	if(mapload)
		component_parts = list()
		component_parts += new /obj/item/stack/cable_coil(src,30)
		for(var/i = 1, i <= cur_coils, i++)
			component_parts += new /obj/item/smes_coil/super_capacity/hyper(src)
		recalc_coils()
		charge = capacity
		input_level = input_level_max
		output_level = output_level_max
		input_attempt = TRUE
		output_attempt = TRUE

/obj/item/multitool/echoveil
	name = "multitool (Echoveil)"
	desc = "Used for pulsing wires to test which to cut. Not recommended by doctors. It seems to have some preloaded buffer data on it! Sticky note says 'UMB-Ecohveil QPAD,' whatever that means."

/obj/item/multitool/echoveil/Initialize(mapload)
	. = ..()
	for(var/obj/machinery/power/quantumpad/echoveil/quantpad in world)
		connectable = quantpad
		if(connectable)
			icon_state = "multitool_suspicious"
		return

/obj/machinery/power/quantumpad/echoveil
