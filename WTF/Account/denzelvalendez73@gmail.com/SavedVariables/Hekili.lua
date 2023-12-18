
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Oloksayawa - Valdrakken"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["specs"] = {
				[269] = {
					["settings"] = {
						["sef_one_charge"] = false,
						["tok_damage"] = 1,
						["check_wdp_range"] = false,
						["allow_fsk"] = false,
						["use_diffuse"] = false,
						["check_sck_range"] = false,
					},
				},
				[270] = {
					["settings"] = {
						["roll_movement"] = 5,
						["save_faeline"] = false,
					},
				},
				[268] = {
					["settings"] = {
						["purify_stagger_maxhp"] = 6,
						["purify_for_celestial"] = true,
						["purify_for_niuzao"] = true,
						["bof_percent"] = 50,
						["eh_percent"] = 65,
						["purify_stagger_currhp"] = 12,
					},
				},
			},
			["runOnce"] = {
				["forceReloadClassDefaultOptions_20220306_269"] = true,
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["forceReloadClassDefaultOptions_20220306_268"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
				["forceReloadClassDefaultOptions_20220306_270"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
			},
			["packs"] = {
				["Mistweaver"] = {
					["builtIn"] = true,
					["date"] = 20230325,
					["spec"] = 270,
					["desc"] = "2023-02-16:  Added option to avoid recasting Faeline Stomp when standing in an existing faeline (for mana efficiency).\n\n2023-03-25:  Add Roll/Chi Torpedo with specialization option.",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies <= 3",
								["action"] = "thunder_focus_tea",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies <= 3",
								["action"] = "rising_sun_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.teachings_of_the_monastery.enabled || buff.teachings_of_the_monastery.up & active_enemies <= 3",
								["action"] = "blackout_kick",
							}, -- [3]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "spinning_crane_kick",
								["enabled"] = true,
							}, -- [6]
						},
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "distance_check",
								["action"] = "roll",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "distance_check",
								["action"] = "chi_torpedo",
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
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! settings.save_faeline || ! ( buff.ancient_concordance.up || buff.awakened_faeline.up )",
								["action"] = "faeline_stomp",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= 3",
								["list_name"] = "aoe",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies < 3",
								["list_name"] = "st",
							}, -- [14]
						},
						["st"] = {
							{
								["action"] = "thunder_focus_tea",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "rising_sun_kick",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.teachings_of_the_monastery.enabled || buff.teachings_of_the_monastery.up & cooldown.rising_sun_kick.remains > gcd.max",
								["action"] = "blackout_kick",
							}, -- [3]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.teachings_of_the_monastery.enabled || buff.teachings_of_the_monastery.stack < 3 || buff.teachings_of_the_monastery.remains < 2",
								["action"] = "tiger_palm",
							}, -- [6]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [3]
						},
					},
					["version"] = 20230325,
					["warnings"] = "The import for 'aoe' required some automated changes.\nLine 3: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nThe import for 'st' required some automated changes.\nLine 3: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\nLine 6: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nImported 4 action lists.\n",
					["author"] = "Aikanaka",
					["profile"] = "actions.precombat+=/potion\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\nactions+=/spear_hand_strike\nactions+=/roll,if=distance_check\nactions+=/chi_torpedo,if=distance_check\nactions+=/use_items\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/potion\nactions+=/faeline_stomp,if=!settings.save_faeline||!(buff.ancient_concordance.up||buff.awakened_faeline.up)\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>=3\nactions+=/call_action_list,name=st,strict=1,if=active_enemies<3\n\nactions.st+=/thunder_focus_tea\nactions.st+=/rising_sun_kick\nactions.st+=/blackout_kick,if=!talent.teachings_of_the_monastery||buff.teachings_of_the_monastery.up&cooldown.rising_sun_kick.remains>gcd.max\nactions.st+=/chi_wave\nactions.st+=/chi_burst\nactions.st+=/tiger_palm,if=!talent.teachings_of_the_monastery||buff.teachings_of_the_monastery.stack<3||buff.teachings_of_the_monastery.remains<2\n\nactions.aoe+=/thunder_focus_tea,if=active_enemies<=3\nactions.aoe+=/rising_sun_kick,if=active_enemies<=3\nactions.aoe+=/blackout_kick,if=!talent.teachings_of_the_monastery||buff.teachings_of_the_monastery.up&active_enemies<=3\nactions.aoe+=/chi_wave\nactions.aoe+=/chi_burst\nactions.aoe+=/spinning_crane_kick",
				},
				["Brewmaster"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230722,
					["author"] = "SimC",
					["desc"] = "2023-07-22:  Minor updates from SimC.\n\n2023-07-19: Add SCK to Press the Advantage priority.\n- Use BDB more often if/when WoO is out of sync.\n\n2023-07-15: Remove Purifying Brew that bypasses options.\n\n2023-07-12:  Minor TP fix for non-PTA and non-BOC.\n\n2023-07-11:  Patch 10.1.5 update.\n\n2023-07-02:  Use Exploding Keg without Bonedust Brew if BDB isn't talented.\n\n2023-05-24:  Beacon/WoO alignment no longer needed.\n\n2023-05-15:  Oops, reimplement fallback rotation.\n\n2023-05-08:  SCK and Beacon to the Beyond changes.\n\n2023-02-26:  Added Touch of Death back to the priority (appears to be missing from SimC).\n\nThe SimC Brewmaster priority uses Purifying Brew and Celestial Brew aggressively for DPS.  The addon has pared this back to support survivability.",
					["lists"] = {
						["rotation_pta"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.weapons_of_order_debuff.stack > 3",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! talent.weapons_of_order.enabled",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.press_the_advantage.stack < 6 || buff.press_the_advantage.stack > 9 ) & active_enemies <= 4",
								["action"] = "rising_sun_kick",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( buff.press_the_advantage.stack < 8 || buff.press_the_advantage.stack > 9 ) & active_enemies > 4",
								["action"] = "keg_smash",
							}, -- [4]
							{
								["action"] = "blackout_kick",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen <= 40",
								["action"] = "black_ox_brew",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "debuff.weapons_of_order_debuff.stack > 3 || ! talent.weapons_of_order.enabled",
								["action"] = "summon_white_tiger_statue",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.weapons_of_order.enabled & ( buff.weapons_of_order.down & cooldown.weapons_of_order.true_remains > action_cooldown || time < 10 & debuff.weapons_of_order_debuff.stack > 3 || time > 10 ) || ! talent.weapons_of_order.enabled",
								["action"] = "bonedust_brew",
								["description"] = "Modified: If WoO is on cooldown and BDB will be back up before WoO's CD expires, go ahead and use BDB.",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up || ! talent.bonedust_brew.enabled",
								["action"] = "exploding_keg",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! ( buff.press_the_advantage.stack > 6 & buff.blackout_combo.up )",
								["action"] = "breath_of_fire",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! ( buff.press_the_advantage.stack > 6 & buff.blackout_combo.up )",
								["action"] = "keg_smash",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled",
								["action"] = "rushing_jade_wind",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "spinning_crane_kick",
							}, -- [13]
							{
								["action"] = "expel_harm",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [16]
						},
						["rotation_boc"] = {
							{
								["action"] = "blackout_kick",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "debuff.weapons_of_order_debuff.stack > 3",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.weapons_of_order.enabled",
								["action"] = "invoke_niuzao_the_black_ox",
							}, -- [3]
							{
								["action"] = "weapons_of_order",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "action.weapons_of_order.time_since < 2 & talent.weapons_of_order.enabled",
								["action"] = "keg_smash",
							}, -- [5]
							{
								["action"] = "rising_sun_kick",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.weapons_of_order.up & debuff.weapons_of_order_debuff.remains <= gcd.max * 2",
								["action"] = "keg_smash",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "energy + energy.regen <= 40",
								["action"] = "black_ox_brew",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.up & active_enemies = 1",
								["action"] = "tiger_palm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.charred_passions.remains < cooldown.blackout_kick.remains",
								["action"] = "breath_of_fire",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.charred_passions.down",
								["action"] = "breath_of_fire",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.weapons_of_order.up & debuff.weapons_of_order_debuff.stack <= 3",
								["action"] = "keg_smash",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "debuff.weapons_of_order_debuff.stack > 3 || ! talent.weapons_of_order.enabled",
								["action"] = "summon_white_tiger_statue",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.weapons_of_order.enabled & ( buff.weapons_of_order.down & cooldown.weapons_of_order.true_remains > action_cooldown || time < 10 & debuff.weapons_of_order_debuff.stack > 3 || time > 10 ) || ! talent.weapons_of_order.enabled",
								["action"] = "bonedust_brew",
								["description"] = "Modified: If WoO is on cooldown and BDB will be back up before WoO's CD expires, go ahead and use BDB.",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up || ! talent.bonedust_brew.enabled",
								["action"] = "exploding_keg",
							}, -- [15]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled",
								["action"] = "rushing_jade_wind",
							}, -- [17]
							{
								["action"] = "breath_of_fire",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & ! talent.blackout_combo.enabled",
								["action"] = "tiger_palm",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "spinning_crane_kick",
							}, -- [20]
							{
								["action"] = "expel_harm",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [23]
						},
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "diffuse_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_for_celestial & ( time_to_max_charges < gcd.max || buff.purified_chi.up & buff.purified_chi.remains < 1.5 * gcd.max ) || cooldown.celestial_brew.remains < 2 * gcd.max & charges_fractional > 1.5",
								["action"] = "purifying_brew",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "tanking & ( ! talent.improved_celestial_brew.enabled || buff.purified_chi.up ) & buff.blackout_combo.down",
								["action"] = "celestial_brew",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_invoke_niuzao_the_black_ox.enabled & settings.purify_for_niuzao & pet.niuzao_the_black_ox.active",
								["action"] = "purifying_brew",
								["line_cd"] = "5",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "group & buff.blackout_combo.down & settings.purify_stagger_currhp > 0 & stagger.pct >= settings.purify_stagger_currhp",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "solo & buff.blackout_combo.down & settings.purify_stagger_currhp > 0 & stagger.pct >= settings.purify_stagger_currhp * 0.5",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "group & buff.blackout_combo.down & settings.purify_stagger_maxhp > 0 & stagger.pct >= settings.purify_stagger_maxhp",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "solo & buff.blackout_combo.down & settings.purify_stagger_maxhp > 0 & stagger.pct >= settings.purify_stagger_maxhp * 0.5",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "group & buff.blackout_combo.down & settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & stagger.pct > 20",
								["action"] = "purifying_brew",
								["description"] = "Stagger % of 20 will kill you in 2.5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "solo & buff.blackout_combo.down & settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & stagger.pct > 10",
								["action"] = "purifying_brew",
								["description"] = "Stagger % of 10 will kill you in 5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & buff.fortifying_brew.down",
								["action"] = "dampen_harm",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & ( buff.dampen_harm.down )",
								["action"] = "fortifying_brew",
							}, -- [13]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "touch_of_death",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "debuff.weapons_of_order_debuff.stack > 3 || talent.weapons_of_order.enabled || boss & fight_remains < 25",
								["action"] = "use_items",
							}, -- [16]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.press_the_advantage.enabled",
								["list_name"] = "rotation_pta",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.press_the_advantage.enabled",
								["list_name"] = "rotation_boc",
							}, -- [24]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled",
								["action"] = "chi_burst",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_wave.enabled",
								["action"] = "chi_wave",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.summon_white_tiger_statue.enabled",
								["action"] = "summon_white_tiger_statue",
							}, -- [4]
						},
					},
					["version"] = 20230722,
					["warnings"] = "The import for 'rotation_boc' required some automated changes.\nLine 14: Converted 'talent.weapons_of_order' to 'talent.weapons_of_order.enabled' (1x).\n\nThe import for 'rotation_pta' required some automated changes.\nLine 8: Converted 'talent.weapons_of_order' to 'talent.weapons_of_order.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 4: Converted 'talent.improved_celestial_brew' to 'talent.improved_celestial_brew.enabled' (1x).\nLine 5: Converted 'talent.improved_invoke_niuzao_the_black_ox' to 'talent.improved_invoke_niuzao_the_black_ox.enabled' (1x).\nLine 16: Converted 'talent.weapons_of_order' to 'talent.weapons_of_order.enabled' (1x).\n\nImported 4 action lists.\n",
					["spec"] = 268,
					["profile"] = "actions.precombat+=/potion\nactions.precombat+=/chi_burst,if=talent.chi_burst.enabled\nactions.precombat+=/chi_wave,if=talent.chi_wave.enabled\nactions.precombat+=/summon_white_tiger_statue,if=talent.summon_white_tiger_statue.enabled\n\nactions+=/spear_hand_strike\nactions+=/diffuse_magic\nactions+=/purifying_brew,if=settings.purify_for_celestial&(time_to_max_charges<gcd.max||buff.purified_chi.up&buff.purified_chi.remains<1.5*gcd.max)||cooldown.celestial_brew.remains<2*gcd.max&charges_fractional>1.5\nactions+=/celestial_brew,if=tanking&(!talent.improved_celestial_brew||buff.purified_chi.up)&buff.blackout_combo.down\nactions+=/purifying_brew,line_cd=5,if=talent.improved_invoke_niuzao_the_black_ox&settings.purify_for_niuzao&pet.niuzao_the_black_ox.active\n# Use configured purify_stagger_currhp from Brewmaster options.\nactions+=/purifying_brew,if=group&buff.blackout_combo.down&settings.purify_stagger_currhp>0&stagger.pct>=settings.purify_stagger_currhp\n# Use configured purify_stagger_currhp from Brewmaster options.\nactions+=/purifying_brew,if=solo&buff.blackout_combo.down&settings.purify_stagger_currhp>0&stagger.pct>=settings.purify_stagger_currhp*0.5\n# Use configured purify_stagger_maxhp from Brewmaster options.\nactions+=/purifying_brew,if=group&buff.blackout_combo.down&settings.purify_stagger_maxhp>0&stagger.pct>=settings.purify_stagger_maxhp\n# Use configured purify_stagger_maxhp from Brewmaster options.\nactions+=/purifying_brew,if=solo&buff.blackout_combo.down&settings.purify_stagger_maxhp>0&stagger.pct>=settings.purify_stagger_maxhp*0.5\n# Stagger % of 20 will kill you in 2.5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.\nactions+=/purifying_brew,if=group&buff.blackout_combo.down&settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&stagger.pct>20\n# Stagger % of 10 will kill you in 5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.\nactions+=/purifying_brew,if=solo&buff.blackout_combo.down&settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&stagger.pct>10\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(0.2+(0.2*group))&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(0.2+(0.2*group))&(buff.dampen_harm.down)\nactions+=/potion\n### Use <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> when <a href='https://www.wowhead.com/spell=387184/weapons-of-order'>Weapons of Order</a> reaches 4 stacks.\n## actions+=/invoke_external_buff,name=power_infusion,if=buff.weapons_of_order.remains<=20&talent.weapons_of_order.enabled\n## actions+=/invoke_external_buff,name=power_infusion,if=!talent.weapons_of_order.enabled\nactions+=/touch_of_death\nactions+=/use_items,if=debuff.weapons_of_order_debuff.stack>3||talent.weapons_of_order||boss&fight_remains<25\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/call_action_list,name=rotation_pta,strict=1,if=talent.press_the_advantage.enabled\nactions+=/call_action_list,name=rotation_boc,strict=1,if=!talent.press_the_advantage.enabled\n\nactions.rotation_pta+=/invoke_niuzao_the_black_ox,if=debuff.weapons_of_order_debuff.stack>3\nactions.rotation_pta+=/invoke_niuzao_the_black_ox,if=!talent.weapons_of_order.enabled\nactions.rotation_pta+=/rising_sun_kick,if=(buff.press_the_advantage.stack<6||buff.press_the_advantage.stack>9)&active_enemies<=4\nactions.rotation_pta+=/keg_smash,if=(buff.press_the_advantage.stack<8||buff.press_the_advantage.stack>9)&active_enemies>4\nactions.rotation_pta+=/blackout_kick\n## actions.rotation_pta+=/purifying_brew,if=(!buff.blackout_combo.up)\nactions.rotation_pta+=/black_ox_brew,if=energy+energy.regen<=40\nactions.rotation_pta+=/summon_white_tiger_statue,if=debuff.weapons_of_order_debuff.stack>3||!talent.weapons_of_order.enabled\n# Modified: If WoO is on cooldown and BDB will be back up before WoO's CD expires, go ahead and use BDB.\nactions.rotation_pta+=/bonedust_brew,if=talent.weapons_of_order&(buff.weapons_of_order.down&cooldown.weapons_of_order.true_remains>cooldown||time<10&debuff.weapons_of_order_debuff.stack>3||time>10)||!talent.weapons_of_order.enabled\nactions.rotation_pta+=/exploding_keg,if=buff.bonedust_brew.up||!talent.bonedust_brew.enabled\nactions.rotation_pta+=/breath_of_fire,if=!(buff.press_the_advantage.stack>6&buff.blackout_combo.up)\nactions.rotation_pta+=/keg_smash,if=!(buff.press_the_advantage.stack>6&buff.blackout_combo.up)\nactions.rotation_pta+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled\nactions.rotation_pta+=/spinning_crane_kick,if=active_enemies>1\nactions.rotation_pta+=/expel_harm\nactions.rotation_pta+=/chi_wave,if=talent.chi_wave.enabled\nactions.rotation_pta+=/chi_burst,if=talent.chi_burst.enabled\n\nactions.rotation_boc+=/blackout_kick\nactions.rotation_boc+=/invoke_niuzao_the_black_ox,if=debuff.weapons_of_order_debuff.stack>3\nactions.rotation_boc+=/invoke_niuzao_the_black_ox,if=!talent.weapons_of_order.enabled\nactions.rotation_boc+=/weapons_of_order\nactions.rotation_boc+=/keg_smash,if=action.weapons_of_order.time_since<2&talent.weapons_of_order.enabled\n## actions.rotation_boc+=/purifying_brew,if=(!buff.blackout_combo.up)\nactions.rotation_boc+=/rising_sun_kick\nactions.rotation_boc+=/keg_smash,if=buff.weapons_of_order.up&debuff.weapons_of_order_debuff.remains<=gcd*2\nactions.rotation_boc+=/black_ox_brew,if=energy+energy.regen<=40\nactions.rotation_boc+=/tiger_palm,if=buff.blackout_combo.up&active_enemies=1\nactions.rotation_boc+=/breath_of_fire,if=buff.charred_passions.remains<cooldown.blackout_kick.remains\nactions.rotation_boc+=/breath_of_fire,if=buff.charred_passions.down\nactions.rotation_boc+=/keg_smash,if=buff.weapons_of_order.up&debuff.weapons_of_order_debuff.stack<=3\nactions.rotation_boc+=/summon_white_tiger_statue,if=debuff.weapons_of_order_debuff.stack>3||!talent.weapons_of_order.enabled\n# Modified: If WoO is on cooldown and BDB will be back up before WoO's CD expires, go ahead and use BDB.\nactions.rotation_boc+=/bonedust_brew,if=talent.weapons_of_order&(buff.weapons_of_order.down&cooldown.weapons_of_order.true_remains>cooldown||time<10&debuff.weapons_of_order_debuff.stack>3||time>10)||!talent.weapons_of_order.enabled\nactions.rotation_boc+=/exploding_keg,if=buff.bonedust_brew.up||!talent.bonedust_brew.enabled\nactions.rotation_boc+=/keg_smash\nactions.rotation_boc+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled\nactions.rotation_boc+=/breath_of_fire\nactions.rotation_boc+=/tiger_palm,if=active_enemies=1&!talent.blackout_combo.enabled\nactions.rotation_boc+=/spinning_crane_kick,if=active_enemies>1\nactions.rotation_boc+=/expel_harm\nactions.rotation_boc+=/chi_wave,if=talent.chi_wave.enabled\nactions.rotation_boc+=/chi_burst,if=talent.chi_burst.enabled",
				},
				["Windwalker"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/dragonflight/profiles/PreRaids/PR_Monk_Windwalker.simc",
					["builtIn"] = true,
					["date"] = 20230807,
					["spec"] = 269,
					["desc"] = "2023-08-07: Require Skyreach/Skytouch for target cycling.\n\n2023-08-02: SimC updates mostly re: Mark of the Crane and Skyreach target cycling.\n\n2023-07-02: Strike of the Windlord adjusted in single-target.\n\n2023-06-24:  TP adjusted for non-Skyreach/Skytouch.\n\n2023-05-28:  Minor updates.\n\n2023-05-24:  SCK, RSK, and FoF usage update.\n\n2023-05-17:  Minor trinket, Skyreach, and ST priority revisions.\n\n2023-05-02:  Update for 10.1.\n\n2023-04-17:  Translate and reimplement Fists of Fury usage/cancellation during Serenity.\n\n2023-04-15:  Update from SimulationCraft.\n\n2023-03-25:  Adjust Touch of Death.\n\n2023-02-21:   Revise to ensure Fists of Fury is only broken when Serenity is active.\n\n2023-02-20:  Major changes to align with latest SimulationCraft priority.\n\n2023-03-08:  Revise Manic Grieftorch usage; added requirement that target is expected to live longer than the cast time to reduce risk of partial cast.",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["description"] = "Opener",
								["action"] = "summon_white_tiger_statue",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled & chi.max - chi >= 3",
								["action"] = "expel_harm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi.max - chi >= ( 2 + buff.power_strikes.up )",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled & chi = 3",
								["action"] = "expel_harm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi = 2",
								["action"] = "chi_wave",
							}, -- [5]
							{
								["action"] = "expel_harm",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi > 1 & chi.max - chi >= 2",
								["action"] = "chi_burst",
							}, -- [7]
						},
						["serenity_3t"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.fae_exposure_damage.remains < 1",
								["action"] = "faeline_stomp",
								["description"] = "Serenity 3 Targets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( talent.skyreach.enabled || talent.skytouch.enabled ) & ! debuff.skyreach_exhaustion.up & combo_strike",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.teachings_of_the_monastery.stack = 3 & buff.teachings_of_the_monastery.remains < 1",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "debuff.fae_exposure_damage.remains < 2",
								["action"] = "faeline_stomp",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & buff.call_to_dominance.up & debuff.skyreach_exhaustion.remains > buff.call_to_dominance.remains",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & debuff.skyreach_exhaustion.remains > 55",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "fists_of_fury",
								["cycle_targets"] = 1,
								["interrupt"] = "1",
								["criteria"] = "buff.invokers_delight.up",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & set_bonus.tier30_2pc",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "spinning_crane_kick",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.teachings_of_the_monastery.stack = 2",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.shadowboxing_treads.enabled & combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "spinning_crane_kick",
							}, -- [18]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.teachings_of_the_monastery.enabled & buff.teachings_of_the_monastery.stack < 3",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [22]
						},
						["serenity_st"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.fae_exposure_damage.remains < 2 & ! debuff.skyreach_exhaustion.remains",
								["action"] = "faeline_stomp",
								["description"] = "Serenity 1 Target",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( talent.skyreach.enabled || talent.skytouch.enabled ) & ! debuff.skyreach_exhaustion.up & combo_strike",
								["action"] = "tiger_palm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.teachings_of_the_monastery.stack = 3 & buff.teachings_of_the_monastery.remains < 1",
								["action"] = "blackout_kick",
							}, -- [3]
							{
								["action"] = "rising_sun_kick",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.fae_exposure_damage.remains < 2",
								["action"] = "faeline_stomp",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & buff.call_to_dominance.up & debuff.skyreach_exhaustion.remains > buff.call_to_dominance.remains",
								["action"] = "strike_of_the_windlord",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & debuff.skyreach_exhaustion.remains > 55",
								["action"] = "strike_of_the_windlord",
							}, -- [7]
							{
								["enabled"] = true,
								["interrupt"] = "1",
								["action"] = "fists_of_fury",
								["criteria"] = "buff.invokers_delight.up",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "debuff.skyreach_exhaustion.remains > buff.call_to_dominance.remains",
								["action"] = "strike_of_the_windlord",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & set_bonus.tier30_2pc",
								["action"] = "blackout_kick",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
							}, -- [12]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.teachings_of_the_monastery.enabled & buff.teachings_of_the_monastery.stack < 3",
								["action"] = "tiger_palm",
							}, -- [14]
						},
						["cd_serenity"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Serenity Cooldowns",
								["list_name"] = "serenity_trinkets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! cooldown.invoke_xuen_the_white_tiger.remains || active_enemies > 4 || cooldown.invoke_xuen_the_white_tiger.remains > 50 || boss & fight_remains <= 30",
								["action"] = "summon_white_tiger_statue",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & talent.bonedust_brew.enabled & cooldown.bonedust_brew.remains <= 5 & target.time_to_die > 25 || buff.bloodlust.up || boss & fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 25 & fight_remains > 120 || fight_remains < 60 & ( debuff.skyreach_exhaustion.remains < 2 || debuff.skyreach_exhaustion.remains > 55 ) & ! cooldown.serenity.remains & active_enemies < 3 || buff.bloodlust.up || boss & fight_remains < 23",
								["action"] = "invoke_xuen",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & ( cooldown.serenity.up || cooldown.serenity.remains > 15 || boss & fight_remains < 30 & fight_remains > 10 ) || boss & fight_remains < 10",
								["action"] = "bonedust_brew",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.invokers_delight.up || ! talent.invokers_delight.enabled || variable.hold_xuen & ( talent.drinking_horn_cover.enabled & fight_remains > 110 || ! talent.drinking_horn_cover.enabled & fight_remains > 105 ) || ! talent.invoke_xuen_the_white_tiger.enabled || boss & fight_remains < 15",
								["action"] = "serenity",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ! buff.serenity.up & ( target.health.current < health || buff.hidden_masters_forbidden_touch.up & ( buff.hidden_masters_forbidden_touch.remains < 2 || buff.hidden_masters_forbidden_touch.remains > target.time_to_die ) || target.time_to_die > 60 || debuff.bonedust_brew_debuff.up || boss & fight_remains < 10 )",
								["action"] = "touch_of_death",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 90 || boss & fight_remains < 10",
								["action"] = "touch_of_karma",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || boss & fight_remains < 20",
								["action"] = "blood_fury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || boss & fight_remains < 20",
								["action"] = "berserking",
							}, -- [10]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || boss & fight_remains < 20",
								["action"] = "fireblood",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || boss & fight_remains < 20",
								["action"] = "ancestral_call",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || boss & fight_remains < 20",
								["action"] = "bag_of_tricks",
							}, -- [14]
						},
						["default_4t"] = {
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
								["description"] = "4 Targets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "fists_of_fury",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & buff.pressure_point.up & cooldown.fists_of_fury.remains > 5",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "chi = 1 & ( ! cooldown.rising_sun_kick.remains || ! cooldown.strike_of_the_windlord.remains ) || chi = 2 & ! cooldown.fists_of_fury.remains",
								["action"] = "expel_harm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.fists_of_fury.remains > 3 & buff.chi_energy.stack > 10",
								["action"] = "spinning_crane_kick",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & set_bonus.tier30_2pc",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & chi < 5",
								["action"] = "chi_burst",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "chi < 5 & energy < 50",
								["action"] = "chi_burst",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.fists_of_fury.remains > 3 || chi > 4 ) & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [14]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.fists_of_fury.remains > 3 || chi > 4 )",
								["action"] = "spinning_crane_kick",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [20]
						},
						["default_3t"] = {
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
								["description"] = "3 Targets",
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & ( cooldown.invoke_xuen_the_white_tiger.remains > 20 || fight_remains < 5 )",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "fists_of_fury",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike",
								["action"] = "spinning_crane_kick",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "chi = 1 & ( ! cooldown.rising_sun_kick.remains || ! cooldown.strike_of_the_windlord.remains ) || chi = 2 & ! cooldown.fists_of_fury.remains",
								["action"] = "expel_harm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 2",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.up & ( talent.shadowboxing_treads.enabled || cooldown.rising_sun_kick.remains > 1 )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & chi < 5",
								["action"] = "chi_burst",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "chi < 5 & energy < 50",
								["action"] = "chi_burst",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.fists_of_fury.remains < 3 & buff.chi_energy.stack > 15",
								["action"] = "spinning_crane_kick",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fists_of_fury.remains > 4 & chi > 3",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.rising_sun_kick.remains & cooldown.fists_of_fury.remains & chi > 4 & ( ( talent.storm_earth_and_fire.enabled & ! talent.bonedust_brew.enabled ) || ( talent.serenity.enabled ) )",
								["action"] = "spinning_crane_kick",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.fists_of_fury.remains",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & talent.shadowboxing_treads.enabled & ! spinning_crane_kick.max",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( combo_strike & chi > 5 & talent.storm_earth_and_fire.enabled || combo_strike & chi > 4 & talent.serenity.enabled )",
								["action"] = "spinning_crane_kick",
								["cycle_targets"] = 1,
							}, -- [23]
						},
						["default_aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
								["description"] = ">4 Targets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 8",
								["action"] = "whirling_dragon_punch",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "fists_of_fury",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 5",
								["action"] = "whirling_dragon_punch",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.whirling_dragon_punch.enabled & cooldown.whirling_dragon_punch.remains < 3 & cooldown.fists_of_fury.remains > 3 & ! buff.kicks_of_flowing_momentum.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "chi = 1 & ( ! cooldown.rising_sun_kick.remains || ! cooldown.strike_of_the_windlord.remains ) || chi = 2 & ! cooldown.fists_of_fury.remains",
								["action"] = "expel_harm",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.fists_of_fury.remains < 5 & buff.chi_energy.stack > 10",
								["action"] = "spinning_crane_kick",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & chi < 5",
								["action"] = "chi_burst",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "chi < 5 & energy < 50",
								["action"] = "chi_burst",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.fists_of_fury.remains > 3 || chi > 2 ) & spinning_crane_kick.max & buff.bloodlust.up",
								["action"] = "spinning_crane_kick",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.fists_of_fury.remains > 3 || chi > 2 ) & spinning_crane_kick.max & buff.invokers_delight.up",
								["action"] = "spinning_crane_kick",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.shadowboxing_treads.enabled & combo_strike & set_bonus.tier30_2pc & ! buff.bonedust_brew.up & active_enemies < 15 & ! talent.crane_vortex.enabled",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.shadowboxing_treads.enabled & combo_strike & set_bonus.tier30_2pc & ! buff.bonedust_brew.up & active_enemies < 8",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.fists_of_fury.remains > 3 || chi > 4 ) & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "talent.shadowboxing_treads.enabled & combo_strike & ! spinning_crane_kick.max",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 & raid_event.adds.in > 20 || chi.max - chi >= 2",
								["action"] = "chi_burst",
							}, -- [25]
						},
						["bdb_setup"] = {
							{
								["enabled"] = true,
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
								["description"] = "Bonedust Brew Setup",
								["criteria"] = "talent.thunderfist.enabled & active_enemies > 3",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spinning_crane_kick.max & chi >= 4",
								["action"] = "bonedust_brew",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi.max - chi >= 2 & buff.storm_earth_and_fire.up",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ! talent.whirling_dragon_punch.enabled & ! spinning_crane_kick.max",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi >= 5 & talent.whirling_dragon_punch.enabled",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies >= 2 & talent.whirling_dragon_punch.enabled",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
						},
						["serenity_4t"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.fae_exposure_damage.remains < 1",
								["action"] = "faeline_stomp",
								["description"] = "Serenity 4 Targets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( talent.skyreach.enabled || talent.skytouch.enabled ) & ! debuff.skyreach_exhaustion.up & combo_strike",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.teachings_of_the_monastery.stack = 3 & buff.teachings_of_the_monastery.remains < 1",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up & ! talent.bonedust_brew.enabled",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & buff.call_to_dominance.up & debuff.skyreach_exhaustion.remains > buff.call_to_dominance.remains",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.fae_exposure_damage.remains < 2",
								["action"] = "faeline_stomp",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "fists_of_fury",
								["cycle_targets"] = 1,
								["interrupt"] = "1",
								["criteria"] = "buff.invokers_delight.up",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & set_bonus.tier30_2pc",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.shadowboxing_treads.enabled & combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "spinning_crane_kick",
							}, -- [17]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.teachings_of_the_monastery.enabled & buff.teachings_of_the_monastery.stack < 3",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [21]
						},
						["serenity_aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.fae_exposure_damage.remains < 1",
								["action"] = "faeline_stomp",
								["description"] = "Serenity >4 Targets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ! spinning_crane_kick.max & talent.shadowboxing_treads.enabled",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.teachings_of_the_monastery.stack = 3 & buff.teachings_of_the_monastery.remains < 1",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & buff.call_to_dominance.up & debuff.skyreach_exhaustion.remains > buff.call_to_dominance.remains & active_enemies < 10",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.fae_exposure_damage.remains < 2",
								["action"] = "faeline_stomp",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "fists_of_fury",
								["cycle_targets"] = 1,
								["interrupt"] = "1",
								["criteria"] = "buff.invokers_delight.up",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 6 & combo_strike & set_bonus.tier30_2pc",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & spinning_crane_kick.max",
								["action"] = "spinning_crane_kick",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( talent.skyreach.enabled || talent.skytouch.enabled ) & ! debuff.skyreach_exhaustion.up & combo_strike & active_enemies = 5",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.shadowboxing_treads.enabled & active_enemies >= 3 & combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "spinning_crane_kick",
							}, -- [18]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.teachings_of_the_monastery.enabled & buff.teachings_of_the_monastery.stack < 3",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [22]
						},
						["default_2t"] = {
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
								["description"] = "2 Targets",
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & ( cooldown.invoke_xuen_the_white_tiger.remains > 20 || fight_remains < 5 )",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! cooldown.fists_of_fury.remains",
								["action"] = "rising_sun_kick",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "fists_of_fury",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.kicks_of_flowing_momentum.up || buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi = 1 & ( ! cooldown.rising_sun_kick.remains || ! cooldown.strike_of_the_windlord.remains ) || chi = 2 & ! cooldown.fists_of_fury.remains",
								["action"] = "expel_harm",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & chi < 5",
								["action"] = "chi_burst",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 2",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.remains & chi > 2 & prev.rising_sun_kick",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "chi < 5 & energy < 50",
								["action"] = "chi_burst",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.up & ( talent.shadowboxing_treads.enabled || cooldown.rising_sun_kick.remains > 1 )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! talent.shadowboxing_treads.enabled & cooldown.fists_of_fury.remains > 4 & talent.xuens_battlegear.enabled",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.rising_sun_kick.remains & cooldown.fists_of_fury.remains & ( ! buff.bonedust_brew.up || spinning_crane_kick.modifier < 1.5 )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike & spinning_crane_kick.modifier >= 2.7",
								["action"] = "spinning_crane_kick",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "faeline_stomp",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( combo_strike & chi > 5 & talent.storm_earth_and_fire.enabled || combo_strike & chi > 4 & talent.serenity.enabled )",
								["action"] = "spinning_crane_kick",
								["cycle_targets"] = 1,
							}, -- [24]
						},
						["serenity_lust"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.fae_exposure_damage.remains < 1",
								["action"] = "faeline_stomp",
								["description"] = "Serenity Lust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.remains < 1",
								["action"] = "fists_of_fury",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.teachings_of_the_monastery.stack = 3 & buff.teachings_of_the_monastery.remains < 1",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "fists_of_fury",
								["interrupt_if"] = "buff.serenity.remains>=1&buff.invokers_delight.up",
								["interrupt"] = "1",
								["criteria"] = "buff.invokers_delight.up",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & set_bonus.tier30_2pc",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.teachings_of_the_monastery.enabled & buff.teachings_of_the_monastery.stack < 3",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [11]
						},
						["default_st"] = {
							{
								["enabled"] = true,
								["criteria"] = "! cooldown.fists_of_fury.remains",
								["action"] = "rising_sun_kick",
								["description"] = "1 Target",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.pressure_point.up & debuff.skyreach_exhaustion.remains < 55",
								["action"] = "fists_of_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.skyreach_exhaustion.remains < 1 & debuff.fae_exposure_damage.remains < 3",
								["action"] = "faeline_stomp",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up || debuff.skyreach_exhaustion.remains > 55",
								["action"] = "rising_sun_kick",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.remains & chi > 2 & prev.rising_sun_kick",
								["action"] = "blackout_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & ( cooldown.invoke_xuen_the_white_tiger.remains > 20 || fight_remains < 5 )",
								["action"] = "strike_of_the_windlord",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.kicks_of_flowing_momentum.up || buff.pressure_point.up || debuff.skyreach_exhaustion.remains > 55",
								["action"] = "rising_sun_kick",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
							}, -- [8]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "rising_sun_kick",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "chi = 1 & ( ! cooldown.rising_sun_kick.remains || ! cooldown.strike_of_the_windlord.remains ) || chi = 2 & ! cooldown.fists_of_fury.remains",
								["action"] = "expel_harm",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & chi < 5",
								["action"] = "chi_burst",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 2 & debuff.skyreach_exhaustion.remains > 1",
								["action"] = "blackout_kick",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "chi < 5 & energy < 50",
								["action"] = "chi_burst",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "debuff.skyreach_exhaustion.remains > 30 || fight_remains < 5",
								["action"] = "strike_of_the_windlord",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.up & cooldown.rising_sun_kick.remains > 1",
								["action"] = "blackout_kick",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike & spinning_crane_kick.modifier >= 2.7",
								["action"] = "spinning_crane_kick",
							}, -- [18]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
							}, -- [21]
						},
						["cd_sef"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Storm, Earth and Fire Cooldowns",
								["list_name"] = "sef_trinkets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active",
								["action"] = "summon_white_tiger_statue",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & fight_remains > 25 & talent.bonedust_brew.enabled & cooldown.bonedust_brew.remains <= 5 & ( active_enemies < 3 & chi >= 3 || active_enemies >= 3 & chi >= 2 ) || boss & fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & fight_remains > 25 & ! talent.bonedust_brew.enabled & ( cooldown.rising_sun_kick.remains < 2 ) & chi >= 3",
								["action"] = "invoke_xuen",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.bonedust_brew.enabled & ( fight_remains < 30 & cooldown.bonedust_brew.remains < 4 & chi >= 4 || buff.bonedust_brew.up || ! spinning_crane_kick.max & active_enemies >= 3 & cooldown.bonedust_brew.remains <= 2 & chi >= 2 ) & ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > cooldown.storm_earth_and_fire.full_recharge_time )",
								["action"] = "storm_earth_and_fire",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ! buff.bonedust_brew.up & buff.storm_earth_and_fire.up & buff.storm_earth_and_fire.remains < 11 & spinning_crane_kick.max ) || ( ! buff.bonedust_brew.up & fight_remains < 30 & fight_remains > 10 & spinning_crane_kick.max & chi >= 4 ) || fight_remains < 10 || ( ( talent.skyreach.enabled || talent.skytouch.enabled ) & ! debuff.skyreach_exhaustion.up & active_enemies >= 4 & spinning_crane_kick.modifier >= 2 ) || ( pet.xuen_the_white_tiger.active & spinning_crane_kick.max & active_enemies >= 4 )",
								["action"] = "bonedust_brew",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "! buff.bonedust_brew.up & talent.bonedust_brew.enabled & cooldown.bonedust_brew.remains <= 2 & ( fight_remains > 60 & ( cooldown.storm_earth_and_fire.charges > 0 || cooldown.storm_earth_and_fire.remains > 10 ) & ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 10 || variable.hold_xuen ) || ( ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 13 ) & ( cooldown.storm_earth_and_fire.charges > 0 || cooldown.storm_earth_and_fire.remains > 13 || buff.storm_earth_and_fire.up ) ) )",
								["list_name"] = "bdb_setup",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "boss & fight_remains < 20 || ( cooldown.storm_earth_and_fire.charges = 2 & cooldown.invoke_xuen_the_white_tiger.remains > cooldown.storm_earth_and_fire.full_recharge_time ) & cooldown.fists_of_fury.remains <= 9 & chi >= 2 & cooldown.whirling_dragon_punch.remains <= 12",
								["action"] = "storm_earth_and_fire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.bonedust_brew.enabled & ( pet.xuen_the_white_tiger.active || fight_remains > 15 & cooldown.storm_earth_and_fire.full_recharge_time < cooldown.invoke_xuen_the_white_tiger.remains )",
								["action"] = "storm_earth_and_fire",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "touch_of_death",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 90 || pet.xuen_the_white_tiger.active || variable.hold_xuen || boss & fight_remains < 16",
								["action"] = "touch_of_karma",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 159 || variable.hold_xuen",
								["action"] = "touch_of_karma",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 20",
								["action"] = "blood_fury",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 15",
								["action"] = "berserking",
							}, -- [14]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 10",
								["action"] = "fireblood",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 20",
								["action"] = "ancestral_call",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.storm_earth_and_fire.down",
								["action"] = "bag_of_tricks",
							}, -- [18]
						},
						["sef_trinkets"] = {
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled & buff.storm_earth_and_fire.up || boss & fight_remains < 30",
								["action"] = "horn_of_valor",
								["description"] = "SEF Trinkets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( boss || target.time_to_die > 1 + cast_time ) & ( trinket.t1.is.manic_grieftorch & ! trinket.t2.has_use_buff || trinket.t2.is.manic_grieftorch & ! trinket.t1.has_use_buff )",
								["action"] = "manic_grieftorch",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled ) & ! buff.storm_earth_and_fire.up || boss & fight_remains < 25",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t1.has_use_buff & ! ( trinket.t1.is.horn_of_valor || trinket.t1.is.manic_grieftorch || trinket.t1.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || action_cooldown <= 60 & buff.storm_earth_and_fire.remains > 10 || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! trinket.t1.has_use_buff & ! ( trinket.t1.is.horn_of_valor || trinket.t1.is.manic_grieftorch || trinket.t1.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t2.has_use_buff & ! ( trinket.t2.is.horn_of_valor || trinket.t2.is.manic_grieftorch || trinket.t2.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || action_cooldown <= 60 & buff.storm_earth_and_fire.remains > 10 || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! trinket.t2.has_use_buff & ! ( trinket.t2.is.horn_of_valor || trinket.t2.is.manic_grieftorch || trinket.t2.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [7]
						},
						["st_cleave"] = {
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
								["description"] = "ST Priority (<3 Targets)",
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3 & talent.shadowboxing_treads.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & buff.kicks_of_flowing_momentum.up || buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 2 & talent.shadowboxing_treads.enabled",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["action"] = "strike_of_the_windlord",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.up & ( talent.shadowboxing_treads.enabled & active_enemies > 1 || cooldown.rising_sun_kick.remains > 1 )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 2",
								["action"] = "whirling_dragon_punch",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.teachings_of_the_monastery.stack = 3",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies = 1 || ! talent.shadowboxing_treads.enabled ) & cooldown.fists_of_fury.remains > 4 & talent.xuens_battlegear.enabled",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies = 2 & cooldown.rising_sun_kick.remains & cooldown.fists_of_fury.remains & ( ! buff.bonedust_brew.up || spinning_crane_kick.modifier < 1.5 )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up & active_enemies = 2",
								["action"] = "rushing_jade_wind",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.bonedust_brew.up & combo_strike & ( active_enemies > 1 || spinning_crane_kick.modifier >= 2.7 )",
								["action"] = "spinning_crane_kick",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rushing_jade_wind.up",
								["action"] = "rushing_jade_wind",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [18]
						},
						["precombat"] = {
							{
								["action"] = "summon_white_tiger_statue",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "chi < chi.max",
								["action"] = "expel_harm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.faeline_stomp.enabled",
								["action"] = "chi_burst",
							}, -- [3]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [4]
						},
						["serenity_2t"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.fae_exposure_damage.remains < 2 & ! debuff.skyreach_exhaustion.remains < 2 & ! debuff.skyreach_exhaustion.remains",
								["action"] = "faeline_stomp",
								["description"] = "Serenity 2 Targets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( talent.skyreach.enabled || talent.skytouch.enabled ) & ! debuff.skyreach_exhaustion.up & combo_strike",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.teachings_of_the_monastery.stack = 3 & buff.teachings_of_the_monastery.remains < 1",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.pressure_point.up & set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier30_2pc",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "debuff.fae_exposure_damage.remains < 2",
								["action"] = "faeline_stomp",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & buff.call_to_dominance.up & debuff.skyreach_exhaustion.remains > buff.call_to_dominance.remains",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled & debuff.skyreach_exhaustion.remains > 55",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "fists_of_fury",
								["cycle_targets"] = 1,
								["interrupt"] = "1",
								["criteria"] = "buff.invokers_delight.up",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.thunderfist.enabled",
								["action"] = "strike_of_the_windlord",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & set_bonus.tier30_2pc",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.teachings_of_the_monastery.stack = 2",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fists_of_fury.remains > 5 & talent.shadowboxing_treads.enabled & buff.teachings_of_the_monastery.stack = 1 & combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "spinning_crane_kick",
							}, -- [16]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.teachings_of_the_monastery.enabled & buff.teachings_of_the_monastery.stack < 3",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [19]
						},
						["fallthru"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.the_emperors_capacitor.stack > 19 & energy.time_to_max > execute_time - 1 & cooldown.rising_sun_kick.remains > execute_time || buff.the_emperors_capacitor.stack > 14 & ( cooldown.serenity.remains < 5 & talent.serenity.enabled || boss & fight_remains < 5 )",
								["action"] = "crackling_jade_lightning",
								["description"] = "Fallthru",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "faeline_stomp",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi.max - chi >= ( 2 + buff.power_strikes.up )",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies > 2",
								["action"] = "expel_harm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 & raid_event.adds.in > 20 || chi.max - chi >= 2 & active_enemies >= 2",
								["action"] = "chi_burst",
							}, -- [5]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "expel_harm",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies >= 5",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.chi_energy.stack > 30 - 5 * active_enemies & buff.storm_earth_and_fire.down & ( cooldown.rising_sun_kick.remains > 2 & cooldown.fists_of_fury.remains > 2 || cooldown.rising_sun_kick.remains < 3 & cooldown.fists_of_fury.remains > 3 & chi > 3 || cooldown.rising_sun_kick.remains > 3 & cooldown.fists_of_fury.remains < 3 & chi > 4 || chi.max - chi <= 1 & energy.time_to_max < 2 ) || buff.chi_energy.stack > 10 & fight_remains < 7",
								["action"] = "spinning_crane_kick",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "arcane_torrent",
							}, -- [10]
							{
								["interrupt"] = "1",
								["action"] = "flying_serpent_kick",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "tiger_palm",
								["enabled"] = true,
							}, -- [12]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "spear_hand_strike",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.invoke_xuen_the_white_tiger.enabled || cooldown.invoke_xuen_the_white_tiger.duration > fight_remains",
								["var_name"] = "hold_xuen",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.skyreach_exhaustion.remains < 1 & cooldown.rising_sun_kick.remains < 1",
								["var_name"] = "hold_tp_rsk",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || buff.storm_earth_and_fire.up & pet.xuen_the_white_tiger.active || fight_remains <= 30",
								["action"] = "potion",
								["description"] = "Potion",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Build Chi at the start of combat",
								["criteria"] = "time < 4 & chi < 5 & ! pet.xuen_the_white_tiger.active & ! talent.serenity.enabled",
								["list_name"] = "opener",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Use Trinkets (SEF)",
								["strict"] = 1,
								["criteria"] = "! talent.serenity.enabled",
								["list_name"] = "sef_trinkets",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.serenity.enabled",
								["list_name"] = "serenity_trinkets",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "faeline_stomp",
								["cycle_targets"] = 1,
								["description"] = "Prioritize Faeline Stomp if playing with Faeline Harmony",
								["criteria"] = "combo_strike & talent.faeline_harmony.enabled & debuff.fae_exposure_damage.remains < 1",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
								["description"] = "TP if not overcapping Chi or TotM",
								["criteria"] = "! buff.serenity.up & buff.teachings_of_the_monastery.stack < 3 & combo_strike & chi.max - chi >= ( 2 + buff.power_strikes.up ) & ( ! talent.invoke_xuen_the_white_tiger.enabled & ! talent.serenity.enabled || ( ( ! talent.skyreach.enabled & ! talent.skytouch.enabled ) || time > 5 || pet.xuen_the_white_tiger.active ) ) & ! variable.hold_tp_rsk",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.faeline_stomp.enabled & cooldown.faeline_stomp.remains & ( chi.max - chi >= 1 & active_enemies = 1 || chi.max - chi >= 2 & active_enemies >= 2 ) & ! talent.faeline_harmony.enabled",
								["action"] = "chi_burst",
								["description"] = "Use Chi Burst to reset Faeline Stomp",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Use Cooldowns",
								["strict"] = 1,
								["criteria"] = "! talent.serenity.enabled",
								["list_name"] = "cd_sef",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.serenity.enabled",
								["list_name"] = "cd_serenity",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Serenity Priority",
								["strict"] = 1,
								["criteria"] = "buff.serenity.up & buff.bloodlust.up",
								["list_name"] = "serenity_lust",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.serenity.up & active_enemies > 4",
								["list_name"] = "serenity_aoe",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.serenity.up & active_enemies = 4",
								["list_name"] = "serenity_4t",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.serenity.up & active_enemies = 3",
								["list_name"] = "serenity_3t",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.serenity.up & active_enemies = 2",
								["list_name"] = "serenity_2t",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.serenity.up & active_enemies = 1",
								["list_name"] = "serenity_st",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Default Priority",
								["strict"] = 1,
								["criteria"] = "active_enemies > 4",
								["list_name"] = "default_aoe",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies = 4",
								["list_name"] = "default_4t",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies = 3",
								["list_name"] = "default_3t",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies = 2",
								["list_name"] = "default_2t",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies = 1",
								["list_name"] = "default_st",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "fallthru",
							}, -- [24]
						},
						["serenity_trinkets"] = {
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled & buff.storm_earth_and_fire.up || boss & fight_remains < 30",
								["action"] = "horn_of_valor",
								["description"] = "Serenity Trinkets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( boss || target.time_to_die > 1 + cast_time ) & ( trinket.t1.is.manic_grieftorch & ! trinket.t2.has_use_buff || trinket.t2.is.manic_grieftorch & ! trinket.t1.has_use_buff )",
								["action"] = "manic_grieftorch",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled ) & ! buff.storm_earth_and_fire.up || boss & fight_remains < 25",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t1.has_use_buff & ! ( trinket.t1.is.horn_of_valor || trinket.t1.is.manic_grieftorch || trinket.t1.is.algethar_puzzle_box ) & buff.serenity.remains > 10 || boss & fight_remains < 30",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! trinket.t1.has_use_buff & ! ( trinket.t1.is.horn_of_valor || trinket.t1.is.manic_grieftorch || trinket.t1.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t2.has_use_buff & ! ( trinket.t2.is.horn_of_valor || trinket.t2.is.manic_grieftorch || trinket.t2.is.algethar_puzzle_box ) & buff.serenity.remains > 10 || boss & fight_remains < 30",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! trinket.t2.has_use_buff & ! ( trinket.t2.is.horn_of_valor || trinket.t2.is.manic_grieftorch || trinket.t2.is.algethar_puzzle_box ) & ( cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled ) || boss & fight_remains < 30",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > action_cooldown % 120 || action_cooldown <= 60 & variable.hold_xuen || ! talent.invoke_xuen_the_white_tiger.enabled",
								["action"] = "use_items",
							}, -- [8]
						},
					},
					["version"] = 20230807,
					["warnings"] = "The import for 'serenity_3t' required some automated changes.\nLine 8: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 9: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 11: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 16: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 22: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nThe import for 'serenity_st' required some automated changes.\nLine 6: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 7: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 14: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nThe import for 'cd_serenity' required some automated changes.\nLine 3: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 6: Converted 'talent.invokers_delight' to 'talent.invokers_delight.enabled' (1x).\nLine 6: Converted 'talent.drinking_horn_cover' to 'talent.drinking_horn_cover.enabled' (1x).\nLine 6: Converted 'talent.drinking_horn_cover' to 'talent.drinking_horn_cover.enabled' (1x).\nLine 6: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\n\nThe import for 'default_st' required some automated changes.\nLine 6: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\n\nThe import for 'default_3t' required some automated changes.\nLine 1: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 3: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 12: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 19: Converted 'talent.storm_earth_and_fire' to 'talent.storm_earth_and_fire.enabled' (1x).\nLine 19: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 19: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 22: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 23: Converted 'talent.storm_earth_and_fire' to 'talent.storm_earth_and_fire.enabled' (1x).\nLine 23: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\n\nThe import for 'default_aoe' required some automated changes.\nLine 2: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 7: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 11: Converted 'talent.whirling_dragon_punch' to 'talent.whirling_dragon_punch.enabled' (1x).\nLine 18: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 18: Converted 'talent.crane_vortex' to 'talent.crane_vortex.enabled' (1x).\nLine 19: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 24: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\n\nThe import for 'bdb_setup' required some automated changes.\nLine 1: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 4: Converted 'talent.whirling_dragon_punch' to 'talent.whirling_dragon_punch.enabled' (1x).\nLine 5: Converted 'talent.whirling_dragon_punch' to 'talent.whirling_dragon_punch.enabled' (1x).\nLine 6: Converted 'talent.whirling_dragon_punch' to 'talent.whirling_dragon_punch.enabled' (1x).\n\nThe import for 'serenity_4t' required some automated changes.\nLine 4: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 7: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 10: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 15: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 21: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nThe import for 'serenity_aoe' required some automated changes.\nLine 2: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 7: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 10: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 16: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 22: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nThe import for 'default_2t' required some automated changes.\nLine 1: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 2: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 14: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 17: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 17: Converted 'talent.xuens_battlegear' to 'talent.xuens_battlegear.enabled' (1x).\nLine 24: Converted 'talent.storm_earth_and_fire' to 'talent.storm_earth_and_fire.enabled' (1x).\nLine 24: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\n\nThe import for 'serenity_trinkets' required some automated changes.\nLine 1: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 2: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 2: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 2: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.is.horn_of_valor' to 'trinket.t1.is.horn_of_valor' (1x).\nLine 4: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 4: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 5: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.is.horn_of_valor' to 'trinket.t1.is.horn_of_valor' (1x).\nLine 5: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 5: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 5: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 5: Converted operations in '!trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to '!trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.is.horn_of_valor' to 'trinket.t2.is.horn_of_valor' (1x).\nLine 6: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 6: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 7: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.2.is.horn_of_valor' to 'trinket.t2.is.horn_of_valor' (1x).\nLine 7: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 7: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 7: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 7: Converted operations in '!trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to '!trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\nLine 8: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 8: Converted operations in 'cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled' to 'cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled'.\n\nThe import for 'st_cleave' required some automated changes.\nLine 1: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 3: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 5: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 8: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 11: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 11: Converted 'talent.xuens_battlegear' to 'talent.xuens_battlegear.enabled' (1x).\n\nThe import for 'cd_sef' required some automated changes.\nLine 3: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 4: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 5: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 7: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\nLine 9: Converted 'talent.bonedust_brew' to 'talent.bonedust_brew.enabled' (1x).\n\nThe import for 'sef_trinkets' required some automated changes.\nLine 1: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 2: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 2: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 2: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.is.horn_of_valor' to 'trinket.t1.is.horn_of_valor' (1x).\nLine 4: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 4: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 4: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 4: Converted operations in 'trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||action_cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to 'trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||action_cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\nLine 5: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.is.horn_of_valor' to 'trinket.t1.is.horn_of_valor' (1x).\nLine 5: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 5: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 5: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 5: Converted operations in '!trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to '!trinket.t1.has_use_buff&!(trinket.t1.is.horn_of_valor||trinket.t1.is.manic_grieftorch||trinket.t1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.is.horn_of_valor' to 'trinket.t2.is.horn_of_valor' (1x).\nLine 6: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 6: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 6: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 6: Converted operations in 'trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||action_cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to 'trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||action_cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\nLine 7: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.2.is.horn_of_valor' to 'trinket.t2.is.horn_of_valor' (1x).\nLine 7: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 7: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 7: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 7: Converted operations in '!trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30' to '!trinket.t2.has_use_buff&!(trinket.t2.is.horn_of_valor||trinket.t2.is.manic_grieftorch||trinket.t2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>action_cooldown%120||action_cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger.enabled)||boss&fight_remains<30'.\n\nThe import for 'default' required some automated changes.\nLine 2: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 5: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 6: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 7: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 8: Converted 'talent.faeline_harmony' to 'talent.faeline_harmony.enabled' (1x).\nLine 9: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 9: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 9: Converted 'talent.skyreach' to 'talent.skyreach.enabled' (1x).\nLine 9: Converted 'talent.skytouch' to 'talent.skytouch.enabled' (1x).\nLine 10: Converted 'talent.faeline_stomp' to 'talent.faeline_stomp.enabled' (1x).\nLine 10: Converted 'talent.faeline_harmony' to 'talent.faeline_harmony.enabled' (1x).\nLine 11: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\nLine 12: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 3: Converted 'talent.faeline_stomp' to 'talent.faeline_stomp.enabled' (1x).\n\nThe import for 'serenity_2t' required some automated changes.\nLine 8: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 9: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 11: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 14: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 19: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nThe import for 'fallthru' required some automated changes.\nLine 1: Converted 'talent.serenity' to 'talent.serenity.enabled' (1x).\n\nThe import for 'serenity_lust' required some automated changes.\nLine 5: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 11: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\n\nThe import for 'default_4t' required some automated changes.\nLine 2: Converted 'talent.thunderfist' to 'talent.thunderfist.enabled' (1x).\nLine 7: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\n\nImported 21 action lists.\n",
					["author"] = "SimC",
					["profile"] = "actions.precombat+=/summon_white_tiger_statue\nactions.precombat+=/expel_harm,if=chi<chi.max\nactions.precombat+=/chi_burst,if=!talent.faeline_stomp\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=spear_hand_strike\nactions+=/variable,name=hold_xuen,op=set,value=!talent.invoke_xuen_the_white_tiger||cooldown.invoke_xuen_the_white_tiger.duration>fight_remains\nactions+=/variable,name=hold_tp_rsk,op=set,value=!debuff.skyreach_exhaustion.remains<1&cooldown.rising_sun_kick.remains<1\n# Potion\nactions+=/potion,if=buff.serenity.up||buff.storm_earth_and_fire.up&pet.xuen_the_white_tiger.active||fight_remains<=30\n# Build Chi at the start of combat\nactions+=/call_action_list,name=opener,if=time<4&chi<5&!pet.xuen_the_white_tiger.active&!talent.serenity\n# Use Trinkets (SEF)\nactions+=/call_action_list,name=sef_trinkets,strict=1,if=!talent.serenity\nactions+=/call_action_list,name=serenity_trinkets,strict=1,if=talent.serenity\n# Prioritize Faeline Stomp if playing with Faeline Harmony\nactions+=/faeline_stomp,cycle_targets=1,if=combo_strike&talent.faeline_harmony&debuff.fae_exposure_damage.remains<1\n# TP if not overcapping Chi or TotM\nactions+=/tiger_palm,cycle_targets=1,if=!buff.serenity.up&buff.teachings_of_the_monastery.stack<3&combo_strike&chi.max-chi>=(2+buff.power_strikes.up)&(!talent.invoke_xuen_the_white_tiger&!talent.serenity||((!talent.skyreach&!talent.skytouch)||time>5||pet.xuen_the_white_tiger.active))&!variable.hold_tp_rsk\n# Use Chi Burst to reset Faeline Stomp\nactions+=/chi_burst,if=talent.faeline_stomp&cooldown.faeline_stomp.remains&(chi.max-chi>=1&active_enemies=1||chi.max-chi>=2&active_enemies>=2)&!talent.faeline_harmony\n# Use Cooldowns\nactions+=/call_action_list,name=cd_sef,strict=1,if=!talent.serenity\nactions+=/call_action_list,name=cd_serenity,strict=1,if=talent.serenity\n# Serenity Priority\nactions+=/call_action_list,name=serenity_lust,strict=1,if=buff.serenity.up&buff.bloodlust.up\nactions+=/call_action_list,name=serenity_aoe,strict=1,if=buff.serenity.up&active_enemies>4\nactions+=/call_action_list,name=serenity_4t,strict=1,if=buff.serenity.up&active_enemies=4\nactions+=/call_action_list,name=serenity_3t,strict=1,if=buff.serenity.up&active_enemies=3\nactions+=/call_action_list,name=serenity_2t,strict=1,if=buff.serenity.up&active_enemies=2\nactions+=/call_action_list,name=serenity_st,strict=1,if=buff.serenity.up&active_enemies=1\n# Default Priority\nactions+=/call_action_list,name=default_aoe,strict=1,if=active_enemies>4\nactions+=/call_action_list,name=default_4t,strict=1,if=active_enemies=4\nactions+=/call_action_list,name=default_3t,strict=1,if=active_enemies=3\nactions+=/call_action_list,name=default_2t,strict=1,if=active_enemies=2\nactions+=/call_action_list,name=default_st,strict=1,if=active_enemies=1\nactions+=/call_action_list,name=fallthru\n\n# >4 Targets\nactions.default_aoe+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&spinning_crane_kick.max\nactions.default_aoe+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist\nactions.default_aoe+=/whirling_dragon_punch,if=active_enemies>8\nactions.default_aoe+=/fists_of_fury,cycle_targets=1\nactions.default_aoe+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike&spinning_crane_kick.max\nactions.default_aoe+=/rising_sun_kick,cycle_targets=1,if=buff.bonedust_brew.up&buff.pressure_point.up&set_bonus.tier30_2pc\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.default_aoe+=/whirling_dragon_punch,if=active_enemies>=5\nactions.default_aoe+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up&set_bonus.tier30_2pc\nactions.default_aoe+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.default_aoe+=/rising_sun_kick,cycle_targets=1,if=talent.whirling_dragon_punch&cooldown.whirling_dragon_punch.remains<3&cooldown.fists_of_fury.remains>3&!buff.kicks_of_flowing_momentum.up\nactions.default_aoe+=/expel_harm,if=chi=1&(!cooldown.rising_sun_kick.remains||!cooldown.strike_of_the_windlord.remains)||chi=2&!cooldown.fists_of_fury.remains\nactions.default_aoe+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains<5&buff.chi_energy.stack>10\nactions.default_aoe+=/chi_burst,if=buff.bloodlust.up&chi<5\nactions.default_aoe+=/chi_burst,if=chi<5&energy<50\nactions.default_aoe+=/spinning_crane_kick,if=combo_strike&(cooldown.fists_of_fury.remains>3||chi>2)&spinning_crane_kick.max&buff.bloodlust.up\nactions.default_aoe+=/spinning_crane_kick,if=combo_strike&(cooldown.fists_of_fury.remains>3||chi>2)&spinning_crane_kick.max&buff.invokers_delight.up\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=talent.shadowboxing_treads&combo_strike&set_bonus.tier30_2pc&!buff.bonedust_brew.up&active_enemies<15&!talent.crane_vortex\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=talent.shadowboxing_treads&combo_strike&set_bonus.tier30_2pc&!buff.bonedust_brew.up&active_enemies<8\nactions.default_aoe+=/spinning_crane_kick,if=combo_strike&(cooldown.fists_of_fury.remains>3||chi>4)&spinning_crane_kick.max\nactions.default_aoe+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.default_aoe+=/strike_of_the_windlord,cycle_targets=1\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=talent.shadowboxing_treads&combo_strike&!spinning_crane_kick.max\nactions.default_aoe+=/chi_burst,if=chi.max-chi>=1&active_enemies=1&raid_event.adds.in>20||chi.max-chi>=2\n\n# 4 Targets\nactions.default_4t+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&spinning_crane_kick.max\nactions.default_4t+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist\nactions.default_4t+=/fists_of_fury,cycle_targets=1\nactions.default_4t+=/rising_sun_kick,cycle_targets=1,if=buff.bonedust_brew.up&buff.pressure_point.up&set_bonus.tier30_2pc\nactions.default_4t+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike&spinning_crane_kick.max\nactions.default_4t+=/rising_sun_kick,cycle_targets=1,if=!buff.bonedust_brew.up&buff.pressure_point.up&cooldown.fists_of_fury.remains>5\nactions.default_4t+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.default_4t+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.default_4t+=/expel_harm,if=chi=1&(!cooldown.rising_sun_kick.remains||!cooldown.strike_of_the_windlord.remains)||chi=2&!cooldown.fists_of_fury.remains\nactions.default_4t+=/spinning_crane_kick,if=combo_strike&cooldown.fists_of_fury.remains>3&buff.chi_energy.stack>10\nactions.default_4t+=/blackout_kick,cycle_targets=1,if=combo_strike&set_bonus.tier30_2pc\nactions.default_4t+=/chi_burst,if=buff.bloodlust.up&chi<5\nactions.default_4t+=/chi_burst,if=chi<5&energy<50\nactions.default_4t+=/spinning_crane_kick,if=combo_strike&(cooldown.fists_of_fury.remains>3||chi>4)&spinning_crane_kick.max\nactions.default_4t+=/whirling_dragon_punch\nactions.default_4t+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.default_4t+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.default_4t+=/strike_of_the_windlord,cycle_targets=1\nactions.default_4t+=/spinning_crane_kick,if=combo_strike&(cooldown.fists_of_fury.remains>3||chi>4)\nactions.default_4t+=/blackout_kick,cycle_targets=1,if=combo_strike\n\n# 3 Targets\nactions.default_3t+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.default_3t+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.default_3t+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist&(cooldown.invoke_xuen_the_white_tiger.remains>20||fight_remains<5)\nactions.default_3t+=/fists_of_fury,cycle_targets=1\nactions.default_3t+=/rising_sun_kick,cycle_targets=1,if=buff.bonedust_brew.up&buff.pressure_point.up&set_bonus.tier30_2pc\nactions.default_3t+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike\nactions.default_3t+=/rising_sun_kick,cycle_targets=1,if=!buff.bonedust_brew.up&buff.pressure_point.up\nactions.default_3t+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.default_3t+=/expel_harm,if=chi=1&(!cooldown.rising_sun_kick.remains||!cooldown.strike_of_the_windlord.remains)||chi=2&!cooldown.fists_of_fury.remains\nactions.default_3t+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=2\nactions.default_3t+=/strike_of_the_windlord,cycle_targets=1\nactions.default_3t+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.up&(talent.shadowboxing_treads||cooldown.rising_sun_kick.remains>1)\nactions.default_3t+=/whirling_dragon_punch\nactions.default_3t+=/chi_burst,if=buff.bloodlust.up&chi<5\nactions.default_3t+=/chi_burst,if=chi<5&energy<50\nactions.default_3t+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.default_3t+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains<3&buff.chi_energy.stack>15\nactions.default_3t+=/rising_sun_kick,cycle_targets=1,if=cooldown.fists_of_fury.remains>4&chi>3\nactions.default_3t+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&cooldown.rising_sun_kick.remains&cooldown.fists_of_fury.remains&chi>4&((talent.storm_earth_and_fire&!talent.bonedust_brew)||(talent.serenity))\nactions.default_3t+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains\nactions.default_3t+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.default_3t+=/blackout_kick,cycle_targets=1,if=combo_strike&talent.shadowboxing_treads&!spinning_crane_kick.max\nactions.default_3t+=/spinning_crane_kick,cycle_targets=1,if=(combo_strike&chi>5&talent.storm_earth_and_fire||combo_strike&chi>4&talent.serenity)\n\n# 2 Targets\nactions.default_2t+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.default_2t+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist&(cooldown.invoke_xuen_the_white_tiger.remains>20||fight_remains<5)\nactions.default_2t+=/rising_sun_kick,if=!cooldown.fists_of_fury.remains\nactions.default_2t+=/fists_of_fury,cycle_targets=1\nactions.default_2t+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.default_2t+=/rising_sun_kick,cycle_targets=1,if=buff.kicks_of_flowing_momentum.up||buff.pressure_point.up\nactions.default_2t+=/expel_harm,if=chi=1&(!cooldown.rising_sun_kick.remains||!cooldown.strike_of_the_windlord.remains)||chi=2&!cooldown.fists_of_fury.remains\nactions.default_2t+=/chi_burst,if=buff.bloodlust.up&chi<5\nactions.default_2t+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=2\nactions.default_2t+=/blackout_kick,cycle_targets=1,if=buff.pressure_point.remains&chi>2&prev.rising_sun_kick\nactions.default_2t+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.default_2t+=/chi_burst,if=chi<5&energy<50\nactions.default_2t+=/strike_of_the_windlord,cycle_targets=1\nactions.default_2t+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.up&(talent.shadowboxing_treads||cooldown.rising_sun_kick.remains>1)\nactions.default_2t+=/whirling_dragon_punch\nactions.default_2t+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.default_2t+=/rising_sun_kick,cycle_targets=1,if=!talent.shadowboxing_treads&cooldown.fists_of_fury.remains>4&talent.xuens_battlegear\nactions.default_2t+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.rising_sun_kick.remains&cooldown.fists_of_fury.remains&(!buff.bonedust_brew.up||spinning_crane_kick.modifier<1.5)\nactions.default_2t+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.default_2t+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike&spinning_crane_kick.modifier>=2.7\nactions.default_2t+=/rising_sun_kick,cycle_targets=1\nactions.default_2t+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.default_2t+=/faeline_stomp,if=combo_strike\nactions.default_2t+=/spinning_crane_kick,cycle_targets=1,if=(combo_strike&chi>5&talent.storm_earth_and_fire||combo_strike&chi>4&talent.serenity)\n\n# 1 Target\nactions.default_st+=/rising_sun_kick,if=!cooldown.fists_of_fury.remains\nactions.default_st+=/fists_of_fury,if=!buff.pressure_point.up&debuff.skyreach_exhaustion.remains<55\nactions.default_st+=/faeline_stomp,if=debuff.skyreach_exhaustion.remains<1&debuff.fae_exposure_damage.remains<3\nactions.default_st+=/rising_sun_kick,if=buff.pressure_point.up||debuff.skyreach_exhaustion.remains>55\nactions.default_st+=/blackout_kick,if=buff.pressure_point.remains&chi>2&prev.rising_sun_kick\nactions.default_st+=/strike_of_the_windlord,if=talent.thunderfist&(cooldown.invoke_xuen_the_white_tiger.remains>20||fight_remains<5)\nactions.default_st+=/rising_sun_kick,if=buff.kicks_of_flowing_momentum.up||buff.pressure_point.up||debuff.skyreach_exhaustion.remains>55\nactions.default_st+=/blackout_kick,if=buff.teachings_of_the_monastery.stack=3\nactions.default_st+=/fists_of_fury\nactions.default_st+=/rising_sun_kick\nactions.default_st+=/expel_harm,if=chi=1&(!cooldown.rising_sun_kick.remains||!cooldown.strike_of_the_windlord.remains)||chi=2&!cooldown.fists_of_fury.remains\nactions.default_st+=/chi_burst,if=buff.bloodlust.up&chi<5\nactions.default_st+=/blackout_kick,if=buff.teachings_of_the_monastery.stack=2&debuff.skyreach_exhaustion.remains>1\nactions.default_st+=/chi_burst,if=chi<5&energy<50\nactions.default_st+=/strike_of_the_windlord,if=debuff.skyreach_exhaustion.remains>30||fight_remains<5\nactions.default_st+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.default_st+=/blackout_kick,if=buff.teachings_of_the_monastery.up&cooldown.rising_sun_kick.remains>1\nactions.default_st+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike&spinning_crane_kick.modifier>=2.7\nactions.default_st+=/whirling_dragon_punch\nactions.default_st+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.default_st+=/blackout_kick,if=combo_strike\n\n# Bonedust Brew Setup\nactions.bdb_setup+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist&active_enemies>3\nactions.bdb_setup+=/bonedust_brew,if=spinning_crane_kick.max&chi>=4\nactions.bdb_setup+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2&buff.storm_earth_and_fire.up\nactions.bdb_setup+=/blackout_kick,cycle_targets=1,if=combo_strike&!talent.whirling_dragon_punch&!spinning_crane_kick.max\nactions.bdb_setup+=/rising_sun_kick,cycle_targets=1,if=combo_strike&chi>=5&talent.whirling_dragon_punch\nactions.bdb_setup+=/rising_sun_kick,cycle_targets=1,if=combo_strike&active_enemies>=2&talent.whirling_dragon_punch\n\n# Storm, Earth and Fire Cooldowns\nactions.cd_sef+=/call_action_list,name=sef_trinkets\nactions.cd_sef+=/summon_white_tiger_statue,if=pet.xuen_the_white_tiger.active\nactions.cd_sef+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen&fight_remains>25&talent.bonedust_brew&cooldown.bonedust_brew.remains<=5&(active_enemies<3&chi>=3||active_enemies>=3&chi>=2)||boss&fight_remains<25\nactions.cd_sef+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen&fight_remains>25&!talent.bonedust_brew&(cooldown.rising_sun_kick.remains<2)&chi>=3\nactions.cd_sef+=/storm_earth_and_fire,if=talent.bonedust_brew&(fight_remains<30&cooldown.bonedust_brew.remains<4&chi>=4||buff.bonedust_brew.up||!spinning_crane_kick.max&active_enemies>=3&cooldown.bonedust_brew.remains<=2&chi>=2)&(pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>cooldown.storm_earth_and_fire.full_recharge_time)\nactions.cd_sef+=/bonedust_brew,if=(!buff.bonedust_brew.up&buff.storm_earth_and_fire.up&buff.storm_earth_and_fire.remains<11&spinning_crane_kick.max)||(!buff.bonedust_brew.up&fight_remains<30&fight_remains>10&spinning_crane_kick.max&chi>=4)||fight_remains<10||((talent.skyreach.enabled||talent.skytouch.enabled)&!debuff.skyreach_exhaustion.up&active_enemies>=4&spinning_crane_kick.modifier>=2)||(pet.xuen_the_white_tiger.active&spinning_crane_kick.max&active_enemies>=4)\nactions.cd_sef+=/call_action_list,name=bdb_setup,if=!buff.bonedust_brew.up&talent.bonedust_brew&cooldown.bonedust_brew.remains<=2&(fight_remains>60&(cooldown.storm_earth_and_fire.charges>0||cooldown.storm_earth_and_fire.remains>10)&(pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>10||variable.hold_xuen)||((pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>13)&(cooldown.storm_earth_and_fire.charges>0||cooldown.storm_earth_and_fire.remains>13||buff.storm_earth_and_fire.up)))\nactions.cd_sef+=/storm_earth_and_fire,if=boss&fight_remains<20||(cooldown.storm_earth_and_fire.charges=2&cooldown.invoke_xuen_the_white_tiger.remains>cooldown.storm_earth_and_fire.full_recharge_time)&cooldown.fists_of_fury.remains<=9&chi>=2&cooldown.whirling_dragon_punch.remains<=12\nactions.cd_sef+=/storm_earth_and_fire,if=!talent.bonedust_brew&(pet.xuen_the_white_tiger.active||fight_remains>15&cooldown.storm_earth_and_fire.full_recharge_time<cooldown.invoke_xuen_the_white_tiger.remains)\n## actions.cd_sef+=/touch_of_death,cycle_targets=1,if=!boss&combo_strike&target.health<health\n## actions.cd_sef+=/touch_of_death,cycle_targets=1,if=!boss&combo_strike&(target.time_to_die>60||debuff.bonedust_brew_debuff.up||fight_remains<10)\nactions.cd_sef+=/touch_of_death,cycle_targets=1,if=combo_strike\nactions.cd_sef+=/touch_of_karma,cycle_targets=1,if=fight_remains>90||pet.xuen_the_white_tiger.active||variable.hold_xuen||boss&fight_remains<16\nactions.cd_sef+=/touch_of_karma,if=fight_remains>159||variable.hold_xuen\nactions.cd_sef+=/blood_fury,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<20\nactions.cd_sef+=/berserking,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<15\nactions.cd_sef+=/lights_judgment\nactions.cd_sef+=/fireblood,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<10\nactions.cd_sef+=/ancestral_call,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<20\nactions.cd_sef+=/bag_of_tricks,if=buff.storm_earth_and_fire.down\n\n# Serenity Cooldowns\nactions.cd_serenity+=/call_action_list,name=serenity_trinkets\nactions.cd_serenity+=/summon_white_tiger_statue,if=!cooldown.invoke_xuen_the_white_tiger.remains||active_enemies>4||cooldown.invoke_xuen_the_white_tiger.remains>50||boss&fight_remains<=30\nactions.cd_serenity+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen&talent.bonedust_brew&cooldown.bonedust_brew.remains<=5&target.time_to_die>25||buff.bloodlust.up||boss&fight_remains<25\nactions.cd_serenity+=/invoke_xuen_the_white_tiger,if=target.time_to_die>25&fight_remains>120||fight_remains<60&(debuff.skyreach_exhaustion.remains<2||debuff.skyreach_exhaustion.remains>55)&!cooldown.serenity.remains&active_enemies<3||buff.bloodlust.up||boss&fight_remains<23\nactions.cd_serenity+=/bonedust_brew,if=!buff.bonedust_brew.up&(cooldown.serenity.up||cooldown.serenity.remains>15||boss&fight_remains<30&fight_remains>10)||boss&fight_remains<10\nactions.cd_serenity+=/serenity,if=buff.invokers_delight.up||!talent.invokers_delight||variable.hold_xuen&(talent.drinking_horn_cover&fight_remains>110||!talent.drinking_horn_cover&fight_remains>105)||!talent.invoke_xuen_the_white_tiger||boss&fight_remains<15\n## actions.cd_serenity+=/touch_of_death,cycle_targets=1,if=!boss&combo_strike&target.health<health\n## actions.cd_serenity+=/touch_of_death,cycle_targets=1,if=!boss&combo_strike&(target.time_to_die>60||debuff.bonedust_brew_debuff.up||fight_remains<10)\nactions.cd_serenity+=/touch_of_death,cycle_targets=1,if=combo_strike&!buff.serenity.up&(target.health.current<health||buff.hidden_masters_forbidden_touch.up&(buff.hidden_masters_forbidden_touch.remains<2||buff.hidden_masters_forbidden_touch.remains>target.time_to_die)||target.time_to_die>60||debuff.bonedust_brew_debuff.up||boss&fight_remains<10)\nactions.cd_serenity+=/touch_of_karma,if=fight_remains>90||boss&fight_remains<10\nactions.cd_serenity+=/blood_fury,if=buff.serenity.up||boss&fight_remains<20\nactions.cd_serenity+=/berserking,if=buff.serenity.up||boss&fight_remains<20\nactions.cd_serenity+=/lights_judgment\nactions.cd_serenity+=/fireblood,if=buff.serenity.up||boss&fight_remains<20\nactions.cd_serenity+=/ancestral_call,if=buff.serenity.up||boss&fight_remains<20\nactions.cd_serenity+=/bag_of_tricks,if=buff.serenity.up||boss&fight_remains<20\n\n# Fallthru\nactions.fallthru+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&energy.time_to_max>execute_time-1&cooldown.rising_sun_kick.remains>execute_time||buff.the_emperors_capacitor.stack>14&(cooldown.serenity.remains<5&talent.serenity||boss&fight_remains<5)\nactions.fallthru+=/faeline_stomp,if=combo_strike\nactions.fallthru+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=(2+buff.power_strikes.up)\nactions.fallthru+=/expel_harm,if=chi.max-chi>=1&active_enemies>2\nactions.fallthru+=/chi_burst,if=chi.max-chi>=1&active_enemies=1&raid_event.adds.in>20||chi.max-chi>=2&active_enemies>=2\nactions.fallthru+=/chi_wave\nactions.fallthru+=/expel_harm,if=chi.max-chi>=1\nactions.fallthru+=/blackout_kick,cycle_targets=1,if=combo_strike&active_enemies>=5\nactions.fallthru+=/spinning_crane_kick,if=combo_strike&buff.chi_energy.stack>30-5*active_enemies&buff.storm_earth_and_fire.down&(cooldown.rising_sun_kick.remains>2&cooldown.fists_of_fury.remains>2||cooldown.rising_sun_kick.remains<3&cooldown.fists_of_fury.remains>3&chi>3||cooldown.rising_sun_kick.remains>3&cooldown.fists_of_fury.remains<3&chi>4||chi.max-chi<=1&energy.time_to_max<2)||buff.chi_energy.stack>10&fight_remains<7\nactions.fallthru+=/arcane_torrent,if=chi.max-chi>=1\nactions.fallthru+=/flying_serpent_kick,interrupt=1\nactions.fallthru+=/tiger_palm\n\n# Opener\nactions.opener+=/summon_white_tiger_statue\nactions.opener+=/expel_harm,if=talent.chi_burst.enabled&chi.max-chi>=3\nactions.opener+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=(2+buff.power_strikes.up)\nactions.opener+=/expel_harm,if=talent.chi_burst.enabled&chi=3\nactions.opener+=/chi_wave,if=chi.max-chi=2\nactions.opener+=/expel_harm\nactions.opener+=/chi_burst,if=chi>1&chi.max-chi>=2\n\n# Serenity Lust\nactions.serenity_lust+=/faeline_stomp,if=debuff.fae_exposure_damage.remains<1\nactions.serenity_lust+=/fists_of_fury,cycle_targets=1,if=buff.serenity.remains<1\nactions.serenity_lust+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.teachings_of_the_monastery.stack=3&buff.teachings_of_the_monastery.remains<1\nactions.serenity_lust+=/rising_sun_kick,cycle_targets=1\nactions.serenity_lust+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist\nactions.serenity_lust+=/fists_of_fury,if=buff.invokers_delight.up,interrupt=1,interrupt_if=buff.serenity.remains>=1&buff.invokers_delight.up\n## actions.serenity_lust+=/fists_of_fury_cancel\nactions.serenity_lust+=/blackout_kick,cycle_targets=1,if=combo_strike&set_bonus.tier30_2pc\nactions.serenity_lust+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.serenity_lust+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.serenity_lust+=/whirling_dragon_punch\nactions.serenity_lust+=/tiger_palm,cycle_targets=1,if=talent.teachings_of_the_monastery&buff.teachings_of_the_monastery.stack<3\n\n# Serenity >4 Targets\nactions.serenity_aoe+=/faeline_stomp,if=debuff.fae_exposure_damage.remains<1\nactions.serenity_aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&!spinning_crane_kick.max&talent.shadowboxing_treads\nactions.serenity_aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.teachings_of_the_monastery.stack=3&buff.teachings_of_the_monastery.remains<1\nactions.serenity_aoe+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.serenity_aoe+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up&set_bonus.tier30_2pc\nactions.serenity_aoe+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.serenity_aoe+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist&buff.call_to_dominance.up&debuff.skyreach_exhaustion.remains>buff.call_to_dominance.remains&active_enemies<10\nactions.serenity_aoe+=/faeline_stomp,if=debuff.fae_exposure_damage.remains<2\nactions.serenity_aoe+=/fists_of_fury,cycle_targets=1,if=buff.invokers_delight.up,interrupt=1\n## actions.serenity_aoe+=/fists_of_fury_cancel,cycle_targets=1\nactions.serenity_aoe+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist\nactions.serenity_aoe+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.serenity_aoe+=/blackout_kick,cycle_targets=1,if=active_enemies<6&combo_strike&set_bonus.tier30_2pc\nactions.serenity_aoe+=/spinning_crane_kick,if=combo_strike&spinning_crane_kick.max\nactions.serenity_aoe+=/tiger_palm,cycle_targets=1,if=(talent.skyreach.enabled||talent.skytouch.enabled)&!debuff.skyreach_exhaustion.up&combo_strike&active_enemies=5\nactions.serenity_aoe+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.serenity_aoe+=/blackout_kick,cycle_targets=1,if=talent.shadowboxing_treads&active_enemies>=3&combo_strike\nactions.serenity_aoe+=/strike_of_the_windlord,cycle_targets=1\nactions.serenity_aoe+=/spinning_crane_kick,if=combo_strike\nactions.serenity_aoe+=/whirling_dragon_punch\nactions.serenity_aoe+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.serenity_aoe+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.serenity_aoe+=/tiger_palm,cycle_targets=1,if=talent.teachings_of_the_monastery&buff.teachings_of_the_monastery.stack<3\n\n# Serenity 4 Targets\nactions.serenity_4t+=/faeline_stomp,if=debuff.fae_exposure_damage.remains<1\nactions.serenity_4t+=/tiger_palm,cycle_targets=1,if=(talent.skyreach.enabled||talent.skytouch.enabled)&!debuff.skyreach_exhaustion.up&combo_strike\nactions.serenity_4t+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.teachings_of_the_monastery.stack=3&buff.teachings_of_the_monastery.remains<1\nactions.serenity_4t+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up&!talent.bonedust_brew\nactions.serenity_4t+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up&set_bonus.tier30_2pc\nactions.serenity_4t+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.serenity_4t+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist&buff.call_to_dominance.up&debuff.skyreach_exhaustion.remains>buff.call_to_dominance.remains\nactions.serenity_4t+=/faeline_stomp,if=debuff.fae_exposure_damage.remains<2\nactions.serenity_4t+=/fists_of_fury,cycle_targets=1,if=buff.invokers_delight.up,interrupt=1\n## actions.serenity_4t+=/fists_of_fury_cancel,cycle_targets=1\nactions.serenity_4t+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist\nactions.serenity_4t+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.serenity_4t+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up\nactions.serenity_4t+=/blackout_kick,cycle_targets=1,if=combo_strike&set_bonus.tier30_2pc\nactions.serenity_4t+=/spinning_crane_kick,if=combo_strike&spinning_crane_kick.max\nactions.serenity_4t+=/blackout_kick,cycle_targets=1,if=talent.shadowboxing_treads&combo_strike\nactions.serenity_4t+=/strike_of_the_windlord,cycle_targets=1\nactions.serenity_4t+=/spinning_crane_kick,if=combo_strike\nactions.serenity_4t+=/whirling_dragon_punch\nactions.serenity_4t+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.serenity_4t+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.serenity_4t+=/tiger_palm,cycle_targets=1,if=talent.teachings_of_the_monastery&buff.teachings_of_the_monastery.stack<3\n\n# Serenity 3 Targets\nactions.serenity_3t+=/faeline_stomp,if=debuff.fae_exposure_damage.remains<1\nactions.serenity_3t+=/tiger_palm,cycle_targets=1,if=(talent.skyreach.enabled||talent.skytouch.enabled)&!debuff.skyreach_exhaustion.up&combo_strike\nactions.serenity_3t+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.teachings_of_the_monastery.stack=3&buff.teachings_of_the_monastery.remains<1\nactions.serenity_3t+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up\nactions.serenity_3t+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up&set_bonus.tier30_2pc\nactions.serenity_3t+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.serenity_3t+=/faeline_stomp,if=debuff.fae_exposure_damage.remains<2\nactions.serenity_3t+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist&buff.call_to_dominance.up&debuff.skyreach_exhaustion.remains>buff.call_to_dominance.remains\nactions.serenity_3t+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist&debuff.skyreach_exhaustion.remains>55\nactions.serenity_3t+=/fists_of_fury,cycle_targets=1,if=buff.invokers_delight.up,interrupt=1\n## actions.serenity_3t+=/fists_of_fury_cancel,cycle_targets=1\nactions.serenity_3t+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist\nactions.serenity_3t+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&spinning_crane_kick.max\nactions.serenity_3t+=/blackout_kick,cycle_targets=1,if=combo_strike&set_bonus.tier30_2pc\nactions.serenity_3t+=/spinning_crane_kick,if=combo_strike\nactions.serenity_3t+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.teachings_of_the_monastery.stack=2\nactions.serenity_3t+=/blackout_kick,cycle_targets=1,if=talent.shadowboxing_treads&combo_strike\nactions.serenity_3t+=/strike_of_the_windlord,cycle_targets=1\nactions.serenity_3t+=/spinning_crane_kick,if=combo_strike\nactions.serenity_3t+=/whirling_dragon_punch\nactions.serenity_3t+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.serenity_3t+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.serenity_3t+=/tiger_palm,cycle_targets=1,if=talent.teachings_of_the_monastery&buff.teachings_of_the_monastery.stack<3\n\n# Serenity 2 Targets\nactions.serenity_2t+=/faeline_stomp,if=debuff.fae_exposure_damage.remains<2&!debuff.skyreach_exhaustion.remains<2&!debuff.skyreach_exhaustion.remains\nactions.serenity_2t+=/tiger_palm,cycle_targets=1,if=(talent.skyreach.enabled||talent.skytouch.enabled)&!debuff.skyreach_exhaustion.up&combo_strike\nactions.serenity_2t+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.teachings_of_the_monastery.stack=3&buff.teachings_of_the_monastery.remains<1\nactions.serenity_2t+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up\nactions.serenity_2t+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up&set_bonus.tier30_2pc\nactions.serenity_2t+=/rising_sun_kick,cycle_targets=1,if=set_bonus.tier30_2pc\nactions.serenity_2t+=/faeline_stomp,if=debuff.fae_exposure_damage.remains<2\nactions.serenity_2t+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist&buff.call_to_dominance.up&debuff.skyreach_exhaustion.remains>buff.call_to_dominance.remains\nactions.serenity_2t+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist&debuff.skyreach_exhaustion.remains>55\nactions.serenity_2t+=/fists_of_fury,cycle_targets=1,if=buff.invokers_delight.up,interrupt=1\n## actions.serenity_2t+=/fists_of_fury_cancel,cycle_targets=1\nactions.serenity_2t+=/strike_of_the_windlord,cycle_targets=1,if=talent.thunderfist\nactions.serenity_2t+=/blackout_kick,cycle_targets=1,if=combo_strike&set_bonus.tier30_2pc\nactions.serenity_2t+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.teachings_of_the_monastery.stack=2\nactions.serenity_2t+=/blackout_kick,cycle_targets=1,if=cooldown.fists_of_fury.remains>5&talent.shadowboxing_treads&buff.teachings_of_the_monastery.stack=1&combo_strike\nactions.serenity_2t+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.serenity_2t+=/spinning_crane_kick,if=combo_strike\nactions.serenity_2t+=/whirling_dragon_punch\nactions.serenity_2t+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.serenity_2t+=/tiger_palm,cycle_targets=1,if=talent.teachings_of_the_monastery&buff.teachings_of_the_monastery.stack<3\n\n# Serenity 1 Target\nactions.serenity_st+=/faeline_stomp,if=debuff.fae_exposure_damage.remains<2&!debuff.skyreach_exhaustion.remains\nactions.serenity_st+=/tiger_palm,if=(talent.skyreach.enabled||talent.skytouch.enabled)&!debuff.skyreach_exhaustion.up&combo_strike\nactions.serenity_st+=/blackout_kick,if=combo_strike&buff.teachings_of_the_monastery.stack=3&buff.teachings_of_the_monastery.remains<1\nactions.serenity_st+=/rising_sun_kick\nactions.serenity_st+=/faeline_stomp,if=debuff.fae_exposure_damage.remains<2\nactions.serenity_st+=/strike_of_the_windlord,if=talent.thunderfist&buff.call_to_dominance.up&debuff.skyreach_exhaustion.remains>buff.call_to_dominance.remains\nactions.serenity_st+=/strike_of_the_windlord,if=talent.thunderfist&debuff.skyreach_exhaustion.remains>55\nactions.serenity_st+=/fists_of_fury,if=buff.invokers_delight.up,interrupt=1\n## actions.serenity_st+=/fists_of_fury_cancel\nactions.serenity_st+=/strike_of_the_windlord,if=debuff.skyreach_exhaustion.remains>buff.call_to_dominance.remains\nactions.serenity_st+=/blackout_kick,if=combo_strike&set_bonus.tier30_2pc\nactions.serenity_st+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.serenity_st+=/blackout_kick,if=combo_strike\nactions.serenity_st+=/whirling_dragon_punch\nactions.serenity_st+=/tiger_palm,if=talent.teachings_of_the_monastery&buff.teachings_of_the_monastery.stack<3\n\n# ST Priority (<3 Targets)\nactions.st_cleave=blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3&talent.shadowboxing_treads\nactions.st_cleave+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.st_cleave+=/strike_of_the_windlord,if=talent.thunderfist\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1,if=active_enemies=1&buff.kicks_of_flowing_momentum.up||buff.pressure_point.up\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=2&talent.shadowboxing_treads\nactions.st_cleave+=/strike_of_the_windlord\nactions.st_cleave+=/fists_of_fury\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.up&(talent.shadowboxing_treads&active_enemies>1||cooldown.rising_sun_kick.remains>1)\nactions.st_cleave+=/whirling_dragon_punch,if=active_enemies=2\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=3\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1,if=(active_enemies=1||!talent.shadowboxing_treads)&cooldown.fists_of_fury.remains>4&talent.xuens_battlegear\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike&active_enemies=2&cooldown.rising_sun_kick.remains&cooldown.fists_of_fury.remains&(!buff.bonedust_brew.up||spinning_crane_kick.modifier<1.5)\nactions.st_cleave+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up&active_enemies=2\nactions.st_cleave+=/spinning_crane_kick,if=buff.bonedust_brew.up&combo_strike&(active_enemies>1||spinning_crane_kick.modifier>=2.7)\nactions.st_cleave+=/rising_sun_kick,cycle_targets=1\nactions.st_cleave+=/whirling_dragon_punch\nactions.st_cleave+=/rushing_jade_wind,if=!buff.rushing_jade_wind.up\nactions.st_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike\n\n# SEF Trinkets\nactions.sef_trinkets+=/horn_of_valor,if=pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger&buff.storm_earth_and_fire.up||boss&fight_remains<30\nactions.sef_trinkets+=/manic_grieftorch,if=(boss||target.time_to_die>1+cast_time)&(trinket.1.is.manic_grieftorch&!trinket.2.has_use_buff||trinket.2.is.manic_grieftorch&!trinket.1.has_use_buff)\nactions.sef_trinkets+=/algethar_puzzle_box,if=(pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger)&!buff.storm_earth_and_fire.up||boss&fight_remains<25\nactions.sef_trinkets+=/use_item,slot=trinket1,if=trinket.1.has_use_buff&!(trinket.1.is.horn_of_valor||trinket.1.is.manic_grieftorch||trinket.1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\nactions.sef_trinkets+=/use_item,slot=trinket1,if=!trinket.1.has_use_buff&!(trinket.1.is.horn_of_valor||trinket.1.is.manic_grieftorch||trinket.1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\nactions.sef_trinkets+=/use_item,slot=trinket2,if=trinket.2.has_use_buff&!(trinket.2.is.horn_of_valor||trinket.2.is.manic_grieftorch||trinket.2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||cooldown<=60&buff.storm_earth_and_fire.remains>10||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\nactions.sef_trinkets+=/use_item,slot=trinket2,if=!trinket.2.has_use_buff&!(trinket.2.is.horn_of_valor||trinket.2.is.manic_grieftorch||trinket.2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\n\n# Serenity Trinkets\nactions.serenity_trinkets+=/horn_of_valor,if=pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger&buff.storm_earth_and_fire.up||boss&fight_remains<30\nactions.serenity_trinkets+=/manic_grieftorch,if=(boss||target.time_to_die>1+cast_time)&(trinket.1.is.manic_grieftorch&!trinket.2.has_use_buff||trinket.2.is.manic_grieftorch&!trinket.1.has_use_buff)\nactions.serenity_trinkets+=/algethar_puzzle_box,if=(pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger)&!buff.storm_earth_and_fire.up||boss&fight_remains<25\nactions.serenity_trinkets+=/use_item,slot=trinket1,if=trinket.1.has_use_buff&!(trinket.1.is.horn_of_valor||trinket.1.is.manic_grieftorch||trinket.1.is.algethar_puzzle_box)&buff.serenity.remains>10||boss&fight_remains<30\nactions.serenity_trinkets+=/use_item,slot=trinket1,if=!trinket.1.has_use_buff&!(trinket.1.is.horn_of_valor||trinket.1.is.manic_grieftorch||trinket.1.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\nactions.serenity_trinkets+=/use_item,slot=trinket2,if=trinket.2.has_use_buff&!(trinket.2.is.horn_of_valor||trinket.2.is.manic_grieftorch||trinket.2.is.algethar_puzzle_box)&buff.serenity.remains>10||boss&fight_remains<30\nactions.serenity_trinkets+=/use_item,slot=trinket2,if=!trinket.2.has_use_buff&!(trinket.2.is.horn_of_valor||trinket.2.is.manic_grieftorch||trinket.2.is.algethar_puzzle_box)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger)||boss&fight_remains<30\nactions.serenity_trinkets+=/use_items,if=cooldown.invoke_xuen_the_white_tiger.remains>cooldown%%120||cooldown<=60&variable.hold_xuen||!talent.invoke_xuen_the_white_tiger",
				},
			},
		},
	},
}
