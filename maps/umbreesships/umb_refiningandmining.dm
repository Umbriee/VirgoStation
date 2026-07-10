#ifdef MAP_TEST
#include "umb_refiningandmining.dmm"
#endif

/datum/map_template/om_ships/stellacaelator
	name	= "OM Ship - Stella Caelator"
	desc	= "The Stella Caelator. A large industrial mining and refining ship using top of the line tech."
	mappath	= "maps/umbreesships/umb_refiningandmining.dmm"

// ---------------------------------------------------------------------------
// Areas
// ---------------------------------------------------------------------------
/area/stellacaelator
	name = "Stella Caelator - hull"
	icon = 'icons/turf/areas.dmi'
	icon_state = "red"
	requires_power = 1

/area/stellacaelator/utility
	name = "Stella Caelator - Hallway"
	icon_state = "hallway"
/area/stellacaelator/utility/port
	name = "Stella Caelator - Port Hallway"
	icon_state = "hallP"
/area/stellacaelator/utility/starboard
	name = "Stella Caelator - Starboard Hallway"
	icon_state = "hallS"
/area/stellacaelator/utility/forward
	name = "Stella Caelator - Forward Hallway"
	icon_state = "hallF"
/area/stellacaelator/utility/aft
	name = "Stella Caelator - Aft Hallway"
	icon_state = "hallA"
/area/stellacaelator/utility/qpad
	name = "Stella Caelator - Quantum Pad"
	icon_state = "exit"

/area/stellacaelator/engineering
	name = "Stella Caelator - Engineering"
	icon_state = "yellow"
	flags = RAD_SHIELDED
/area/stellacaelator/engineering/hallway
	name = "Stella Caelator - Engineering Hallway"
	icon_state = "hallway"
/area/stellacaelator/engineering/hallway/port
	name = "Stella Caelator - Engineering Port Hall"
	icon_state = "hallP"
/area/stellacaelator/engineering/hallway/starboard
	name = "Stella Caelator - Engineering Starboard Hall"
	icon_state = "hallS"
/area/stellacaelator/engineering/thruster
	name = "Stella Caelator - Engineering Thruster Fuel Hall"

/area/stellacaelator/engineering/atmospherics
	name = "Stella Caelator - Atmospherics"
/area/stellacaelator/engineering/atmospherics/hall
	name = "Stella Caelator - Atmospherics Hall"

/area/stellacaelator/engineering/reserve
	name = "Stella Caelator - Engineering Fuel Reserve"
/area/stellacaelator/engineering/reserve/port
	name = "Stella Caelator - Engineering Port Fuel Reserve"
/area/stellacaelator/engineering/reserve/starboard
	name = "Stella Caelator - Engineering Starboard Fuel Reserve"

/area/stellacaelator/engineering/stowage
	name = "Stella Caelator - Engineering Stowage"
/area/stellacaelator/engineering/stowage/port
	name = "Stella Caelator - Engineering Port Stowage"
/area/stellacaelator/engineering/stowage/starboard
	name = "Stella Caelator - Engineering Starboard Stowage"

/area/stellacaelator/engineering/telecomm
	name = "Stella Caelator - Telecommunication hall"
	icon_state = "bluenew"
/area/stellacaelator/engineering/telecomm/servers
	name = "Stella Caelator - Telecommunication Servers"
/area/stellacaelator/engineering/telecomm/coolant
	name = "Stella Caelator - Telecommuncation Coolant"

/area/stellacaelator/engineering/engine
	name = "Stella Caelator - Engine"
/area/stellacaelator/engineering/engine/controlroom
	name = "Stella Caelator - Engine Control Room"
/area/stellacaelator/engineering/engine/controlroomstow
	name = "Stella Caelator - Engine Stowage"
/area/stellacaelator/engineering/engine/suitlocker
	name = "Stella Caelator - Engine anteroom locker"
/area/stellacaelator/engineering/engine/radlock
	name = "Stella Caelator - Engine Radlock"
/area/stellacaelator/engineering/engine/generatorcore
	name = "Stella Caelator - Engine Generator Core"

/area/stellacaelator/crew
	name = "Stella Caelator - Crew Hall"
	icon_state = "green"
/area/stellacaelator/crew/dining
	name = "Stella Caelator - Dining Hall"
/area/stellacaelator/crew/recreation
	name = "Stella Caelator - Recreation"
/area/stellacaelator/crew/kitchen
	name = "Stella Caelator - Kitchen"
