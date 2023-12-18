
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Bossallan - Valdrakken"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["specs"] = {
				[263] = {
					["settings"] = {
						["filler_shock"] = true,
						["purge_icd"] = 12,
						["hostile_dispel"] = false,
						["pad_lava_lash"] = true,
						["pad_windstrike"] = true,
						["funnel_priority"] = false,
						["pwave_targets"] = 0,
						["check_sundering_range"] = true,
						["project_windfury"] = 0,
						["check_crash_lightning_range"] = true,
					},
				},
				[262] = {
					["settings"] = {
						["purge_icd"] = 12,
						["hostile_dispel"] = false,
						["stack_buffer"] = 1.1,
					},
				},
			},
			["runOnce"] = {
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceReloadClassDefaultOptions_20220306_262"] = true,
				["forceReloadClassDefaultOptions_20220306_264"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadClassDefaultOptions_20220306_263"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
			},
			["packs"] = {
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/dragonflight/engine/class_modules/sc_shaman.cpp",
					["builtIn"] = true,
					["date"] = 20230808,
					["spec"] = 263,
					["desc"] = "2023-08-08: Add Funnel option and priority from SimC.\n\n2023-07-11: Patch 10.1.5 update.\n\n2023-07-02: Assume Flame Shocks on other targets are potentially out of range; manually apply Flame Shock after target swapping, if needed.\n\n2023-06-26: Updates to Ice Strike / Frost Shock.\n\n2023-05-30: Update Lava Lash usage with Ashen Catalyst.\n\n2023-05-20: Updates to trinkets.\n\n2023-05-14: Fix premature Lightning Bolt with PWave in AOE.\n\n2023-05-12: Add alpha_wolf_min_remains and Flame Shock if PWave is on CD.\n\n2023-05-06: More incremental SimC updates.\n\n2023-05-02: More incremental SimC updates.\n\n2023-04-30: More SimC updates.\n\n2023-04-29: Additional SimC updates.\n\n2023-04-26: Update from SimulationCraft for 10.1.\n\n2023-03-05:  In multi-target scenarios, filler Flame Shock should only be used if Flame Shock is refreshable.",
					["lists"] = {
						["single"] = {
							{
								["enabled"] = true,
								["criteria"] = "! dot.flame_shock.ticking & talent.lashing_flames.enabled & ( raid_event.adds.in > 42 || raid_event.adds.in < 6 )",
								["action"] = "primordial_wave",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & talent.lashing_flames.enabled",
								["action"] = "flame_shock",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & talent.elemental_spirits.enabled & feral_spirit.active >= 4",
								["action"] = "elemental_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc & raid_event.adds.in >= 40",
								["action"] = "sundering",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & buff.crackling_thunder.down & buff.ascendance.up & ti_chain_lightning & ( buff.ascendance.remains > ( cooldown.strike.remains + gcd.max ) )",
								["action"] = "lightning_bolt",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.thorims_invocation.enabled & buff.maelstrom_weapon.stack >= 1 & ( talent.deeply_rooted_elements.enabled || ( talent.stormblast.enabled & buff.stormbringer.up ) || ( talent.elemental_assault.enabled & talent.stormflurry.enabled ) || ti_lightning_bolt )",
								["action"] = "windstrike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.doom_winds.up || talent.deeply_rooted_elements.enabled || ( talent.stormblast.enabled & buff.stormbringer.up ) || ( ( talent.elemental_assault.enabled & talent.stormflurry.enabled ) & buff.maelstrom_weapon.stack < buff.maelstrom_weapon.max_stack )",
								["action"] = "stormstrike",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_hand.up",
								["action"] = "lava_lash",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.windfury_totem.up",
								["action"] = "windfury_totem",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & charges = max_charges",
								["action"] = "elemental_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & buff.primordial_wave.up & ( buff.primordial_wave.remains < 1.5 * gcd.max || raid_event.adds.in > buff.primordial_wave.remains & ( ! buff.splintered_elements.up || boss & fight_remains <= 12 ) )",
								["action"] = "lightning_bolt",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & buff.crackling_thunder.up & talent.elemental_spirits.enabled",
								["action"] = "chain_lightning",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & buff.crackling_thunder.down & buff.ascendance.up & ti_chain_lightning",
								["action"] = "lightning_bolt",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & ( buff.feral_spirit.up || ! talent.elemental_spirits.enabled )",
								["action"] = "elemental_blast",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! talent.thorims_invocation.enabled & buff.maelstrom_weapon.stack >= 5",
								["action"] = "lava_burst",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack ) || ( talent.static_accumulation.enabled & buff.maelstrom_weapon.stack >= 5 ) ) & buff.primordial_wave.down",
								["action"] = "lightning_bolt",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.doom_winds.up",
								["action"] = "ice_strike",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.doom_winds.up & raid_event.adds.in >= 40",
								["action"] = "sundering",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.doom_winds.up || ( talent.alpha_wolf.enabled & feral_spirit.active & alpha_wolf_min_remains = 0 )",
								["action"] = "crash_lightning",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 42 || raid_event.adds.in < 6",
								["action"] = "primordial_wave",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "flame_shock",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.molten_assault.enabled & dot.flame_shock.refreshable",
								["action"] = "lava_lash",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ice_strike.up",
								["action"] = "ice_strike",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.hailstorm.up",
								["action"] = "frost_shock",
							}, -- [24]
							{
								["action"] = "lava_lash",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "ice_strike",
								["enabled"] = true,
							}, -- [26]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [27]
							{
								["action"] = "stormstrike",
								["enabled"] = true,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in >= 40",
								["action"] = "sundering",
							}, -- [29]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "talent.swirling_maelstrom.enabled & active_dot.flame_shock & buff.maelstrom_weapon.stack < buff.maelstrom_weapon.max_stack",
								["action"] = "fire_nova",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.maelstrom_weapon.stack >= 5 & buff.primordial_wave.down",
								["action"] = "lightning_bolt",
							}, -- [32]
							{
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [33]
							{
								["action"] = "crash_lightning",
								["enabled"] = true,
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock",
								["action"] = "fire_nova",
							}, -- [35]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [36]
							{
								["enabled"] = true,
								["criteria"] = "settings.filler_shock",
								["action"] = "flame_shock",
							}, -- [37]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & buff.primordial_wave.down",
								["action"] = "lightning_bolt",
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_totem.remains < 30",
								["action"] = "windfury_totem",
							}, -- [39]
						},
						["funnel"] = {
							{
								["enabled"] = true,
								["criteria"] = "( active_dot.flame_shock >= active_enemies || active_dot.flame_shock = 6 ) & buff.primordial_wave.up & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ( ! buff.splintered_elements.up || fight_remains <= 12 || raid_event.adds.remains <= gcd.max )",
								["action"] = "lightning_bolt",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( talent.molten_assault.enabled & dot.flame_shock.ticking & ( active_dot.flame_shock < active_enemies ) & active_dot.flame_shock < 6 ) || ( talent.ashen_catalyst.enabled & buff.ashen_catalyst.stack = buff.ashen_catalyst.max_stack )",
								["action"] = "lava_lash",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.primordial_wave.up",
								["action"] = "primordial_wave",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( talent.primordial_wave.enabled || talent.fire_nova.enabled ) & ! ticking",
								["action"] = "flame_shock",
								["description"] = "In game, you might not have Primordial Wave ready on pull but you want Flame Shock out for LL, FN, and PWave when it comes available.  Also, existing Flame Shocks may not be close enough to spread.",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.elemental_spirits.enabled || ( talent.elemental_spirits.enabled & ( charges = max_charges || buff.feral_spirit.up ) ) ) & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack",
								["action"] = "elemental_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( talent.thorims_invocation.enabled & buff.maelstrom_weapon.stack > 1 ) || buff.converging_storms.stack = buff.converging_storms.max_stack",
								["action"] = "windstrike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.converging_storms.stack = buff.converging_storms.max_stack",
								["action"] = "stormstrike",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & buff.crackling_thunder.up",
								["action"] = "chain_lightning",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.molten_weapon.stack + buff.volcanic_strength.up > buff.crackling_surge.stack ) & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack",
								["action"] = "lava_burst",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack",
								["action"] = "lightning_bolt",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.doom_winds.up || ! buff.crash_lightning.up || ( talent.alpha_wolf.enabled & feral_spirit.active & alpha_wolf_min_remains = 0 ) || ( talent.converging_storms.enabled & buff.converging_storms.stack < buff.converging_storms.max_stack )",
								["action"] = "crash_lightning",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.doom_winds.up || set_bonus.tier30_2pc",
								["action"] = "sundering",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock = 6 || ( active_dot.flame_shock >= 4 & active_dot.flame_shock >= cycle_enemies )",
								["action"] = "fire_nova",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & ! buff.ice_strike.up",
								["action"] = "ice_strike",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.hailstorm.up",
								["action"] = "frost_shock",
							}, -- [15]
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.molten_assault.enabled & ! ticking",
								["action"] = "flame_shock",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( talent.fire_nova.enabled || talent.primordial_wave.enabled ) & ( active_dot.flame_shock < active_enemies ) & active_dot.flame_shock < 6",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock >= 3",
								["action"] = "fire_nova",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.crash_lightning.up & talent.deeply_rooted_elements.enabled",
								["action"] = "stormstrike",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.crashing_storms.enabled & buff.cl_crash_lightning.up & active_enemies >= 4",
								["action"] = "crash_lightning",
							}, -- [21]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "stormstrike",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "ice_strike",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "lava_lash",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "crash_lightning",
								["enabled"] = true,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock >= 2",
								["action"] = "fire_nova",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.elemental_spirits.enabled || ( talent.elemental_spirits.enabled & ( charges = max_charges || buff.feral_spirit.up ) ) ) & buff.maelstrom_weapon.stack >= 5",
								["action"] = "elemental_blast",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "( buff.molten_weapon.stack + buff.volcanic_strength.up > buff.crackling_surge.stack ) & buff.maelstrom_weapon.stack >= 5",
								["action"] = "lava_burst",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "lightning_bolt",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_totem.remains < 30",
								["action"] = "windfury_totem",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "flame_shock",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "! talent.hailstorm.enabled",
								["action"] = "frost_shock",
							}, -- [33]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "interrupt of casts.",
								["action"] = "wind_shear",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "settings.hostile_dispel",
								["action"] = "purge",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "settings.hostile_dispel",
								["action"] = "greater_purge",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & fight_remains <= 30 || ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled )",
								["action"] = "potion",
							}, -- [4]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "elementium_pocket_anvil",
								["name"] = "elementium_pocket_anvil",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "algethar_puzzle_box",
								["use_off_gcd"] = 1,
								["criteria"] = "( ! buff.ascendance.up & ! buff.feral_spirit.up & ! buff.doom_winds.up ) || ( talent.ascendance.enabled & ( cooldown.ascendance.remains < 2 * action.stormstrike.gcd ) ) || boss & ( fight_remains % 180 <= 30 )",
								["name"] = "algethar_puzzle_box",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket1_is_weird & trinket.t1.has_use_buff & ( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % trinket.t1.cooldown.duration <= trinket.t1.buff.duration ) || ( variable.min_talented_cd_remains >= trinket.t1.cooldown.duration ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket2_is_weird & trinket.t2.has_use_buff & ( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % trinket.t2.cooldown.duration <= trinket.t2.buff.duration ) || ( variable.min_talented_cd_remains >= trinket.t2.cooldown.duration ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "beacon_to_the_beyond",
								["use_off_gcd"] = 1,
								["criteria"] = "( ! buff.ascendance.up & ! buff.feral_spirit.up & ! buff.doom_winds.up ) || boss & ( fight_remains % 150 <= 5 )",
								["name"] = "beacon_to_the_beyond",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "manic_grieftorch",
								["use_off_gcd"] = 1,
								["criteria"] = "( ! buff.ascendance.up & ! buff.feral_spirit.up & ! buff.doom_winds.up ) || boss & ( fight_remains % 120 <= 5 )",
								["name"] = "manic_grieftorch",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket1_is_weird & ! trinket.t1.has_use_buff",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket2_is_weird & ! trinket.t2.has_use_buff",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % action.blood_fury.cooldown <= action.blood_fury.duration ) || ( variable.min_talented_cd_remains >= action.blood_fury.cooldown ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
								["action"] = "blood_fury",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % action.berserking.cooldown <= action.berserking.duration ) || ( variable.min_talented_cd_remains >= action.berserking.cooldown ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
								["action"] = "berserking",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % action.fireblood.cooldown <= action.fireblood.duration ) || ( variable.min_talented_cd_remains >= action.fireblood.cooldown ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
								["action"] = "fireblood",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % action.ancestral_call.cooldown <= action.ancestral_call.duration ) || ( variable.min_talented_cd_remains >= action.ancestral_call.cooldown ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
								["action"] = "ancestral_call",
							}, -- [16]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.ticking & ( ( ti_lightning_bolt & active_enemies = 1 & raid_event.adds.in >= 90 ) || ( ti_chain_lightning & active_enemies > 1 ) )",
								["action"] = "ascendance",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in >= 90 || active_enemies > 1",
								["action"] = "doom_winds",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies = 1",
								["list_name"] = "single",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 1 & ! funnel",
								["list_name"] = "aoe",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 1 & funnel",
								["list_name"] = "funnel",
							}, -- [22]
						},
						["precombat"] = {
							{
								["action"] = "windfury_weapon",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "flametongue_weapon",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.lightning_shield.down & ( buff.earth_shield.down || talent.elemental_orbit.enabled )",
								["action"] = "lightning_shield",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.lightning_shield.up & buff.earth_shield.down & talent.elemental_orbit.enabled",
								["action"] = "earth_shield",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "project_windfury_totem",
								["action"] = "totemic_projection",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "time = 0 || buff.windfury_totem.down",
								["action"] = "windfury_totem",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.is.algethar_puzzle_box || trinket.t1.is.manic_grieftorch || trinket.t1.is.elementium_pocket_anvil || trinket.t1.is.beacon_to_the_beyond",
								["var_name"] = "trinket1_is_weird",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.is.algethar_puzzle_box || trinket.t2.is.manic_grieftorch || trinket.t2.is.elementium_pocket_anvil || trinket.t2.is.beacon_to_the_beyond",
								["var_name"] = "trinket2_is_weird",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( ( cooldown.feral_spirit.remains / ( 1 + 1.5 * talent.witch_doctors_ancestry.rank ) ) + 1000 * ! talent.feral_spirit.enabled ) <? ( cooldown.doom_winds.remains + 1000 * ! talent.doom_winds.enabled ) <? ( cooldown.ascendance.remains + 1000 * ! talent.ascendance.enabled )",
								["var_name"] = "min_talented_cd_remains",
							}, -- [9]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.crashing_storms.enabled & ( ( talent.unruly_winds.enabled & active_enemies >= 10 ) || active_enemies >= 15 )",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( active_dot.flame_shock >= active_enemies || active_dot.flame_shock >= 6 ) & buff.primordial_wave.up & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ( ! buff.splintered_elements.up || fight_remains <= 12 || raid_event.adds.remains <= gcd.max )",
								["action"] = "lightning_bolt",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.molten_assault.enabled & ( talent.primordial_wave.enabled || talent.fire_nova.enabled ) & dot.flame_shock.ticking & ( active_dot.flame_shock < active_enemies ) & active_dot.flame_shock < 6",
								["action"] = "lava_lash",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.primordial_wave.up",
								["action"] = "primordial_wave",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( talent.primordial_wave.enabled || talent.fire_nova.enabled ) & ! ticking",
								["action"] = "flame_shock",
								["description"] = "In game, you might not have Primordial Wave ready on pull but you want Flame Shock out for LL, FN, and PWave when it comes available.  Also, existing Flame Shocks may not be close enough to spread.",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.elemental_spirits.enabled || ( talent.elemental_spirits.enabled & ( charges = max_charges || buff.feral_spirit.up ) ) ) & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ( ! talent.crashing_storms.enabled || active_enemies <= 3 )",
								["action"] = "elemental_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.thorims_invocation.enabled & ti_chain_lightning & buff.maelstrom_weapon.stack > 1",
								["action"] = "windstrike",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack",
								["action"] = "chain_lightning",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.doom_winds.up || ! buff.crash_lightning.up || ( talent.alpha_wolf.enabled & feral_spirit.active & alpha_wolf_min_remains = 0 )",
								["action"] = "crash_lightning",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.doom_winds.up || set_bonus.tier30_2pc",
								["action"] = "sundering",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock >= 6 || ( active_dot.flame_shock >= 4 & active_dot.flame_shock >= cycle_enemies )",
								["action"] = "fire_nova",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.lashing_flames.enabled",
								["action"] = "lava_lash",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( talent.molten_assault.enabled & dot.flame_shock.ticking & ( active_dot.flame_shock < active_enemies ) & active_dot.flame_shock < 6 ) || ( talent.ashen_catalyst.enabled & buff.ashen_catalyst.stack = buff.ashen_catalyst.max_stack )",
								["action"] = "lava_lash",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled",
								["action"] = "ice_strike",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.hailstorm.up",
								["action"] = "frost_shock",
							}, -- [15]
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.molten_assault.enabled & ! ticking",
								["action"] = "flame_shock",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( talent.fire_nova.enabled || talent.primordial_wave.enabled ) & ( active_dot.flame_shock < active_enemies ) & active_dot.flame_shock < 6",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock >= 3",
								["action"] = "fire_nova",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.crash_lightning.up & ( talent.deeply_rooted_elements.enabled || buff.converging_storms.stack = 6 )",
								["action"] = "stormstrike",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.crashing_storms.enabled & buff.cl_crash_lightning.up & active_enemies >= 4",
								["action"] = "crash_lightning",
							}, -- [21]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "stormstrike",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "ice_strike",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "lava_lash",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "crash_lightning",
								["enabled"] = true,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock >= 2",
								["action"] = "fire_nova",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.elemental_spirits.enabled || ( talent.elemental_spirits.enabled & ( time_to_max_charges < gcd.max || buff.feral_spirit.up ) ) ) & buff.maelstrom_weapon.stack >= 5 & ( ! talent.crashing_storms.enabled || active_enemies <= 3 )",
								["action"] = "elemental_blast",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "chain_lightning",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_totem.remains < 30",
								["action"] = "windfury_totem",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "flame_shock",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "! talent.hailstorm.enabled",
								["action"] = "frost_shock",
							}, -- [32]
						},
					},
					["version"] = 20230808,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 6: Converted operations in '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||(talent.ascendance.enabled&(cooldown.ascendance.remains<2*action.stormstrike.gcd))||boss&(fight_remains%%180<=30)' to '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||(talent.ascendance.enabled&(cooldown.ascendance.remains<2*action.stormstrike.gcd))||boss&(fight_remains%180<=30)'.\nLine 7: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.1.buff.duration' to 'trinket.t1.buff.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted operations in '!variable.trinket1_is_weird&trinket.t1.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%trinket.t1.cooldown.duration<=trinket.t1.buff.duration)||(variable.min_talented_cd_remains>=trinket.t1.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '!variable.trinket1_is_weird&trinket.t1.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%trinket.t1.cooldown.duration<=trinket.t1.buff.duration)||(variable.min_talented_cd_remains>=trinket.t1.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nLine 8: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 8: Converted 'trinket.2.buff.duration' to 'trinket.t2.buff.duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 8: Converted operations in '!variable.trinket2_is_weird&trinket.t2.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%trinket.t2.cooldown.duration<=trinket.t2.buff.duration)||(variable.min_talented_cd_remains>=trinket.t2.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '!variable.trinket2_is_weird&trinket.t2.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%trinket.t2.cooldown.duration<=trinket.t2.buff.duration)||(variable.min_talented_cd_remains>=trinket.t2.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nLine 9: Converted operations in '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%%150<=5)' to '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%150<=5)'.\nLine 10: Converted operations in '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%%120<=5)' to '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%120<=5)'.\nLine 11: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 12: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 13: Converted operations in '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.blood_fury.cooldown<=action.blood_fury.duration)||(variable.min_talented_cd_remains>=action.blood_fury.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%action.blood_fury.cooldown<=action.blood_fury.duration)||(variable.min_talented_cd_remains>=action.blood_fury.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nLine 14: Converted operations in '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.berserking.cooldown<=action.berserking.duration)||(variable.min_talented_cd_remains>=action.berserking.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%action.berserking.cooldown<=action.berserking.duration)||(variable.min_talented_cd_remains>=action.berserking.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nLine 15: Converted operations in '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.fireblood.cooldown<=action.fireblood.duration)||(variable.min_talented_cd_remains>=action.fireblood.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%action.fireblood.cooldown<=action.fireblood.duration)||(variable.min_talented_cd_remains>=action.fireblood.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nLine 16: Converted operations in '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.ancestral_call.cooldown<=action.ancestral_call.duration)||(variable.min_talented_cd_remains>=action.ancestral_call.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%action.ancestral_call.cooldown<=action.ancestral_call.duration)||(variable.min_talented_cd_remains>=action.ancestral_call.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nThe following auras were used in the action list but were not found in the addon database:\n - duration\n\nThe import for 'precombat' required some automated changes.\nLine 7: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 7: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 7: Converted 'trinket.1.is.elementium_pocket_anvil' to 'trinket.t1.is.elementium_pocket_anvil' (1x).\nLine 7: Converted 'trinket.1.is.beacon_to_the_beyond' to 'trinket.t1.is.beacon_to_the_beyond' (1x).\nLine 8: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 8: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 8: Converted 'trinket.2.is.elementium_pocket_anvil' to 'trinket.t2.is.elementium_pocket_anvil' (1x).\nLine 8: Converted 'trinket.2.is.beacon_to_the_beyond' to 'trinket.t2.is.beacon_to_the_beyond' (1x).\nLine 9: Converted operations in '((cooldown.feral_spirit.remains%(1+1.5*talent.witch_doctors_ancestry.rank))+1000*!talent.feral_spirit.enabled)<?(cooldown.doom_winds.remains+1000*!talent.doom_winds.enabled)<?(cooldown.ascendance.remains+1000*!talent.ascendance.enabled)' to '((cooldown.feral_spirit.remains/(1+1.5*talent.witch_doctors_ancestry.rank))+1000*!talent.feral_spirit.enabled)<?(cooldown.doom_winds.remains+1000*!talent.doom_winds.enabled)<?(cooldown.ascendance.remains+1000*!talent.ascendance.enabled)'.\n\nImported 5 action lists.\n",
					["profile"] = "actions.precombat+=/windfury_weapon\nactions.precombat+=/flametongue_weapon\nactions.precombat+=/lightning_shield,if=buff.lightning_shield.down&(buff.earth_shield.down||talent.elemental_orbit.enabled)\nactions.precombat+=/earth_shield,if=buff.lightning_shield.up&buff.earth_shield.down&talent.elemental_orbit.enabled\nactions.precombat+=/totemic_projection,if=project_windfury_totem\nactions.precombat+=/windfury_totem,if=time=0||buff.windfury_totem.down\nactions.precombat+=/variable,name=trinket1_is_weird,value=trinket.1.is.algethar_puzzle_box||trinket.1.is.manic_grieftorch||trinket.1.is.elementium_pocket_anvil||trinket.1.is.beacon_to_the_beyond\nactions.precombat+=/variable,name=trinket2_is_weird,value=trinket.2.is.algethar_puzzle_box||trinket.2.is.manic_grieftorch||trinket.2.is.elementium_pocket_anvil||trinket.2.is.beacon_to_the_beyond\nactions.precombat+=/variable,name=min_talented_cd_remains,value=((cooldown.feral_spirit.remains%(1+1.5*talent.witch_doctors_ancestry.rank))+1000*!talent.feral_spirit.enabled)<?(cooldown.doom_winds.remains+1000*!talent.doom_winds.enabled)<?(cooldown.ascendance.remains+1000*!talent.ascendance.enabled)\n\n# interrupt of casts.\nactions+=/wind_shear\nactions+=/purge,if=settings.hostile_dispel\nactions+=/greater_purge,if=settings.hostile_dispel\nactions+=/potion,if=(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&fight_remains<=30||!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled)\nactions+=/use_item,name=elementium_pocket_anvil,use_off_gcd=1\nactions+=/use_item,name=algethar_puzzle_box,use_off_gcd=1,if=(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||(talent.ascendance.enabled&(cooldown.ascendance.remains<2*action.stormstrike.gcd))||boss&(fight_remains%%180<=30)\nactions+=/use_item,slot=trinket1,if=!variable.trinket1_is_weird&trinket.1.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%trinket.1.cooldown.duration<=trinket.1.buff.duration)||(variable.min_talented_cd_remains>=trinket.1.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\nactions+=/use_item,slot=trinket2,if=!variable.trinket2_is_weird&trinket.2.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%trinket.2.cooldown.duration<=trinket.2.buff.duration)||(variable.min_talented_cd_remains>=trinket.2.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\nactions+=/use_item,name=beacon_to_the_beyond,use_off_gcd=1,if=(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%%150<=5)\nactions+=/use_item,name=manic_grieftorch,use_off_gcd=1,if=(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%%120<=5)\nactions+=/use_item,slot=trinket1,if=!variable.trinket1_is_weird&!trinket.1.has_use_buff\nactions+=/use_item,slot=trinket2,if=!variable.trinket2_is_weird&!trinket.2.has_use_buff\nactions+=/blood_fury,if=(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.blood_fury.cooldown<=action.blood_fury.duration)||(variable.min_talented_cd_remains>=action.blood_fury.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\nactions+=/berserking,if=(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.berserking.cooldown<=action.berserking.duration)||(variable.min_talented_cd_remains>=action.berserking.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\nactions+=/fireblood,if=(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.fireblood.cooldown<=action.fireblood.duration)||(variable.min_talented_cd_remains>=action.fireblood.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\nactions+=/ancestral_call,if=(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.ancestral_call.cooldown<=action.ancestral_call.duration)||(variable.min_talented_cd_remains>=action.ancestral_call.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\n## actions+=/invoke_external_buff,name=power_infusion,if=(talent.ascendance.enabled&talent.thorims_invocation.enabled&buff.ascendance.up)||(!talent.thorims_invocation.enabled&talent.feral_spirit.enabled&buff.feral_spirit.up)||(!talent.thorims_invocation.enabled&!talent.feral_spirit.enabled)||fight_remains<=20\nactions+=/feral_spirit\nactions+=/ascendance,if=dot.flame_shock.ticking&((ti_lightning_bolt&active_enemies=1&raid_event.adds.in>=90)||(ti_chain_lightning&active_enemies>1))\nactions+=/doom_winds,if=raid_event.adds.in>=90||active_enemies>1\nactions+=/call_action_list,name=single,strict=1,if=active_enemies=1\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>1&!funnel\nactions+=/call_action_list,name=funnel,strict=1,if=active_enemies>1&funnel\n\nactions.single+=/primordial_wave,if=!dot.flame_shock.ticking&talent.lashing_flames.enabled&(raid_event.adds.in>42||raid_event.adds.in<6)\nactions.single+=/flame_shock,if=!ticking&talent.lashing_flames.enabled\nactions.single+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5&talent.elemental_spirits.enabled&feral_spirit.active>=4\nactions.single+=/sundering,if=set_bonus.tier30_2pc&raid_event.adds.in>=40\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5&buff.crackling_thunder.down&buff.ascendance.up&ti_chain_lightning&(buff.ascendance.remains>(cooldown.strike.remains+gcd))\nactions.single+=/windstrike,if=talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>=1&(talent.deeply_rooted_elements.enabled||(talent.stormblast.enabled&buff.stormbringer.up)||(talent.elemental_assault.enabled&talent.stormflurry.enabled)||ti_lightning_bolt)\nactions.single+=/stormstrike,if=buff.doom_winds.up||talent.deeply_rooted_elements.enabled||(talent.stormblast.enabled&buff.stormbringer.up)||((talent.elemental_assault.enabled&talent.stormflurry.enabled)&buff.maelstrom_weapon.stack<buff.maelstrom_weapon.max_stack)\nactions.single+=/lava_lash,if=buff.hot_hand.up\nactions.single+=/windfury_totem,if=!buff.windfury_totem.up\nactions.single+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5&charges=max_charges\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5&buff.primordial_wave.up&(buff.primordial_wave.remains<1.5*gcd.max||raid_event.adds.in>buff.primordial_wave.remains&(!buff.splintered_elements.up||boss&fight_remains<=12))\nactions.single+=/chain_lightning,if=buff.maelstrom_weapon.stack>=5&buff.crackling_thunder.up&talent.elemental_spirits.enabled\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5&buff.crackling_thunder.down&buff.ascendance.up&ti_chain_lightning\nactions.single+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5&(buff.feral_spirit.up||!talent.elemental_spirits.enabled)\nactions.single+=/lava_burst,if=!talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>=5\nactions.single+=/lightning_bolt,if=((buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack)||(talent.static_accumulation.enabled&buff.maelstrom_weapon.stack>=5))&buff.primordial_wave.down\nactions.single+=/ice_strike,if=buff.doom_winds.up\nactions.single+=/sundering,if=buff.doom_winds.up&raid_event.adds.in>=40\nactions.single+=/crash_lightning,if=buff.doom_winds.up||(talent.alpha_wolf.enabled&feral_spirit.active&alpha_wolf_min_remains=0)\nactions.single+=/primordial_wave,if=raid_event.adds.in>42||raid_event.adds.in<6\nactions.single+=/flame_shock,if=!ticking\nactions.single+=/lava_lash,if=talent.molten_assault.enabled&dot.flame_shock.refreshable\nactions.single+=/ice_strike,if=!buff.ice_strike.up\nactions.single+=/frost_shock,if=buff.hailstorm.up\nactions.single+=/lava_lash\nactions.single+=/ice_strike\nactions.single+=/windstrike\nactions.single+=/stormstrike\nactions.single+=/sundering,if=raid_event.adds.in>=40\nactions.single+=/bag_of_tricks\nactions.single+=/fire_nova,if=talent.swirling_maelstrom.enabled&active_dot.flame_shock&buff.maelstrom_weapon.stack<buff.maelstrom_weapon.max_stack\nactions.single+=/lightning_bolt,if=talent.hailstorm.enabled&buff.maelstrom_weapon.stack>=5&buff.primordial_wave.down\nactions.single+=/frost_shock\nactions.single+=/crash_lightning\nactions.single+=/fire_nova,if=active_dot.flame_shock\nactions.single+=/earth_elemental\nactions.single+=/flame_shock,if=settings.filler_shock\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5&buff.primordial_wave.down\nactions.single+=/windfury_totem,if=buff.windfury_totem.remains<30\n\nactions.aoe+=/crash_lightning,if=talent.crashing_storms.enabled&((talent.unruly_winds.enabled&active_enemies>=10)||active_enemies>=15)\nactions.aoe+=/lightning_bolt,if=(active_dot.flame_shock>=active_enemies||active_dot.flame_shock>=6)&buff.primordial_wave.up&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(!buff.splintered_elements.up||fight_remains<=12||raid_event.adds.remains<=gcd)\nactions.aoe+=/lava_lash,if=talent.molten_assault.enabled&(talent.primordial_wave.enabled||talent.fire_nova.enabled)&dot.flame_shock.ticking&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6\nactions.aoe+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up\n# In game, you might not have Primordial Wave ready on pull but you want Flame Shock out for LL, FN, and PWave when it comes available.  Also, existing Flame Shocks may not be close enough to spread.\nactions.aoe+=/flame_shock,if=(talent.primordial_wave.enabled||talent.fire_nova.enabled)&!ticking\nactions.aoe+=/elemental_blast,if=(!talent.elemental_spirits.enabled||(talent.elemental_spirits.enabled&(charges=max_charges||buff.feral_spirit.up)))&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(!talent.crashing_storms.enabled||active_enemies<=3)\nactions.aoe+=/windstrike,if=talent.thorims_invocation.enabled&ti_chain_lightning&buff.maelstrom_weapon.stack>1\nactions.aoe+=/chain_lightning,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack\nactions.aoe+=/crash_lightning,if=buff.doom_winds.up||!buff.crash_lightning.up||(talent.alpha_wolf.enabled&feral_spirit.active&alpha_wolf_min_remains=0)\nactions.aoe+=/sundering,if=buff.doom_winds.up||set_bonus.tier30_2pc\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>=6||(active_dot.flame_shock>=4&active_dot.flame_shock>=cycle_enemies)\nactions.aoe+=/lava_lash,cycle_targets=1,if=talent.lashing_flames.enabled\nactions.aoe+=/lava_lash,if=(talent.molten_assault.enabled&dot.flame_shock.ticking&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6)||(talent.ashen_catalyst.enabled&buff.ashen_catalyst.stack=buff.ashen_catalyst.max_stack)\nactions.aoe+=/ice_strike,if=talent.hailstorm.enabled\nactions.aoe+=/frost_shock,if=talent.hailstorm.enabled&buff.hailstorm.up\nactions.aoe+=/sundering\nactions.aoe+=/flame_shock,if=talent.molten_assault.enabled&!ticking\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&(talent.fire_nova.enabled||talent.primordial_wave.enabled)&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>=3\nactions.aoe+=/stormstrike,if=buff.crash_lightning.up&(talent.deeply_rooted_elements.enabled||buff.converging_storms.stack=6)\nactions.aoe+=/crash_lightning,if=talent.crashing_storms.enabled&buff.cl_crash_lightning.up&active_enemies>=4\nactions.aoe+=/windstrike\nactions.aoe+=/stormstrike\nactions.aoe+=/ice_strike\nactions.aoe+=/lava_lash\nactions.aoe+=/crash_lightning\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>=2\nactions.aoe+=/elemental_blast,if=(!talent.elemental_spirits.enabled||(talent.elemental_spirits.enabled&(time_to_max_charges<gcd.max||buff.feral_spirit.up)))&buff.maelstrom_weapon.stack>=5&(!talent.crashing_storms.enabled||active_enemies<=3)\nactions.aoe+=/chain_lightning,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/windfury_totem,if=buff.windfury_totem.remains<30\nactions.aoe+=/flame_shock,if=!ticking\nactions.aoe+=/frost_shock,if=!talent.hailstorm.enabled\n\nactions.funnel+=/lightning_bolt,if=(active_dot.flame_shock>=active_enemies||active_dot.flame_shock=6)&buff.primordial_wave.up&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(!buff.splintered_elements.up||fight_remains<=12||raid_event.adds.remains<=gcd)\nactions.funnel+=/lava_lash,if=(talent.molten_assault.enabled&dot.flame_shock.ticking&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6)||(talent.ashen_catalyst.enabled&buff.ashen_catalyst.stack=buff.ashen_catalyst.max_stack)\nactions.funnel+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up\n# In game, you might not have Primordial Wave ready on pull but you want Flame Shock out for LL, FN, and PWave when it comes available.  Also, existing Flame Shocks may not be close enough to spread.\nactions.funnel+=/flame_shock,if=(talent.primordial_wave.enabled||talent.fire_nova.enabled)&!ticking\nactions.funnel+=/elemental_blast,if=(!talent.elemental_spirits.enabled||(talent.elemental_spirits.enabled&(charges=max_charges||buff.feral_spirit.up)))&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack\nactions.funnel+=/windstrike,if=(talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>1)||buff.converging_storms.stack=buff.converging_storms.max_stack\nactions.funnel+=/stormstrike,if=buff.converging_storms.stack=buff.converging_storms.max_stack\nactions.funnel+=/chain_lightning,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&buff.crackling_thunder.up\nactions.funnel+=/lava_burst,if=(buff.molten_weapon.stack+buff.volcanic_strength.up>buff.crackling_surge.stack)&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack\nactions.funnel+=/lightning_bolt,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack\nactions.funnel+=/crash_lightning,if=buff.doom_winds.up||!buff.crash_lightning.up||(talent.alpha_wolf.enabled&feral_spirit.active&alpha_wolf_min_remains=0)||(talent.converging_storms.enabled&buff.converging_storms.stack<buff.converging_storms.max_stack)\nactions.funnel+=/sundering,if=buff.doom_winds.up||set_bonus.tier30_2pc\nactions.funnel+=/fire_nova,if=active_dot.flame_shock=6||(active_dot.flame_shock>=4&active_dot.flame_shock>=cycle_enemies)\nactions.funnel+=/ice_strike,if=talent.hailstorm.enabled&!buff.ice_strike.up\nactions.funnel+=/frost_shock,if=talent.hailstorm.enabled&buff.hailstorm.up\nactions.funnel+=/sundering\nactions.funnel+=/flame_shock,if=talent.molten_assault.enabled&!ticking\nactions.funnel+=/flame_shock,cycle_targets=1,if=(talent.fire_nova.enabled||talent.primordial_wave.enabled)&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6\nactions.funnel+=/fire_nova,if=active_dot.flame_shock>=3\nactions.funnel+=/stormstrike,if=buff.crash_lightning.up&talent.deeply_rooted_elements.enabled\nactions.funnel+=/crash_lightning,if=talent.crashing_storms.enabled&buff.cl_crash_lightning.up&active_enemies>=4\nactions.funnel+=/windstrike\nactions.funnel+=/stormstrike\nactions.funnel+=/ice_strike\nactions.funnel+=/lava_lash\nactions.funnel+=/crash_lightning\nactions.funnel+=/fire_nova,if=active_dot.flame_shock>=2\nactions.funnel+=/elemental_blast,if=(!talent.elemental_spirits.enabled||(talent.elemental_spirits.enabled&(charges=max_charges||buff.feral_spirit.up)))&buff.maelstrom_weapon.stack>=5\nactions.funnel+=/lava_burst,if=(buff.molten_weapon.stack+buff.volcanic_strength.up>buff.crackling_surge.stack)&buff.maelstrom_weapon.stack>=5\nactions.funnel+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5\nactions.funnel+=/windfury_totem,if=buff.windfury_totem.remains<30\nactions.funnel+=/flame_shock,if=!ticking\nactions.funnel+=/frost_shock,if=!talent.hailstorm.enabled",
					["author"] = "SimC",
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230520,
					["spec"] = 262,
					["desc"] = "2023-05-20: Updates from SimC (opener CDs and Windspeaker's Lava Resurgence).\n\n2023-05-15: Don't consume some buffs with Flame Shock.\n\n2023-05-06: Update to Lava Burst prioritization.\n\n2023-04-22: Updates from SimulationCraft.\n\n2023-04-15: Correct Echo of the Elements talent.",
					["profile"] = "# Ensure weapon enchant is applied.\nactions.precombat+=/flametongue_weapon,if=talent.improved_flametongue_weapon.enabled\nactions.precombat+=/lightning_shield,if=buff.lightning_shield.down&(buff.earth_shield.down||talent.elemental_orbit.enabled)\nactions.precombat+=/earth_shield,if=buff.lightning_shield.up&buff.earth_shield.down&talent.elemental_orbit.enabled\nactions.precombat+=/potion\nactions.precombat+=/stormkeeper\nactions.precombat+=/icefury\n\n# Executed every time the actor is available.\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/purge,if=settings.hostile_dispel\nactions+=/greater_purge,if=settings.hostile_dispel\n# Enable more movement.\nactions+=/spiritwalkers_grace,moving=1,if=movement.distance>6\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/bag_of_tricks,if=!talent.ascendance.enabled||!buff.ascendance.up\nactions+=/use_items\nactions+=/meteor\nactions+=/tempest,if=buff.call_lightning.up\nactions+=/vesper_totem\nactions+=/natures_swiftness\nactions+=/potion\nactions+=/run_action_list,name=aoe,strict=1,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n# Keep your cooldowns rolling.\nactions.aoe=fire_elemental\n# Keep your cooldowns rolling.\nactions.aoe+=/storm_elemental\n# Keep your cooldowns rolling.\nactions.aoe+=/stormkeeper,if=!buff.stormkeeper.up\n# Reset LMT CD as early as possible.\nactions.aoe+=/totemic_recall,if=cooldown.liquid_magma_totem.remains>45\n# Keep your cooldowns rolling.\nactions.aoe+=/liquid_magma_totem\n# Spread Flame Shock using Surge of Power. Don't waste buffs by resets (resets are gone, but I'll keep that logic here).\nactions.aoe+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up&buff.surge_of_power.up&!buff.splintered_elements.up\n# Spread Flame Shock using Surge of Power. Don't waste buffs by resets (resets are gone, but I'll keep that logic here).\nactions.aoe+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up&talent.deeply_rooted_elements.enabled&!talent.surge_of_power.enabled&!buff.splintered_elements.up\n# Spread Flame Shock using Surge of Power. Don't waste buffs by resets (resets are gone, but I'll keep that logic here).\nactions.aoe+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up&talent.master_of_the_elements.enabled&!talent.lightning_rod.enabled\n# Spread Flame Shock using Surge of Power on up to 4 for Lightning builds with Windspeaker's Lava Resurgence.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&buff.surge_of_power.up&talent.lightning_rod.enabled&talent.windspeakers_lava_resurgence.enabled&dot.flame_shock.remains<target.time_to_die-16&active_enemies<5\n# Spread Flame Shock using Surge of Power up to 6.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&buff.surge_of_power.up&(!talent.lightning_rod.enabled||talent.skybreakers_fiery_demise.enabled)&dot.flame_shock.remains<target.time_to_die-5&active_dot.flame_shock<6\n# Spread Flame Shock against low target counts if Master of the Elements was selected up to 6.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&talent.master_of_the_elements.enabled&!talent.lightning_rod.enabled&dot.flame_shock.remains<target.time_to_die-5&active_dot.flame_shock<6\n# Spread Flame Shock to gamble on Deeply Rooted Element procs up to 6.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&talent.deeply_rooted_elements.enabled&!talent.surge_of_power.enabled&dot.flame_shock.remains<target.time_to_die-5&active_dot.flame_shock<6\n# Refresh Flame Shock using Surge of Power up to 6.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&buff.surge_of_power.up&(!talent.lightning_rod.enabled||talent.skybreakers_fiery_demise.enabled)&dot.flame_shock.remains<target.time_to_die-5&dot.flame_shock.remains>0\n# Refresh Flame Shock against low target counts if Master of the Elements was selected up to 6.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&talent.master_of_the_elements.enabled&!talent.lightning_rod.enabled&dot.flame_shock.remains<target.time_to_die-5&dot.flame_shock.remains>0\n# Refresh Flame Shock to gamble on Deeply Rooted Element procs up to 6.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&talent.deeply_rooted_elements.enabled&!talent.surge_of_power.enabled&dot.flame_shock.remains<target.time_to_die-5&dot.flame_shock.remains>0\n# JUST DO IT! https://i.kym-cdn.com/entries/icons/mobile/000/018/147/Shia_LaBeouf__Just_Do_It__Motivational_Speech_(Original_Video_by_LaBeouf__R%C3%B6nkk%C3%B6___Turner)_0-4_screenshot.jpg\nactions.aoe+=/ascendance\n# Cast Lava Burst to buff your immediately follow-up Earthquake with Master of the Elements.\nactions.aoe+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains&cooldown_react&buff.lava_surge.up&talent.master_of_the_elements.enabled&!buff.master_of_the_elements.up&(maelstrom>=60-5*talent.eye_of_the_storm.rank-2*talent.flow_of_power.enabled)&(!talent.echoes_of_great_sundering.enabled&!talent.lightning_rod.enabled||buff.echoes_of_great_sundering.up)&(!buff.ascendance.up&active_enemies>3&talent.unrelenting_calamity.enabled||active_enemies>3&!talent.unrelenting_calamity.enabled||active_enemies=3)\n# Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease.\nactions.aoe+=/earthquake,if=!talent.echoes_of_great_sundering.enabled&active_enemies>3&(spell_targets.chain_lightning>3||spell_targets.lava_beam>3)\n# Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease.\nactions.aoe+=/earthquake,if=!talent.echoes_of_great_sundering.enabled&!talent.elemental_blast.enabled&active_enemies=3&(spell_targets.chain_lightning=3||spell_targets.lava_beam=3)\n# Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease.\nactions.aoe+=/earthquake,if=buff.echoes_of_great_sundering.up\n# Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease. Spread Lightning Rod to as many targets as possible.\nactions.aoe+=/elemental_blast,cycle_targets=1,if=talent.echoes_of_great_sundering\n# Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease.\nactions.aoe+=/elemental_blast,if=talent.echoes_of_great_sundering\n# Elemental Blast is stronger than Earthquake against 3 targets.\nactions.aoe+=/elemental_blast,if=active_enemies=3&!talent.echoes_of_great_sundering.enabled\n# Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease. Spread Lightning Rod to as many targets as possible.\nactions.aoe+=/earth_shock,cycle_targets=1,if=talent.echoes_of_great_sundering\n# Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease.\nactions.aoe+=/earth_shock,if=talent.echoes_of_great_sundering\n# Use Icefury if you can get the full benefit from Electrified Shocks. If more targets are present ignore it. High priority on 3 targets.\nactions.aoe+=/icefury,if=!buff.ascendance.up&talent.electrified_shocks.enabled&(talent.lightning_rod.enabled&active_enemies<5&!buff.master_of_the_elements.up||talent.deeply_rooted_elements.enabled&active_enemies=3)\n# Spread out your Frost Shock casts to empower as many Chain Lightnings as possible.\nactions.aoe+=/frost_shock,if=!buff.ascendance.up&buff.icefury.up&talent.electrified_shocks.enabled&(!debuff.electrified_shocks.up||buff.icefury.remains<gcd)&(talent.lightning_rod.enabled&active_enemies<5&!buff.master_of_the_elements.up||talent.deeply_rooted_elements.enabled&active_enemies=3)\n# Buff Stormkeeper with Master of the elements on 3-4 targets.\nactions.aoe+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains&talent.master_of_the_elements.enabled&!buff.master_of_the_elements.up&(buff.stormkeeper.up||t30_2pc_timer.next_tick<3&set_bonus.tier30_2pc)&(maelstrom<60-5*talent.eye_of_the_storm.rank-2*talent.flow_of_power.enabled-10)&active_enemies<5\n# Stormkeeper is strong and should be used.\nactions.aoe+=/lava_beam,if=buff.stormkeeper.up\n# Stormkeeper is strong and should be used.\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.up\n# Power of the Maelstrom is strong and should be used.\nactions.aoe+=/lava_beam,if=buff.power_of_the_maelstrom.up&buff.ascendance.remains>cast_time\n# Power of the Maelstrom is strong and should be used.\nactions.aoe+=/chain_lightning,if=buff.power_of_the_maelstrom.up\n# Against 6 targets or more Surge of Power should be used with Lava Beam rather than Lava Burst.\nactions.aoe+=/lava_beam,if=active_enemies>=6&buff.surge_of_power.up&buff.ascendance.remains>cast_time\n# Against 6 targets or more Surge of Power should be used with Chain Lightning rather than Lava Burst.\nactions.aoe+=/chain_lightning,if=active_enemies>=6&buff.surge_of_power.up\n# Proc Deeply Rooted Elements against 3 targets.\nactions.aoe+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains>0&buff.lava_surge.up&talent.deeply_rooted_elements.enabled&buff.windspeakers_lava_resurgence.up\n# Consume Master of the Elements with Lava Beam.\nactions.aoe+=/lava_beam,if=buff.master_of_the_elements.up&buff.ascendance.remains>cast_time\n# Proc Master of the Elements against 3 targets.\nactions.aoe+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains>0&active_enemies=3&talent.master_of_the_elements.enabled\n# Gamble away for Deeply Rooted Elements procs whenever Lava Surge makes Lava Burst more efficient.\nactions.aoe+=/lava_burst,if=dot.flame_shock.remains>0&buff.lava_surge.up&talent.deeply_rooted_elements.enabled\n# Use Icefury if you can get the full benefit from Electrified Shocks. If more targets are present ignore it.\nactions.aoe+=/icefury,if=talent.electrified_shocks.enabled&active_enemies<5\n# Spread out your Frost Shock casts to empower as many Chain Lightnings as possible.\nactions.aoe+=/frost_shock,if=buff.icefury.up&talent.electrified_shocks.enabled&!debuff.electrified_shocks.up&active_enemies<5\nactions.aoe+=/lava_beam,if=buff.ascendance.remains>cast_time\nactions.aoe+=/chain_lightning\nactions.aoe+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n# Keep your cooldowns rolling.\nactions.single_target+=/fire_elemental\n# Keep your cooldowns rolling.\nactions.single_target+=/storm_elemental\n# Reset LMT CD as early as possible.\nactions.single_target+=/totemic_recall,if=cooldown.liquid_magma_totem.remains>45&(talent.lava_surge.enabled&talent.splintered_elements.enabled||active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1))\n# Keep your cooldowns rolling.\nactions.single_target+=/liquid_magma_totem,if=talent.lava_surge.enabled&talent.splintered_elements.enabled||active_dot.flame_shock=0||dot.flame_shock.remains<6||active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)\n# Use Primordial Wave as much as possible without wasting buffs.\nactions.single_target+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up&!buff.splintered_elements.up\nactions.single_target+=/flame_shock,cycle_targets=1,if=active_enemies=1&refreshable&!buff.surge_of_power.up&(!buff.master_of_the_elements.up||(!buff.stormkeeper.up&(talent.elemental_blast.enabled&maelstrom<90-8*talent.eye_of_the_storm.rank||maelstrom<60-5*talent.eye_of_the_storm.rank)))\n# Use Flame shock without Surge of Power if you can't spread it with SoP because it is going to be used on Stormkeeper or Surge of Power is not talented.\nactions.single_target+=/flame_shock,if=active_dot.flame_shock=0&active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)&(talent.deeply_rooted_elements.enabled||talent.ascendance.enabled||talent.primordial_wave.enabled||talent.searing_flames.enabled||talent.magma_chamber.enabled)&(!buff.master_of_the_elements.up&(buff.stormkeeper.up||cooldown.stormkeeper.remains=0)||!talent.surge_of_power.enabled)\n# Spread Flame Shock to multiple targets only if talents were selected that benefit from it.\nactions.single_target+=/flame_shock,cycle_targets=1,if=active_dot.flame_shock<cycle_enemies&active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)&refreshable&(talent.deeply_rooted_elements.enabled||talent.ascendance.enabled||talent.primordial_wave.enabled||talent.searing_flames.enabled||talent.magma_chamber.enabled)&(buff.surge_of_power.up&!buff.stormkeeper.up&!cooldown.stormkeeper.remains=0||!talent.surge_of_power.enabled)\n# {EB/Swelling/SoP Lightning build} Start SK window if you have enough maelstrom to: EB > SoP SK_LB > LvB > EB.\nactions.single_target+=/stormkeeper,if=!buff.ascendance.up&!buff.stormkeeper.up&maelstrom>=116&talent.elemental_blast.enabled&talent.surge_of_power.enabled&talent.swelling_maelstrom.enabled&!talent.lava_surge.enabled&!talent.echo_of_the_elements.enabled&!talent.primordial_surge.enabled\n# {EB/SoP Lightning builds} Use Stormkeeper if you already got Surge of Power buff rolling.\nactions.single_target+=/stormkeeper,if=!buff.ascendance.up&!buff.stormkeeper.up&buff.surge_of_power.up&!talent.lava_surge.enabled&!talent.echo_of_the_elements.enabled&!talent.primordial_surge.enabled\nactions.single_target+=/stormkeeper,if=!buff.ascendance.up&!buff.stormkeeper.up&(!talent.surge_of_power.enabled||!talent.elemental_blast.enabled||talent.lava_surge.enabled||talent.echo_of_the_elements.enabled||talent.primordial_surge.enabled)\nactions.single_target+=/ascendance,if=!buff.stormkeeper.up\n# Stormkeeper is strong and should be used.\nactions.single_target+=/lightning_bolt,if=buff.stormkeeper.up&buff.surge_of_power.up\n# Stormkeeper is strong and should be used.\nactions.single_target+=/lava_beam,if=active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)&buff.stormkeeper.up&!talent.surge_of_power.enabled\n# Stormkeeper is strong and should be used.\nactions.single_target+=/chain_lightning,if=active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)&buff.stormkeeper.up&!talent.surge_of_power.enabled\n# Buff stormkeeper with MotE when not using Surge.\nactions.single_target+=/lava_burst,if=buff.stormkeeper.up&!buff.master_of_the_elements.up&!talent.surge_of_power.enabled&talent.master_of_the_elements.enabled\n# Stormkeeper is strong and should be used.\nactions.single_target+=/lightning_bolt,if=buff.stormkeeper.up&!talent.surge_of_power.enabled&buff.master_of_the_elements.up\n# Stormkeeper is strong and should be used.\nactions.single_target+=/lightning_bolt,if=buff.stormkeeper.up&!talent.surge_of_power.enabled&!talent.master_of_the_elements.enabled\n# Surge of Power is strong and should be used.\nactions.single_target+=/lightning_bolt,if=buff.surge_of_power.up\nactions.single_target+=/icefury,if=talent.electrified_shocks.enabled\nactions.single_target+=/frost_shock,if=buff.icefury.up&talent.electrified_shocks.enabled&(debuff.electrified_shocks.remains<2||buff.icefury.remains<=gcd)\nactions.single_target+=/frost_shock,if=buff.icefury.up&talent.electrified_shocks.enabled&maelstrom>=50&debuff.electrified_shocks.remains<2*gcd&buff.stormkeeper.up\nactions.single_target+=/lava_beam,if=active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)&buff.power_of_the_maelstrom.up&buff.ascendance.remains>cast_time\n# {EB/SoP Lightning builds} Spend extra Frost Shock if it gives you the ability to get to next spender without using Stormkeeper charge.\nactions.single_target+=/frost_shock,if=buff.icefury.up&buff.stormkeeper.up&!talent.lava_surge.enabled&!talent.echo_of_the_elements.enabled&!talent.primordial_surge.enabled&talent.elemental_blast.enabled&(maelstrom>=61&maelstrom<75&cooldown.lava_burst.remains>gcd||maelstrom>=49&maelstrom<63&cooldown.lava_burst.ready)\n# {ES/SoP Lightning builds} Spend extra Frost Shock if it gives you the ability to get to next spender without using Stormkeeper charge.\nactions.single_target+=/frost_shock,if=buff.icefury.up&buff.stormkeeper.up&!talent.lava_surge.enabled&!talent.echo_of_the_elements.enabled&!talent.elemental_blast.enabled&(maelstrom>=36&maelstrom<50&cooldown.lava_burst.remains>gcd||maelstrom>=24&maelstrom<38&cooldown.lava_burst.ready)\n# Windspeaker's Lava Resurgence is strong. Don't sit on it...Unless it's Lightning build and you save it to buff Elemental Blast.\nactions.single_target+=/lava_burst,if=buff.windspeakers_lava_resurgence.up&(talent.echo_of_the_elements.enabled||talent.lava_surge.enabled||talent.primordial_surge.enabled||maelstrom>=63&talent.master_of_the_elements.enabled||maelstrom>=38&buff.echoes_of_great_sundering.up&active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)||!talent.elemental_blast.enabled)\n# Lava Surge is neat. Utilize it...Unless it's Lightning build and you save it to buff Elemental Blast.\nactions.single_target+=/lava_burst,if=cooldown_react&buff.lava_surge.up&(talent.echo_of_the_elements.enabled||talent.lava_surge.enabled||talent.primordial_surge.enabled||!talent.master_of_the_elements.enabled||!talent.elemental_blast.enabled)\n# Buff your next Maelstrom Spender with MotE if it won't cap your maelstrom.\nactions.single_target+=/lava_burst,if=talent.master_of_the_elements.enabled&!buff.master_of_the_elements.up&maelstrom>=50&!talent.swelling_maelstrom.enabled&maelstrom<=80\n# Buff your next Maelstrom Spender with MotE if it won't cap your maelstrom.\nactions.single_target+=/lava_burst,if=talent.master_of_the_elements.enabled&!buff.master_of_the_elements.up&(maelstrom>=75||maelstrom>=50&!talent.elemental_blast.enabled)&talent.swelling_maelstrom.enabled&maelstrom<=130\n# Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease. Additionally Elemental Blast is stronger than EoGS. In this case don't use Earthquake on single target.\nactions.single_target+=/earthquake,if=buff.echoes_of_great_sundering.up&(!talent.elemental_blast.enabled&active_enemies<2||active_enemies>1)\n# Use Earthquake against two enemies unless you have to alternate because of Echoes of Great Sundering.\nactions.single_target+=/earthquake,if=active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)&!talent.echoes_of_great_sundering.enabled&!talent.elemental_blast.enabled\nactions.single_target+=/elemental_blast\nactions.single_target+=/earth_shock\n# Utilize present buffs.\nactions.single_target+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains>2&buff.flux_melting.up&active_enemies>1\n# Single target Lava Burst is stronk.\nactions.single_target+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains>2&active_enemies=1&talent.deeply_rooted_elements.enabled\n# Spread out your Icefury usage if you can get more use out of accompanied buffs.\nactions.single_target+=/frost_shock,if=buff.icefury.up&talent.flux_melting.enabled&!buff.flux_melting.up\n# Spread out your Icefury usage if you can get more use out of accompanied buffs.\nactions.single_target+=/frost_shock,if=buff.icefury.up&(talent.electrified_shocks.enabled&debuff.electrified_shocks.remains<2||buff.icefury.remains<6)\n# Use Lava Burst normally with fire builds. Save it as much as possible in lightning builds unless you cant use Lightning Bolt without wasting Stormkeeper charges.\nactions.single_target+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains>2&talent.echo_of_the_elements.enabled||talent.lava_surge.enabled||talent.primordial_surge.enabled||!talent.elemental_blast.enabled||!talent.master_of_the_elements.enabled||buff.stormkeeper.up\n# Utilize the Power of the Maelstrom buff if your Chain Lightning is empowered by Unrelenting Calamity.\nactions.single_target+=/chain_lightning,if=buff.power_of_the_maelstrom.up&talent.unrelenting_calamity.enabled&active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)\n# Utilize the Power of the Maelstrom buff if your Lightning Bolt is empowered by Unrelenting Calamity.\nactions.single_target+=/lightning_bolt,if=buff.power_of_the_maelstrom.up&talent.unrelenting_calamity.enabled\nactions.single_target+=/icefury\n# Spam Chain Lightning if Storm Elemental is active. But honor all previous priorities.\nactions.single_target+=/chain_lightning,if=pet.storm_elemental.active&debuff.lightning_rod.up&(debuff.electrified_shocks.up||buff.power_of_the_maelstrom.up)&active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)\n# If you have MotE up and aren't at risk of capping LvB, spend MotE on FrS/LB.\nactions.single_target+=/frost_shock,if=buff.icefury.up&buff.master_of_the_elements.up&!buff.lava_surge.up&!talent.electrified_shocks.enabled&!talent.flux_melting.enabled&cooldown.lava_burst.charges_fractional<1.0&talent.echo_of_the_elements.enabled\nactions.single_target+=/frost_shock,if=buff.icefury.up&talent.flux_melting.enabled\n# If you have MotE up and aren't at risk of capping LvB, spend MotE on Chain Lightning.\nactions.single_target+=/chain_lightning,if=buff.master_of_the_elements.up&!buff.lava_surge.up&(cooldown.lava_burst.charges_fractional<1.0&talent.echo_of_the_elements.enabled)&active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)\n# If you have MotE up and aren't at risk of capping LvB, spend MotE on FrS/LB.\nactions.single_target+=/lightning_bolt,if=buff.master_of_the_elements.up&!buff.lava_surge.up&(cooldown.lava_burst.charges_fractional<1.0&talent.echo_of_the_elements.enabled)\n# Use your Icefury buffs if you didn't improve the talent.\nactions.single_target+=/frost_shock,if=buff.icefury.up&!talent.electrified_shocks.enabled&!talent.flux_melting.enabled\n# Casting Chain Lightning at two targets is more efficient than Lightning Bolt.\nactions.single_target+=/chain_lightning,if=active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)\n# Filler spell. Always available. Always the bottom line.\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20230520,
					["warnings"] = "The import for 'aoe' required some automated changes.\nLine 21: Converted 'talent.echoes_of_great_sundering' to 'talent.echoes_of_great_sundering.enabled' (1x).\nLine 22: Converted 'talent.echoes_of_great_sundering' to 'talent.echoes_of_great_sundering.enabled' (1x).\nLine 24: Converted 'talent.echoes_of_great_sundering' to 'talent.echoes_of_great_sundering.enabled' (1x).\nLine 25: Converted 'talent.echoes_of_great_sundering' to 'talent.echoes_of_great_sundering.enabled' (1x).\n\nImported 4 action lists.\n",
					["author"] = "SimulationCraft",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["description"] = "Keep your cooldowns rolling.",
								["action"] = "fire_elemental",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Keep your cooldowns rolling.",
								["action"] = "storm_elemental",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.liquid_magma_totem.remains > 45 & ( talent.lava_surge.enabled & talent.splintered_elements.enabled || active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 ) )",
								["action"] = "totemic_recall",
								["description"] = "Reset LMT CD as early as possible.",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.lava_surge.enabled & talent.splintered_elements.enabled || active_dot.flame_shock = 0 || dot.flame_shock.remains < 6 || active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 )",
								["action"] = "liquid_magma_totem",
								["description"] = "Keep your cooldowns rolling.",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "primordial_wave",
								["cycle_targets"] = 1,
								["description"] = "Use Primordial Wave as much as possible without wasting buffs.",
								["criteria"] = "! buff.primordial_wave.up & ! buff.splintered_elements.up",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & refreshable & ! buff.surge_of_power.up & ( ! buff.master_of_the_elements.up || ( ! buff.stormkeeper.up & ( talent.elemental_blast.enabled & maelstrom < 90 - 8 * talent.eye_of_the_storm.rank || maelstrom < 60 - 5 * talent.eye_of_the_storm.rank ) ) )",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock = 0 & active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 ) & ( talent.deeply_rooted_elements.enabled || talent.ascendance.enabled || talent.primordial_wave.enabled || talent.searing_flames.enabled || talent.magma_chamber.enabled ) & ( ! buff.master_of_the_elements.up & ( buff.stormkeeper.up || cooldown.stormkeeper.remains = 0 ) || ! talent.surge_of_power.enabled )",
								["action"] = "flame_shock",
								["description"] = "Use Flame shock without Surge of Power if you can't spread it with SoP because it is going to be used on Stormkeeper or Surge of Power is not talented.",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["description"] = "Spread Flame Shock to multiple targets only if talents were selected that benefit from it.",
								["criteria"] = "active_dot.flame_shock < cycle_enemies & active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 ) & refreshable & ( talent.deeply_rooted_elements.enabled || talent.ascendance.enabled || talent.primordial_wave.enabled || talent.searing_flames.enabled || talent.magma_chamber.enabled ) & ( buff.surge_of_power.up & ! buff.stormkeeper.up & ! cooldown.stormkeeper.remains = 0 || ! talent.surge_of_power.enabled )",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ascendance.up & ! buff.stormkeeper.up & maelstrom >= 116 & talent.elemental_blast.enabled & talent.surge_of_power.enabled & talent.swelling_maelstrom.enabled & ! talent.lava_surge.enabled & ! talent.echo_of_the_elements.enabled & ! talent.primordial_surge.enabled",
								["action"] = "stormkeeper",
								["description"] = "{EB/Swelling/SoP Lightning build} Start SK window if you have enough maelstrom to: EB > SoP SK_LB > LvB > EB.",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ascendance.up & ! buff.stormkeeper.up & buff.surge_of_power.up & ! talent.lava_surge.enabled & ! talent.echo_of_the_elements.enabled & ! talent.primordial_surge.enabled",
								["action"] = "stormkeeper",
								["description"] = "{EB/SoP Lightning builds} Use Stormkeeper if you already got Surge of Power buff rolling.",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ascendance.up & ! buff.stormkeeper.up & ( ! talent.surge_of_power.enabled || ! talent.elemental_blast.enabled || talent.lava_surge.enabled || talent.echo_of_the_elements.enabled || talent.primordial_surge.enabled )",
								["action"] = "stormkeeper",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! buff.stormkeeper.up",
								["action"] = "ascendance",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & buff.surge_of_power.up",
								["action"] = "lightning_bolt",
								["description"] = "Stormkeeper is strong and should be used.",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 ) & buff.stormkeeper.up & ! talent.surge_of_power.enabled",
								["action"] = "lava_beam",
								["description"] = "Stormkeeper is strong and should be used.",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 ) & buff.stormkeeper.up & ! talent.surge_of_power.enabled",
								["action"] = "chain_lightning",
								["description"] = "Stormkeeper is strong and should be used.",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & ! buff.master_of_the_elements.up & ! talent.surge_of_power.enabled & talent.master_of_the_elements.enabled",
								["action"] = "lava_burst",
								["description"] = "Buff stormkeeper with MotE when not using Surge.",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & ! talent.surge_of_power.enabled & buff.master_of_the_elements.up",
								["action"] = "lightning_bolt",
								["description"] = "Stormkeeper is strong and should be used.",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & ! talent.surge_of_power.enabled & ! talent.master_of_the_elements.enabled",
								["action"] = "lightning_bolt",
								["description"] = "Stormkeeper is strong and should be used.",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.surge_of_power.up",
								["action"] = "lightning_bolt",
								["description"] = "Surge of Power is strong and should be used.",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.electrified_shocks.enabled",
								["action"] = "icefury",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up & talent.electrified_shocks.enabled & ( debuff.electrified_shocks.remains < 2 || buff.icefury.remains <= gcd.max )",
								["action"] = "frost_shock",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up & talent.electrified_shocks.enabled & maelstrom >= 50 & debuff.electrified_shocks.remains < 2 * gcd.max & buff.stormkeeper.up",
								["action"] = "frost_shock",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 ) & buff.power_of_the_maelstrom.up & buff.ascendance.remains > cast_time",
								["action"] = "lava_beam",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up & buff.stormkeeper.up & ! talent.lava_surge.enabled & ! talent.echo_of_the_elements.enabled & ! talent.primordial_surge.enabled & talent.elemental_blast.enabled & ( maelstrom >= 61 & maelstrom < 75 & cooldown.lava_burst.remains > gcd.max || maelstrom >= 49 & maelstrom < 63 & cooldown.lava_burst.ready )",
								["action"] = "frost_shock",
								["description"] = "{EB/SoP Lightning builds} Spend extra Frost Shock if it gives you the ability to get to next spender without using Stormkeeper charge.",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up & buff.stormkeeper.up & ! talent.lava_surge.enabled & ! talent.echo_of_the_elements.enabled & ! talent.elemental_blast.enabled & ( maelstrom >= 36 & maelstrom < 50 & cooldown.lava_burst.remains > gcd.max || maelstrom >= 24 & maelstrom < 38 & cooldown.lava_burst.ready )",
								["action"] = "frost_shock",
								["description"] = "{ES/SoP Lightning builds} Spend extra Frost Shock if it gives you the ability to get to next spender without using Stormkeeper charge.",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.windspeakers_lava_resurgence.up & ( talent.echo_of_the_elements.enabled || talent.lava_surge.enabled || talent.primordial_surge.enabled || maelstrom >= 63 & talent.master_of_the_elements.enabled || maelstrom >= 38 & buff.echoes_of_great_sundering.up & active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 ) || ! talent.elemental_blast.enabled )",
								["action"] = "lava_burst",
								["description"] = "Windspeaker's Lava Resurgence is strong. Don't sit on it...Unless it's Lightning build and you save it to buff Elemental Blast.",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & buff.lava_surge.up & ( talent.echo_of_the_elements.enabled || talent.lava_surge.enabled || talent.primordial_surge.enabled || ! talent.master_of_the_elements.enabled || ! talent.elemental_blast.enabled )",
								["action"] = "lava_burst",
								["description"] = "Lava Surge is neat. Utilize it...Unless it's Lightning build and you save it to buff Elemental Blast.",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ! buff.master_of_the_elements.up & maelstrom >= 50 & ! talent.swelling_maelstrom.enabled & maelstrom <= 80",
								["action"] = "lava_burst",
								["description"] = "Buff your next Maelstrom Spender with MotE if it won't cap your maelstrom.",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ! buff.master_of_the_elements.up & ( maelstrom >= 75 || maelstrom >= 50 & ! talent.elemental_blast.enabled ) & talent.swelling_maelstrom.enabled & maelstrom <= 130",
								["action"] = "lava_burst",
								["description"] = "Buff your next Maelstrom Spender with MotE if it won't cap your maelstrom.",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_great_sundering.up & ( ! talent.elemental_blast.enabled & active_enemies < 2 || active_enemies > 1 )",
								["action"] = "earthquake",
								["description"] = "Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease. Additionally Elemental Blast is stronger than EoGS. In this case don't use Earthquake on single target.",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 ) & ! talent.echoes_of_great_sundering.enabled & ! talent.elemental_blast.enabled",
								["action"] = "earthquake",
								["description"] = "Use Earthquake against two enemies unless you have to alternate because of Echoes of Great Sundering.",
							}, -- [31]
							{
								["action"] = "elemental_blast",
								["enabled"] = true,
							}, -- [32]
							{
								["action"] = "earth_shock",
								["enabled"] = true,
							}, -- [33]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["cycle_targets"] = 1,
								["description"] = "Utilize present buffs.",
								["criteria"] = "dot.flame_shock.remains > 2 & buff.flux_melting.up & active_enemies > 1",
							}, -- [34]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["cycle_targets"] = 1,
								["description"] = "Single target Lava Burst is stronk.",
								["criteria"] = "dot.flame_shock.remains > 2 & active_enemies = 1 & talent.deeply_rooted_elements.enabled",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up & talent.flux_melting.enabled & ! buff.flux_melting.up",
								["action"] = "frost_shock",
								["description"] = "Spread out your Icefury usage if you can get more use out of accompanied buffs.",
							}, -- [36]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up & ( talent.electrified_shocks.enabled & debuff.electrified_shocks.remains < 2 || buff.icefury.remains < 6 )",
								["action"] = "frost_shock",
								["description"] = "Spread out your Icefury usage if you can get more use out of accompanied buffs.",
							}, -- [37]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["cycle_targets"] = 1,
								["description"] = "Use Lava Burst normally with fire builds. Save it as much as possible in lightning builds unless you cant use Lightning Bolt without wasting Stormkeeper charges.",
								["criteria"] = "dot.flame_shock.remains > 2 & talent.echo_of_the_elements.enabled || talent.lava_surge.enabled || talent.primordial_surge.enabled || ! talent.elemental_blast.enabled || ! talent.master_of_the_elements.enabled || buff.stormkeeper.up",
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "buff.power_of_the_maelstrom.up & talent.unrelenting_calamity.enabled & active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 )",
								["action"] = "chain_lightning",
								["description"] = "Utilize the Power of the Maelstrom buff if your Chain Lightning is empowered by Unrelenting Calamity.",
							}, -- [39]
							{
								["enabled"] = true,
								["criteria"] = "buff.power_of_the_maelstrom.up & talent.unrelenting_calamity.enabled",
								["action"] = "lightning_bolt",
								["description"] = "Utilize the Power of the Maelstrom buff if your Lightning Bolt is empowered by Unrelenting Calamity.",
							}, -- [40]
							{
								["action"] = "icefury",
								["enabled"] = true,
							}, -- [41]
							{
								["enabled"] = true,
								["criteria"] = "pet.storm_elemental.active & debuff.lightning_rod.up & ( debuff.electrified_shocks.up || buff.power_of_the_maelstrom.up ) & active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 )",
								["action"] = "chain_lightning",
								["description"] = "Spam Chain Lightning if Storm Elemental is active. But honor all previous priorities.",
							}, -- [42]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up & buff.master_of_the_elements.up & ! buff.lava_surge.up & ! talent.electrified_shocks.enabled & ! talent.flux_melting.enabled & cooldown.lava_burst.charges_fractional < 1.0 & talent.echo_of_the_elements.enabled",
								["action"] = "frost_shock",
								["description"] = "If you have MotE up and aren't at risk of capping LvB, spend MotE on FrS/LB.",
							}, -- [43]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up & talent.flux_melting.enabled",
								["action"] = "frost_shock",
							}, -- [44]
							{
								["enabled"] = true,
								["criteria"] = "buff.master_of_the_elements.up & ! buff.lava_surge.up & ( cooldown.lava_burst.charges_fractional < 1.0 & talent.echo_of_the_elements.enabled ) & active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 )",
								["action"] = "chain_lightning",
								["description"] = "If you have MotE up and aren't at risk of capping LvB, spend MotE on Chain Lightning.",
							}, -- [45]
							{
								["enabled"] = true,
								["criteria"] = "buff.master_of_the_elements.up & ! buff.lava_surge.up & ( cooldown.lava_burst.charges_fractional < 1.0 & talent.echo_of_the_elements.enabled )",
								["action"] = "lightning_bolt",
								["description"] = "If you have MotE up and aren't at risk of capping LvB, spend MotE on FrS/LB.",
							}, -- [46]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up & ! talent.electrified_shocks.enabled & ! talent.flux_melting.enabled",
								["action"] = "frost_shock",
								["description"] = "Use your Icefury buffs if you didn't improve the talent.",
							}, -- [47]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 )",
								["action"] = "chain_lightning",
								["description"] = "Casting Chain Lightning at two targets is more efficient than Lightning Bolt.",
							}, -- [48]
							{
								["enabled"] = true,
								["description"] = "Filler spell. Always available. Always the bottom line.",
								["action"] = "lightning_bolt",
							}, -- [49]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["enabled"] = true,
								["criteria"] = "refreshable",
							}, -- [50]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["moving"] = 1,
								["criteria"] = "movement.distance > 6",
							}, -- [51]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["moving"] = 1,
								["description"] = "Frost Shock is our movement filler.",
							}, -- [52]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["description"] = "Keep your cooldowns rolling.",
								["action"] = "fire_elemental",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Keep your cooldowns rolling.",
								["action"] = "storm_elemental",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.stormkeeper.up",
								["action"] = "stormkeeper",
								["description"] = "Keep your cooldowns rolling.",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.liquid_magma_totem.remains > 45",
								["action"] = "totemic_recall",
								["description"] = "Reset LMT CD as early as possible.",
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "Keep your cooldowns rolling.",
								["action"] = "liquid_magma_totem",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "primordial_wave",
								["cycle_targets"] = 1,
								["description"] = "Spread Flame Shock using Surge of Power. Don't waste buffs by resets (resets are gone, but I'll keep that logic here).",
								["criteria"] = "! buff.primordial_wave.up & buff.surge_of_power.up & ! buff.splintered_elements.up",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "primordial_wave",
								["cycle_targets"] = 1,
								["description"] = "Spread Flame Shock using Surge of Power. Don't waste buffs by resets (resets are gone, but I'll keep that logic here).",
								["criteria"] = "! buff.primordial_wave.up & talent.deeply_rooted_elements.enabled & ! talent.surge_of_power.enabled & ! buff.splintered_elements.up",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "primordial_wave",
								["cycle_targets"] = 1,
								["description"] = "Spread Flame Shock using Surge of Power. Don't waste buffs by resets (resets are gone, but I'll keep that logic here).",
								["criteria"] = "! buff.primordial_wave.up & talent.master_of_the_elements.enabled & ! talent.lightning_rod.enabled",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["description"] = "Spread Flame Shock using Surge of Power on up to 4 for Lightning builds with Windspeaker's Lava Resurgence.",
								["criteria"] = "refreshable & buff.surge_of_power.up & talent.lightning_rod.enabled & talent.windspeakers_lava_resurgence.enabled & dot.flame_shock.remains < target.time_to_die - 16 & active_enemies < 5",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["description"] = "Spread Flame Shock using Surge of Power up to 6.",
								["criteria"] = "refreshable & buff.surge_of_power.up & ( ! talent.lightning_rod.enabled || talent.skybreakers_fiery_demise.enabled ) & dot.flame_shock.remains < target.time_to_die - 5 & active_dot.flame_shock < 6",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["description"] = "Spread Flame Shock against low target counts if Master of the Elements was selected up to 6.",
								["criteria"] = "refreshable & talent.master_of_the_elements.enabled & ! talent.lightning_rod.enabled & dot.flame_shock.remains < target.time_to_die - 5 & active_dot.flame_shock < 6",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["description"] = "Spread Flame Shock to gamble on Deeply Rooted Element procs up to 6.",
								["criteria"] = "refreshable & talent.deeply_rooted_elements.enabled & ! talent.surge_of_power.enabled & dot.flame_shock.remains < target.time_to_die - 5 & active_dot.flame_shock < 6",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["description"] = "Refresh Flame Shock using Surge of Power up to 6.",
								["criteria"] = "refreshable & buff.surge_of_power.up & ( ! talent.lightning_rod.enabled || talent.skybreakers_fiery_demise.enabled ) & dot.flame_shock.remains < target.time_to_die - 5 & dot.flame_shock.remains > 0",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["description"] = "Refresh Flame Shock against low target counts if Master of the Elements was selected up to 6.",
								["criteria"] = "refreshable & talent.master_of_the_elements.enabled & ! talent.lightning_rod.enabled & dot.flame_shock.remains < target.time_to_die - 5 & dot.flame_shock.remains > 0",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["description"] = "Refresh Flame Shock to gamble on Deeply Rooted Element procs up to 6.",
								["criteria"] = "refreshable & talent.deeply_rooted_elements.enabled & ! talent.surge_of_power.enabled & dot.flame_shock.remains < target.time_to_die - 5 & dot.flame_shock.remains > 0",
							}, -- [15]
							{
								["enabled"] = true,
								["description"] = "JUST DO IT! https://i.kym-cdn.com/entries/icons/mobile/000/018/147/Shia_LaBeouf__Just_Do_It__Motivational_Speech_(Original_Video_by_LaBeouf__R%C3%B6nkk%C3%B6___Turner)_0-4_screenshot.jpg",
								["action"] = "ascendance",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["cycle_targets"] = 1,
								["description"] = "Cast Lava Burst to buff your immediately follow-up Earthquake with Master of the Elements.",
								["criteria"] = "dot.flame_shock.remains & cooldown_react & buff.lava_surge.up & talent.master_of_the_elements.enabled & ! buff.master_of_the_elements.up & ( maelstrom >= 60 - 5 * talent.eye_of_the_storm.rank - 2 * talent.flow_of_power.enabled ) & ( ! talent.echoes_of_great_sundering.enabled & ! talent.lightning_rod.enabled || buff.echoes_of_great_sundering.up ) & ( ! buff.ascendance.up & active_enemies > 3 & talent.unrelenting_calamity.enabled || active_enemies > 3 & ! talent.unrelenting_calamity.enabled || active_enemies = 3 )",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! talent.echoes_of_great_sundering.enabled & active_enemies > 3 & ( spell_targets.chain_lightning > 3 || spell_targets.lava_beam > 3 )",
								["action"] = "earthquake",
								["description"] = "Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease.",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! talent.echoes_of_great_sundering.enabled & ! talent.elemental_blast.enabled & active_enemies = 3 & ( spell_targets.chain_lightning = 3 || spell_targets.lava_beam = 3 )",
								["action"] = "earthquake",
								["description"] = "Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease.",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_great_sundering.up",
								["action"] = "earthquake",
								["description"] = "Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease.",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "elemental_blast",
								["cycle_targets"] = 1,
								["description"] = "Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease. Spread Lightning Rod to as many targets as possible.",
								["criteria"] = "talent.echoes_of_great_sundering.enabled",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoes_of_great_sundering.enabled",
								["action"] = "elemental_blast",
								["description"] = "Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease.",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 3 & ! talent.echoes_of_great_sundering.enabled",
								["action"] = "elemental_blast",
								["description"] = "Elemental Blast is stronger than Earthquake against 3 targets.",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "earth_shock",
								["cycle_targets"] = 1,
								["description"] = "Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease. Spread Lightning Rod to as many targets as possible.",
								["criteria"] = "talent.echoes_of_great_sundering.enabled",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoes_of_great_sundering.enabled",
								["action"] = "earth_shock",
								["description"] = "Use the talents you selected. Did you invest only 1 point in it? In this case this'll be a DPS decrease.",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ascendance.up & talent.electrified_shocks.enabled & ( talent.lightning_rod.enabled & active_enemies < 5 & ! buff.master_of_the_elements.up || talent.deeply_rooted_elements.enabled & active_enemies = 3 )",
								["action"] = "icefury",
								["description"] = "Use Icefury if you can get the full benefit from Electrified Shocks. If more targets are present ignore it. High priority on 3 targets.",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ascendance.up & buff.icefury.up & talent.electrified_shocks.enabled & ( ! debuff.electrified_shocks.up || buff.icefury.remains < gcd.max ) & ( talent.lightning_rod.enabled & active_enemies < 5 & ! buff.master_of_the_elements.up || talent.deeply_rooted_elements.enabled & active_enemies = 3 )",
								["action"] = "frost_shock",
								["description"] = "Spread out your Frost Shock casts to empower as many Chain Lightnings as possible.",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["cycle_targets"] = 1,
								["description"] = "Buff Stormkeeper with Master of the elements on 3-4 targets.",
								["criteria"] = "dot.flame_shock.remains & talent.master_of_the_elements.enabled & ! buff.master_of_the_elements.up & ( buff.stormkeeper.up || t30_2pc_timer.next_tick < 3 & set_bonus.tier30_2pc ) & ( maelstrom < 60 - 5 * talent.eye_of_the_storm.rank - 2 * talent.flow_of_power.enabled - 10 ) & active_enemies < 5",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up",
								["action"] = "lava_beam",
								["description"] = "Stormkeeper is strong and should be used.",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up",
								["action"] = "chain_lightning",
								["description"] = "Stormkeeper is strong and should be used.",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "buff.power_of_the_maelstrom.up & buff.ascendance.remains > cast_time",
								["action"] = "lava_beam",
								["description"] = "Power of the Maelstrom is strong and should be used.",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "buff.power_of_the_maelstrom.up",
								["action"] = "chain_lightning",
								["description"] = "Power of the Maelstrom is strong and should be used.",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 6 & buff.surge_of_power.up & buff.ascendance.remains > cast_time",
								["action"] = "lava_beam",
								["description"] = "Against 6 targets or more Surge of Power should be used with Lava Beam rather than Lava Burst.",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 6 & buff.surge_of_power.up",
								["action"] = "chain_lightning",
								["description"] = "Against 6 targets or more Surge of Power should be used with Chain Lightning rather than Lava Burst.",
							}, -- [34]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["cycle_targets"] = 1,
								["description"] = "Proc Deeply Rooted Elements against 3 targets.",
								["criteria"] = "dot.flame_shock.remains > 0 & buff.lava_surge.up & talent.deeply_rooted_elements.enabled & buff.windspeakers_lava_resurgence.up",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "buff.master_of_the_elements.up & buff.ascendance.remains > cast_time",
								["action"] = "lava_beam",
								["description"] = "Consume Master of the Elements with Lava Beam.",
							}, -- [36]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["cycle_targets"] = 1,
								["description"] = "Proc Master of the Elements against 3 targets.",
								["criteria"] = "dot.flame_shock.remains > 0 & active_enemies = 3 & talent.master_of_the_elements.enabled",
							}, -- [37]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.remains > 0 & buff.lava_surge.up & talent.deeply_rooted_elements.enabled",
								["action"] = "lava_burst",
								["description"] = "Gamble away for Deeply Rooted Elements procs whenever Lava Surge makes Lava Burst more efficient.",
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "talent.electrified_shocks.enabled & active_enemies < 5",
								["action"] = "icefury",
								["description"] = "Use Icefury if you can get the full benefit from Electrified Shocks. If more targets are present ignore it.",
							}, -- [39]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up & talent.electrified_shocks.enabled & ! debuff.electrified_shocks.up & active_enemies < 5",
								["action"] = "frost_shock",
								["description"] = "Spread out your Frost Shock casts to empower as many Chain Lightnings as possible.",
							}, -- [40]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.remains > cast_time",
								["action"] = "lava_beam",
							}, -- [41]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [42]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["enabled"] = true,
								["criteria"] = "refreshable",
							}, -- [43]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [44]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Interrupt of casts.",
								["action"] = "wind_shear",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "settings.hostile_dispel",
								["action"] = "purge",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "settings.hostile_dispel",
								["action"] = "greater_purge",
							}, -- [3]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "spiritwalkers_grace",
								["moving"] = 1,
								["description"] = "Enable more movement.",
								["criteria"] = "movement.distance > 6",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || ! buff.ascendance.up",
								["action"] = "bag_of_tricks",
							}, -- [9]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.call_lightning.up",
								["action"] = "tempest",
							}, -- [12]
							{
								["action"] = "vesper_totem",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "natures_swiftness",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["list_name"] = "aoe",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [17]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_flametongue_weapon.enabled",
								["action"] = "flametongue_weapon",
								["description"] = "Ensure weapon enchant is applied.",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.lightning_shield.down & ( buff.earth_shield.down || talent.elemental_orbit.enabled )",
								["action"] = "lightning_shield",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.lightning_shield.up & buff.earth_shield.down & talent.elemental_orbit.enabled",
								["action"] = "earth_shield",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "stormkeeper",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "icefury",
								["enabled"] = true,
							}, -- [6]
						},
					},
				},
				["Restoration Shaman"] = {
					["builtIn"] = true,
					["date"] = 20230321.1,
					["spec"] = 264,
					["desc"] = "2023-03-21:  Add Healing Rain (Acid Rain) and Stormkeeper to DPS priority.",
					["profile"] = "actions.precombat+=/earthliving_weapon\nactions.precombat+=/water_shield,if=buff.water_shield.up+buff.earth_shield.up+buff.lightning_shield.up<1+talent.elemental_orbit.rank\nactions.precombat+=/lightning_shield,if=buff.water_shield.up+buff.earth_shield.up+buff.lightning_shield.up<1+talent.elemental_orbit.rank\nactions.precombat+=/earth_shield,if=buff.water_shield.up+buff.earth_shield.up+buff.lightning_shield.up<1+talent.elemental_orbit.rank\nactions.precombat+=/earth_elemental\nactions.precombat+=/potion\n\nactions+=/spiritwalkers_grace,moving=1,if=movement.distance>6\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/potion\nactions+=/use_items\nactions+=/blood_fury\nactions+=/berserking\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/healing_rain,if=!moving&talent.acid_rain\nactions+=/stormkeeper\nactions+=/flame_shock,cycle_targets=1,if=active_enemies<3&refreshable\nactions+=/primordial_wave\nactions+=/lava_burst,if=(active_enemies=1||active_enemies=2&buff.lava_surge.up)&dot.flame_shock.remains>cast_time&cooldown_react\nactions+=/earth_elemental\nactions+=/lightning_bolt,if=spell_targets.chain_lightning<2||!talent.chain_lightning\nactions+=/chain_lightning,if=spell_targets.chain_lightning>1\nactions+=/flame_shock,moving=1\nactions+=/frost_shock,moving=1",
					["version"] = 20230321.1,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 10: Converted 'talent.acid_rain' to 'talent.acid_rain.enabled' (1x).\nLine 16: Converted 'talent.chain_lightning' to 'talent.chain_lightning.enabled' (1x).\n\nImported 2 action lists.\n",
					["author"] = "Hekili",
					["lists"] = {
						["default"] = {
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["criteria"] = "movement.distance > 6",
								["enabled"] = true,
								["action"] = "spiritwalkers_grace",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Interrupt of casts.",
								["action"] = "wind_shear",
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! moving & talent.acid_rain.enabled",
								["action"] = "healing_rain",
							}, -- [10]
							{
								["action"] = "stormkeeper",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3 & refreshable",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["action"] = "primordial_wave",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies = 1 || active_enemies = 2 & buff.lava_surge.up ) & dot.flame_shock.remains > cast_time & cooldown_react",
								["action"] = "lava_burst",
							}, -- [14]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 2 || ! talent.chain_lightning.enabled",
								["action"] = "lightning_bolt",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [17]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["enabled"] = true,
							}, -- [18]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [19]
						},
						["precombat"] = {
							{
								["action"] = "earthliving_weapon",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.water_shield.up + buff.earth_shield.up + buff.lightning_shield.up < 1 + talent.elemental_orbit.rank",
								["action"] = "water_shield",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.water_shield.up + buff.earth_shield.up + buff.lightning_shield.up < 1 + talent.elemental_orbit.rank",
								["action"] = "lightning_shield",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.water_shield.up + buff.earth_shield.up + buff.lightning_shield.up < 1 + talent.elemental_orbit.rank",
								["action"] = "earth_shield",
							}, -- [4]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
						},
					},
				},
			},
		},
	},
}