/area/stellacaelator/crew/kitchen/freezer
	name = "Stella Caelator - Freezer"

/area/stellacaelator/crew/dorms
	name = "Stella Caelator - Dorm Halls"
/area/stellacaelator/crew/dorms/one
	name = "Stella Caelator - Crew 1"
/area/stellacaelator/crew/dorms/one/quarters
	name = "Stella Caelator - Crew 1 Quarters"
/area/stellacaelator/crew/dorms/one/wc
	name = "Stella Caelator - Crew 1 WC"
/area/stellacaelator/crew/dorms/two
	name = "Stella Caelator - Crew 2"
/area/stellacaelator/crew/dorms/two/quarters
	name = "Stella Caelator - Crew 2 Quarters"
/area/stellacaelator/crew/dorms/two/wc
	name = "Stella Caelator - Crew 2 WC"
/area/stellacaelator/crew/dorms/three
	name = "Stella Caelator - Crew 3"
/area/stellacaelator/crew/dorms/three/quarters
	name = "Stella Caelator - Crew 3 Quarters"
/area/stellacaelator/crew/dorms/three/wc
	name = "Stella Caelator - Crew 3 WC"
/area/stellacaelator/crew/dorms/four
	name = "Stella Caelator - Crew 4"
/area/stellacaelator/crew/dorms/four/quarters
	name = "Stella Caelator - Crew 4 Quarters"
/area/stellacaelator/crew/dorms/four/wc
	name = "Stella Caelator - Crew 4 WC"

/area/stellacaelator/command
	name = "Stella Caelator - Command"
	icon_state = "bluenew"
/area/stellacaelator/command/hallway
	name = "Stella Caelator - Command Hallway"
/area/stellacaelator/command/bridge
	name = "Stella Caelator - Bridge"
/area/stellacaelator/command/recreation
	name = "Stella Caelator - Command Briefroom"
/area/stellacaelator/command/recreation/hallway
	name = "Stella Caelator - Bridge to Briefroom"
/area/stellacaelator/command/recreation/brhallway
	name = "Stella Caelator - Briefroom Hallway"
/area/stellacaelator/command/captain
	name = "Stella Caelator - Captains Quarters"
/area/stellacaelator/command/captainwc
	name = "Stella Caelator - Captains WC"

/area/stellacaelator/medical
	name = "Stella Caelator - Medical Bay"
	icon_state = "green"
/area/stellacaelator/medical/hall
	name = "Stella Caelator - Medical Hall"
/area/stellacaelator/medical/stowage
	name = "Stella Caelator - Medical Stowage"

/area/stellacaelator/mining
	name = "Stella Caelator - Mining Bay"
	icon_state = "dk_yellow"
/area/stellacaelator/mining/hall
	name = "Stella Caelator - Mining Hall"
/area/stellacaelator/mining/stowage
	name = "Stella Caelator - Mining Stowage"
/area/stellacaelator/mining/refinery
	name = "Stella Caelator - Material Refining"
/area/stellacaelator/mining/refinery/hall
	name = "Stella Caelator - Refining Hall"
/area/stellacaelator/mining/refinery/storage
	name = "Stella Caelator - Material Storage"
/area/stellacaelator/mining/refinery/stowage
	name = "Stella Caelator - Material Storage"

/area/stellacaelator/stowage
	name = "Stella Caelator - Stowage Bay"
	icon_state = "dark128"

/area/stellacaelator/hanger
	name = "Stella Caelator - Hanger"
/area/stellacaelator/hanger/airlock
	name = "Stella Caelator - Hanger Airlock"
/area/stellacaelator/hanger/atc
	name = "Stella Caelator - Hanger Control"

/area/stellacaelator/maints
	name = "Stella Caelator - Maintenance"
	icon_state = "maint"
/area/stellacaelator/maints/bridge
	name = "Stella Caelator - Bridge Maintenance"
	icon_state = "maint_central"
/area/stellacaelator/maints/engineering
	name = "Stella Caelator - Engineering Maintenance"
	icon_state = "maint_engineering"
/area/stellacaelator/maints/crew
	name = "Stella Caelator - Crew Maintenance"
	icon_state = "maint_arrivals"
/area/stellacaelator/maints/medical
	name = "Stella Caelator - Medical Maintenance"
	icon_state = "maint_medbay"

/area/stellacaelator/substation
	name = "Stella Caelator - Power Substation"
	icon_state = "substation"
/area/stellacaelator/substation/bridge
	name = "Stella Caelator - Bridge Substation"
/area/stellacaelator/substation/engineering
	name = "Stella Caelator - Engineering Substation"
/area/stellacaelator/substation/crew
	name = "Stella Caelator - Crew Substation"
/area/stellacaelator/substation/medical
	name = "Stella Caelator - Medical Substation"
/area/stellacaelator/substation/utility
	name = "Stella Caelator - Utility Substation"
/area/stellacaelator/substation/telecomm
	name = "Stella Caelator - Telecommunication Substation"
/area/stellacaelator/substation/shield
	name = "Stella Caelator - Shield Substation"
/area/stellacaelator/substation/pointdefense
	name = "Stella Caelator - Point Defense Substation"

/area/stellacaelator/exterior
	name = "Stella Caelator - Exterior"
	icon_state = "exit"
	flags = NONE
/area/stellacaelator/exterior/uncategorized
	name = "Stella Caelator - Uncategorized"
	dynamic_lighting = FALSE
/area/stellacaelator/exterior/unroofed
	name = "Stella Caelator - Exterior"
	dynamic_lighting = FALSE
/area/stellacaelator/exterior/engines
	name = "Stella Caelator - Engines"
	icon_state = "engine_eva"
	// dynamic_lighting = FALSE

// Generic space waypoint
/obj/effect/shuttle_landmark/premade/stellacaelator
	name		= "Stella Caelator Waypoint"
	base_area	= /area/space
	base_turf	= /turf/space
// list("stellacaelator_portbow", "stellacaelator_portabeam", "stellacaelator_portquarter",  "stellacaelator_starboardbow", "stellacaelator_starboardabeam", "stellacaelator_starboardquarter")
/obj/effect/shuttle_landmark/premade/stellacaelator/port_bow
	name			= "Stella Caelator - Port Bow"
	landmark_tag	= "stellacaelator_portbow"
/obj/effect/shuttle_landmark/premade/stellacaelator/port_abeam
	name			= "Stella Caelator - Port Abeam"
	landmark_tag	= "stellacaelator_portabeam"
/obj/effect/shuttle_landmark/premade/stellacaelator/port_quarter
	name			= "Stella Caelator - Port Quarter"
	landmark_tag	= "stellacaelator_portquarter"

/obj/effect/shuttle_landmark/premade/stellacaelator/starboard_bow
	name			= "Stella Caelator - Starboard Bow"
	landmark_tag	= "stellacaelator_starboardbow"
/obj/effect/shuttle_landmark/premade/stellacaelator/starboard_abeam
	name			= "Stella Caelator - Starboard Abeam"
	landmark_tag	= "stellacaelator_starboardabeam"
/obj/effect/shuttle_landmark/premade/stellacaelator/starboard_quarter
	name			= "Stella Caelator - Starboard Quarter"
	landmark_tag	= "stellacaelator_starboardquarter"

// Shuttle Landmark
/obj/effect/shuttle_landmark/shuttle_initializer/stellacaelator_shuttle
	name				= "Stella Caelator - Mining Shuttle"
	base_area			= /area/stellacaelator/hanger
	base_turf			= /turf/simulated/floor/reinforced
	landmark_tag		= "omship_spawn_stellacaelator_shuttle"
	docking_controller	= "stellacaelator_boatbay"
	shuttle_type		= /datum/shuttle/autodock/overmap/stellacaelator_shuttle
// Shuttle Areas
/area/shuttle/stellacaelator_shuttle
	name				= "Stella Caelator Shuttle - General"
	base_turf			= /turf/simulated/floor/reinforced
	requires_power		= 1
	dynamic_lighting	= 1
/area/shuttle/stellacaelator_shuttle/pilot
	name = "Stella Caelator Shuttle - Pilot"
/area/shuttle/stellacaelator_shuttle/power
	name = "Stella Caelator Shuttle - Power"
/area/shuttle/stellacaelator_shuttle/airlock
	name = "Stella Caelator Shuttle - Airlock"
/area/shuttle/stellacaelator_shuttle/fuel
	name = "Stella Caelator Shuttle - Fuel"
/area/shuttle/stellacaelator_shuttle/oxy
	name = "Stella Caelator Shuttle - Air"
/area/shuttle/stellacaelator_shuttle/cargo
	name = "Stella Caelator Shuttle - Cargo"
/area/shuttle/stellacaelator_shuttle/passenger
	name = "Stella Caelator Shuttle - Passenger"
/area/shuttle/stellacaelator_shuttle/medical
	name = "Stella Caelator Shuttle - Medical"

// Shuttle Console
/obj/machinery/computer/shuttle_control/explore/stellacaelator_shuttle
	name			= "short jump console"
	shuttle_tag		= "Stella Calelator Shuttle"
	req_one_access	= list(777)
// Shuttle Data
/obj/effect/overmap/visitable/ship/landable/stellacaelator_shuttle
	name = "Stella Caelator Shuttle"
	desc = "Desc here"
	icon_state = "htu_destroyer_g"
	vessel_mass = 8000
	vessel_size = SHIP_SIZE_SMALL
	shuttle = "Stella Calelator Shuttle"
/datum/shuttle/autodock/overmap/stellacaelator_shuttle
	name					= "Stella Caelator Shuttle"
	warmup_time				= 0
	current_location		= "omship_spawn_stellacaelator_shuttle"
	docking_controller_tag	= "stellacaelator_shuttle_dock"
	shuttle_area			= list(/area/shuttle/stellacaelator_shuttle,
		/area/shuttle/stellacaelator_shuttle/pilot,
		/area/shuttle/stellacaelator_shuttle/power,
		/area/shuttle/stellacaelator_shuttle/airlock,
		/area/shuttle/stellacaelator_shuttle/fuel,
		/area/shuttle/stellacaelator_shuttle/oxy,
		/area/shuttle/stellacaelator_shuttle/cargo,
		/area/shuttle/stellacaelator_shuttle/passenger,
		/area/shuttle/stellacaelator_shuttle/medical
	)
	fuel_consumption		= 3
	move_direction			= NORTH
	defer_initialisation	= TRUE

// Ship Data
/obj/effect/overmap/visitable/ship/stellacaelator
	name				= "UMB - Stella Caelator"
	desc				= "A bulky industrial mining vessel."
	// icon	= 'icons/obj/overmap.dmi'
	icon_state			= "moe_cruiser_g"
	color				= "#ffae42ff" // Incase you want some spice.
	scanner_desc		= @{"[i]Registration[/i]: Civilian Mining Vessel
[i]Class[/i]: Large Frigate (Low Displacement)
[i]Transponder[/i]: Transmitting (CIV), non-hostile
[b]Notice[/b]: Large cargo transport and resource refining vessel under UMB branding."}
	vessel_mass			= 8000
	vessel_size			= SHIP_SIZE_SMALL
	initial_generic_waypoints		= list("stellacaelator_portbow", "stellacaelator_portabeam", "stellacaelator_portquarter",  "stellacaelator_starboardbow", "stellacaelator_starboardabeam", "stellacaelator_starboardquarter")
	initial_restricted_waypoints	= list("Stella Caelator Shuttle" = list("omship_spawn_stellacaelator_shuttle"))
	fore_dir			= NORTH
	known				= FALSE

	skybox_icon			= 'umbreesships130x120.dmi'
	skybox_icon_state	= "Tarsus_base"
	skybox_pixel_x		= 390
	skybox_pixel_y		= 240
	// Defines where the skybox icon is-- not the sprite size. Though I think the origin is bottom left or so.

/obj/item/multitool/stellacaelator
	name	= "multitool (Stella Caelator)"
	desc	= "Used for pulsing wires to test which to cut. Not recommended by doctors. It seems to have some preloaded buffer data on it! Sticky note says 'UMB-STELLA CAELATOR QPAD,' whatever that means."

/obj/item/multitool/stellacaelator/Initialize(mapload)
	. = ..()
	for(var/obj/machinery/power/quantumpad/stellacaelator/quantpad in world)
		connectable = quantpad
		if(connectable)
			icon_state = "multitool_suspicious"
		return

/obj/machinery/power/quantumpad/stellacaelator
// You know, I hate the double close [/center]. I have to do constantly. Not sure what causes it, to be honest. Still sick of it. I WANT MY PAPERWORK RP >:( //
/obj/item/paper/stellacaelator_power
	name = "Stella Caelator class Startup guide"
	info = @{"<font face="Verdana" color=black><font size = "1"><center>ENG-4409</center></font><BR><center><B><U><H1>R-UST Mk. 9 Tokamak Core Startup Procedure</H1></U></B></center><BR><center><img src=[0xc000005]></center><BR><center><H2>UMB Stella Caelator Class Industrial Mining Vessel</H2></center></center><BR><HR><BR><B>Chief Engineer:</B> <span class="paper_field"></span><BR><B>Reactor Technician:</B> <span class="paper_field"></span><BR><B>Supervising Officer:</B> <span class="paper_field"></span><BR><HR><BR><center><B>Fusion Reactor Safety Notice</B></center><BR><font size = "1">The R-UST Mk. 9 Tokamak Core is a high-energy industrial fusion system intended for continuous heavy-output vessel operation. Improper startup, fuel mismanagement, or failure to monitor field instability may result in catastrophic reactor failure, electrical resonance events, severe radiation exposure, or complete shipwide systems loss.<BR>Only certified engineering personnel are authorized to operate or supervise the startup sequence.<BR></font><BR><HR><BR><B><H2>Required Equipment</H2></B><BR><ul><BR><li>1x Lithium chemical cartridge<BR><li>1x deuterium fuel assembly<BR><li>1x Vacuum-capable engineering suit<BR><li>1x Active geigercounter<BR><li>1x Engineering radio headset<BR><li>Backup hazardsuits available in rear control room storage<BR><li>Backup PACMAN generators and spare phoron sheets available in rear control room storage<BR></ul><BR><HR><BR><B><H2>Fuel Preparation Procedure</H2></B><BR><ul><BR><li>Insert one lithium chemical cartridge into the fuel compressor until a lithium fuel assembly is produced.<BR><li>Retrieve one pre-manufactured deuterium fuel assembly from reactor storage shelving.<BR><li>Verify both assemblies are structurally intact prior to insertion in chamber core. See <B>Reactor Chamber Preparation</B><BR></ul><BR><HR><BR><B><H2>Reactor Chamber Preparation</H2></B><BR><ul><BR><li>Equip a vacuum-capable engineering suit before entering the reactor chamber.<BR><li>Carry an active geigercounter at all times while operating within reactor proximity.<BR><li>Verify reactor chamber atmospheric pressure is at proper vacuum conditions.<BR><li>Inspect auxiliary radiation collectors. Ensure all auxiliary radiation collectors are fueled with phoron and actively operating<BR><li>Load the <B>lithium</B> fuel assembly into one reactor fuel injector.<BR><li>Load the <B>deuterium</B> fuel assembly into the opposite reactor fuel injector.<BR></ul><BR><HR><BR><B><H2>Primary Startup Sequence</H2></B><BR><ul><BR><li>Proceed to the RCON console.<BR><li>Remotely activate the &#34;Fusion to Main&#34; bypass.<BR><li>Proceed to the R-UST Mk. 9 Core Control console.<BR><li>Engage the fusion field at a field strength to ship-rated strength. <B>500</B>.<BR><li>Proceed to the Fuel Injection Control console. Enable both fuel injectors.<BR><li>Proceed to the Gyrotron Control console.<BR><li>- Set gyrotron strength to 5.<BR><li>- Set gyrotron impulse to 3.<BR><li>Activate the gyrotron system.<BR></ul><BR><HR><BR><B><H2>Fuel Cycle and Thermal Behavior</H2></B><BR><font size = "1">During normal reactor operation, energized lithium and deuterium within the containment field begin producing slimejelly as thermal thresholds are reached. Once sufficient slimejelly accumulation occurs, Helium-3 production begins.<BR>The reactor will gradually transition through multiple burn states:<BR><ul><BR><li>Lithium + Deuterium<BR><li>Slimejelly + Deuterium<BR><li>Helium-3 + Deuterium<BR></ul><BR>Helium-3 combined with deuterium produces an extremely high-efficiency fusion reaction capable of generating approximately twenty fusion-units of power output for no equivalent additional power input.<BR><I>WARNING:</I><BR>Transition into Helium-3 burn states may cause reactor temperature to increase exponentially within moments. Field instability may rise faster than containment systems can compensate if power reserves are insufficient.<BR></font><BR><HR><BR><B><H2>Visual Reactor State Indicators</H2></B><BR><ul><BR><li>Dark Blue Glow - Early-stage fuel burn<BR><li>Bright Green Glow - Intermediate fuel transition<BR><li>Bright Pink Glow - Slimejelly production phase<BR><li>Bright Red Glow - High-temperature Helium-3 burn state<BR></ul><BR><font size = "1">Coloration may vary slightly depending on fuel purity and field stability.</font><BR><HR><BR><B><H2>Field Instability and Emergency Procedures</H2></B><BR><font size = "1">Failure to maintain sufficient containment field strength during elevated thermal states may result in escalating field instability.<BR>If instability reaches critical resonance levels, a Resonance Cascade Event may occur.<BR>Potential consequences include:<BR><ul><BR><li>Major shipwide electromagnetic pulse<BR><li>Permanent electrical systems failure<BR><li>Destruction of life support systems<BR><li>Critical damage to ship infrastructure<BR></ul><BR>In the event of uncontrollable instability:<BR><ul><BR><li>Deactivate the fusion field immediately.<BR><li>Reactor chamber will vent all plasma contents into space.<BR><li>Evacuate all personnel from the chamber prior to emergency venting.<BR></ul><BR><I>WARNING:</I><BR>Emergency vented plasma remains superheated during evacuation procedures. Personnel remaining within the chamber during emergency release are unlikely to survive exposure, even with protective equipment.</font><BR><HR><BR><B><H2>Radiation Safety Notice</H2></B><BR><center><B>MANDATORY ENGINEERING DIRECTIVE</B></center><BR><font size = "1">All engineering personnel operating within the vicinity of the R-UST Mk. 9 Core are required to carry an active geigercounter at all times.<BR>Any abnormal radiation spike, fluctuation, or audible warning must be immediately reported through engineering communications channels.<BR>Failure to report elevated radiation conditions constitutes gross negligence under vessel operational safety standards.</font><BR><HR><BR><B>Chief Engineer Signature:</B><BR><span class="paper_field"></span><BR><B>Supervising Officer Signature:</B><BR><span class="paper_field"></span><BR><center>Stamp here.</center><BR><font size = "1">Revision: 1.0</font></font>"}
	info_links = @{"<font face="Verdana" color=black><font size = "1"><center>ENG-4409</center></font><BR><center><B><U><H1>R-UST Mk. 9 Tokamak Core Startup Procedure</H1></U></B></center><BR><center><img src=[0xc000005]></center><BR><center><H2>UMB Stella Caelator Class Industrial Mining Vessel</H2></center></center><BR><HR><BR><B>Chief Engineer:</B> <span class="paper_field"><font face="Verdana"><A href='byond://?src=[0x200570b];write=1'>write</A></font></span><BR><B>Reactor Technician:</B> <span class="paper_field"><font face="Verdana"><A href='byond://?src=[0x200570b];write=2'>write</A></font></span><BR><B>Supervising Officer:</B> <span class="paper_field"><font face="Verdana"><A href='byond://?src=[0x200570b];write=3'>write</A></font></span><BR><HR><BR><center><B>Fusion Reactor Safety Notice</B></center><BR><font size = "1">The R-UST Mk. 9 Tokamak Core is a high-energy industrial fusion system intended for continuous heavy-output vessel operation. Improper startup, fuel mismanagement, or failure to monitor field instability may result in catastrophic reactor failure, electrical resonance events, severe radiation exposure, or complete shipwide systems loss.<BR>Only certified engineering personnel are authorized to operate or supervise the startup sequence.<BR></font><BR><HR><BR><B><H2>Required Equipment</H2></B><BR><ul><BR><li>1x Lithium chemical cartridge<BR><li>1x deuterium fuel assembly<BR><li>1x Vacuum-capable engineering suit<BR><li>1x Active geigercounter<BR><li>1x Engineering radio headset<BR><li>Backup hazardsuits available in rear control room storage<BR><li>Backup PACMAN generators and spare phoron sheets available in rear control room storage<BR></ul><BR><HR><BR><B><H2>Fuel Preparation Procedure</H2></B><BR><ul><BR><li>Insert one lithium chemical cartridge into the fuel compressor until a lithium fuel assembly is produced.<BR><li>Retrieve one pre-manufactured deuterium fuel assembly from reactor storage shelving.<BR><li>Verify both assemblies are structurally intact prior to insertion in chamber core. See <B>Reactor Chamber Preparation</B><BR></ul><BR><HR><BR><B><H2>Reactor Chamber Preparation</H2></B><BR><ul><BR><li>Equip a vacuum-capable engineering suit before entering the reactor chamber.<BR><li>Carry an active geigercounter at all times while operating within reactor proximity.<BR><li>Verify reactor chamber atmospheric pressure is at proper vacuum conditions.<BR><li>Inspect auxiliary radiation collectors. Ensure all auxiliary radiation collectors are fueled with phoron and actively operating<BR><li>Load the <B>lithium</B> fuel assembly into one reactor fuel injector.<BR><li>Load the <B>deuterium</B> fuel assembly into the opposite reactor fuel injector.<BR></ul><BR><HR><BR><B><H2>Primary Startup Sequence</H2></B><BR><ul><BR><li>Proceed to the RCON console.<BR><li>Remotely activate the &#34;Fusion to Main&#34; bypass.<BR><li>Proceed to the R-UST Mk. 9 Core Control console.<BR><li>Engage the fusion field at a field strength to ship-rated strength. <B>500</B>.<BR><li>Proceed to the Fuel Injection Control console. Enable both fuel injectors.<BR><li>Proceed to the Gyrotron Control console.<BR><li>- Set gyrotron strength to 5.<BR><li>- Set gyrotron impulse to 3.<BR><li>Activate the gyrotron system.<BR></ul><BR><HR><BR><B><H2>Fuel Cycle and Thermal Behavior</H2></B><BR><font size = "1">During normal reactor operation, energized lithium and deuterium within the containment field begin producing slimejelly as thermal thresholds are reached. Once sufficient slimejelly accumulation occurs, Helium-3 production begins.<BR>The reactor will gradually transition through multiple burn states:<BR><ul><BR><li>Lithium + Deuterium<BR><li>Slimejelly + Deuterium<BR><li>Helium-3 + Deuterium<BR></ul><BR>Helium-3 combined with deuterium produces an extremely high-efficiency fusion reaction capable of generating approximately twenty fusion-units of power output for no equivalent additional power input.<BR><I>WARNING:</I><BR>Transition into Helium-3 burn states may cause reactor temperature to increase exponentially within moments. Field instability may rise faster than containment systems can compensate if power reserves are insufficient.<BR></font><BR><HR><BR><B><H2>Visual Reactor State Indicators</H2></B><BR><ul><BR><li>Dark Blue Glow - Early-stage fuel burn<BR><li>Bright Green Glow - Intermediate fuel transition<BR><li>Bright Pink Glow - Slimejelly production phase<BR><li>Bright Red Glow - High-temperature Helium-3 burn state<BR></ul><BR><font size = "1">Coloration may vary slightly depending on fuel purity and field stability.</font><BR><HR><BR><B><H2>Field Instability and Emergency Procedures</H2></B><BR><font size = "1">Failure to maintain sufficient containment field strength during elevated thermal states may result in escalating field instability.<BR>If instability reaches critical resonance levels, a Resonance Cascade Event may occur.<BR>Potential consequences include:<BR><ul><BR><li>Major shipwide electromagnetic pulse<BR><li>Permanent electrical systems failure<BR><li>Destruction of life support systems<BR><li>Critical damage to ship infrastructure<BR></ul><BR>In the event of uncontrollable instability:<BR><ul><BR><li>Deactivate the fusion field immediately.<BR><li>Reactor chamber will vent all plasma contents into space.<BR><li>Evacuate all personnel from the chamber prior to emergency venting.<BR></ul><BR><I>WARNING:</I><BR>Emergency vented plasma remains superheated during evacuation procedures. Personnel remaining within the chamber during emergency release are unlikely to survive exposure, even with protective equipment.</font><BR><HR><BR><B><H2>Radiation Safety Notice</H2></B><BR><center><B>MANDATORY ENGINEERING DIRECTIVE</B></center><BR><font size = "1">All engineering personnel operating within the vicinity of the R-UST Mk. 9 Core are required to carry an active geigercounter at all times.<BR>Any abnormal radiation spike, fluctuation, or audible warning must be immediately reported through engineering communications channels.<BR>Failure to report elevated radiation conditions constitutes gross negligence under vessel operational safety standards.</font><BR><HR><BR><B>Chief Engineer Signature:</B><BR><span class="paper_field"><font face="Verdana"><A href='byond://?src=[0x200570b];write=4'>write</A></font></span><BR><B>Supervising Officer Signature:</B><BR><span class="paper_field"><font face="Verdana"><A href='byond://?src=[0x200570b];write=5'>write</A></font></span><BR><center>Stamp here.</center><BR><font size = "1">Revision: 1.0</font></font><font face="Verdana"><A href='byond://?src=[0x200570b];write=end'>write</A></font>"}
