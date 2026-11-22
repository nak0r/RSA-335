--------------------------------------
---- Raeli's Spell Announcer Core ----
--------------------------------------
RSA = LibStub("AceAddon-3.0"):NewAddon("RSA", "AceConsole-3.0") -- , "LibSink-2.0"
local L = LibStub("AceLocale-3.0"):GetLocale("RSA")


------------------
---- Defaults ----
------------------
local defaults = {
	global = {
		version = 1.0,
	},
	profile = {
		General = {
			Class = "",
			Smart = {
				RaidParty = true,
				Say = false,
				CustomChannel = true,
				InInstance = true,
				PvP = true,
			},
			Local = {
				RaidWarn = true,
				Chat = true,
				--[[ Keep these like this for now. Need to research more about these and how to do this.
				MSBT = false,
				MSBT_Area = "",
				BW = "",
				DBM = "",
				]]--
			},
			GlobalCustomChannel = "MyCustomChannel",
		},
		Reminders = {
			DisableInPvP = true,
			EnableInSpec1 = true,
			EnableInSpec2 = false,
			ScrollWheel = {
				Enabled = false,
				WheelUp = "",
				WheelDown = "",
			},
			CheckInterval = 10,
			RemindInterval = 15,
			RemindChannels = {
				Chat = true,
				RaidWarn = true,
				--[[ Keep these like this for now. Need to research more about these and how to do this.
				MSBT = "",
				BW = "",
				DBM = "",
				]]--
			},
		},


		DeathKnight = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				Army = {
					Messages = {
						Start = "Casting [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				AMS = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				DarkCommand = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "[TARGET] [MISSTYPE] my Taunt!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				IceboundFortitude = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				Strangulate = {
					Messages = {
						Start = "Strangulated [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				MindFreeze = {
					Messages = {
						Start = "Mind Freezed [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				DeathGrip = {
					Messages = {
						Start = "Death Gripped [TARGET]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				VampiricBlood = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				BoneShield = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
			},
		},
		Druid = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				SurvivalInstincts = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				Barkskin = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Cyclone = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End					
				FrenziedRegeneration = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				Hibernate = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[LINK] [MISSTYPE] on [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End					
				Innervate = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				Growl = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "[TARGET] [MISSTYPE] my Taunt!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End			
				
			},
		},
		Hunter = {
			Reminders = {
				SpellName = "",
			},
		},
		Mage = {
			Reminders = {
				SpellName = "Molten Armor",
			},
			Spells = {
				Spellsteal = {
					Messages = {
						Start = "Stole [TARGET]'s [AURALINK]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				Polymorph = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "My [LINK] [MISSTYPE] [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End			
				Counterspell = {
					Messages = {
						Start = "Counterspelled [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Portals = {
					Messages = {
						Start = "Casting [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Teleport = {
					Messages = {
						Start = "Warning you are Teleporting, and leaving your friends behind!",
					},
					Local = true,
				}, -- End				
				RefreshmentTable = {
					Messages = {
						Start = "Casting [LINK], please assist!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
			
			},
		},
		Paladin = {
			Reminders = {
				SpellName = "Righteous Fury",
			},
			Spells = {
				ArdentDefender = {
					Messages = {
						Heal = "[LINK] healed for [AMOUNT]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				AuraMastery = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DivineProtection = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Forbearance = {
					Messages = {
						Start = "",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--[[Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},]]--
				}, -- End
				DivineGuardian = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				HandOfFreedom = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				HandOfProtection = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				HandOfSacrifice = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				HandOfSalvation = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				LayOnHands = {
					Messages = {
						Start = "[LINK] on [TARGET] for [AMOUNT]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Repentance = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				HandOfReckoning = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "[TARGET] [MISSTYPE] my Taunt!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				RighteousDefense = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "[TARGET] [MISSTYPE] my Taunt!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Beacon = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				HammerOfJustice = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End			
			},
		},
		Priest = {
			Reminders = {
				SpellName = "Inner Fire",
			},
			Spells = {
				DivineHymn = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] over!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				HymnOfHope = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] over!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				FearWard = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Whisper = true,
					Raid = false,
					Party = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Levitate = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End	
				ShackleUndead = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[LINK] [MISSTYPE] on [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End		
				DispelMagic = {
					Messages = {
						Start = "Dispelled [AURALINK] on [TARGET]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End	
				GuardianSpirit = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End	
				PainSuppression = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End			
				Lightwell = {
					Messages = {
						Start = "[LINK] activated!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End	
				PowerInfusion = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End		
				LightwellRenew = {
					Messages = {
						Start = "[TARGET] has clicked the Lightwell!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Whisper = false,
					Raid = false,
					Party = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End					
				CureDisease = {
					Messages = {
						Start = "Cured [TARGET]'s [AURALINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End	
				
			},
		},
		Rogue = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				Sap = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End	
				Blind = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Kick = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Dismantle = {
					Messages = {
						Start = "Dismantled [TARGET]!",
						End = "[LINK] faded from [TARGET]!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
			},
		},
		Shaman = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				Hex = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End					
				Heroism = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End					
				WindShear = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				Purge = {
					Messages = {
						Start = "Purged [TARGET]'s [AURALINK]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				CleanseSpirit = {
					Messages = {
						Start = "Cleansed [TARGET]'s [AURALINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End				
				ManaTide = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
			},
		},
		Warlock = {
			Reminders = {
				SpellName = "Fel Armor",
			},
			Spells = {
				SoulWell = {
					Messages = {
						Start = "Casting [LINK], please assist!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SummonStone = {
					Messages = {
						Start = "Casting [LINK], please assist!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Suffering = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "[TARGET] [MISSTYPE] my Taunt!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Raid = false,
					Party = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Banish = {
					Messages = {
						Start = "Banished [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Fear = {
					Messages = {
						Start = "Fearing [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Seduce = {
					Messages = {
						Start = "Seducing [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SpellLock = {
					Messages = {
						Start = "Spell Locked [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Devour = {
					Messages = {
						Start = "Devoured [TARGET]'s [AURALINK]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End

			}, -- End Spells
		}, -- End Warlock
		Warrior = {
			Reminders = {
				SpellName = "",
			},
			Spells = {			
				ShatteringThrow = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
						End = "[LINK] on [TARGET] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				ShieldWall = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				ChallengingShout = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				Pummel = {
					Messages = {
						Start = "Pummeled [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				Disarm = {
					Messages = {
						Start = "Disarmed [TARGET]!",
						End = "[TARGET] is armed again!",
						Resisted = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				ShieldBash = {
					Messages = {
						Start = "Shield Bashed [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				Taunt = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "[TARGET] [MISSTYPE] my Taunt!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				Vigilance = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
				LastStand = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					--Whisper = false,
					Raid = true,
					Party = true,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End				
			}, 
		},
	}, -- End Profile
} -- End Defaults

-----------------------
---- Ace functions ----
-----------------------
function RSA:OnInitialize()
	-- Called when the addon is loaded
	self.db = LibStub("AceDB-3.0"):New("RSADB", defaults) -- Setup Saved Variables
	
	-- Check what class we are and save it. Used to determine what options to show.
	local pClass = select(2, UnitClass("player"))
	self.db.profile.General.Class = pClass
	
	-- Register /RSA command
	self:RegisterChatCommand("RSA", "ChatCommand")

	-- Register Version
	if tonumber(GetAddOnMetadata("RSA", "Version")) > tonumber(self.db.global.version) then
	print("|cFFFF75B3Raeli's Spell Announcer|r updated to version " .. "|cff00FF00" .. GetAddOnMetadata("RSA", "Version") .. "|r.")
	end
	--if tonumber(GetAddOnMetadata("RSA", "Version")) > tonumber(self.db.global.version) then
	if tonumber(self.db.global.version) < 2.201 then
	local message = "|cffFF0000Warning:|r Some options have changed in RSA. You may have to reconfigure any custom messages you have set! For instance you need to change LINK to [LINK]."
	print(message)
	local RWColor = {r=1, g=1, b=1}
	RaidNotice_AddMessage(RaidWarningFrame, format(message), RWColor)
	end
	self.db.global.version = GetAddOnMetadata("RSA", "Version")	
	
end

function RSA:RefreshConfig()
	local pClass = select(2, UnitClass("player"))
		self.db.profile.class = pClass
end

function RSA:OnProfileEnable()
	self.db = self.db.profile
	local pClass = select(2, UnitClass("player"))
		self.db.profile.class = pClass
end

function RSA:ChatCommand(input)
	input = strlower(input)
	local command1 = " - |cff33ff99".. "Config" .."|r - Opens global options."
	local command2 = " - |cff33ff99".. "Spell" .."|r - Opens spell options."
	local command3 = " - |cff33ff99".. "Reminders" .."|r - Opens buff reminder options."
	local command4 = " - |cff33ff99".. "Help" .."|r - Opens help section."
	--/run InterfaceOptionsFrame_OpenToCategory("Profile","Raeli's Spell Announcer")
	if input == "" or input == " " then
		print("|cFFFF75B3RSA:|r Valid commands for |cff33ff99/rsa|r:")		
		print(command1)
		print(command2)
		print(command3)
		print(command4)
	elseif not (input == "" or input == " " or input == "config" or input == "reminders" or input == "help" or input == "spell") then
		print("|cFFFF75B3RSA:|r [" .. "|cff33ff99" .. input .. "|r] " .. "is not a valid command. " .. "Valid commands for |cff33ff99/rsa|r:")
		print(command1)
		print(command2)
		print(command3)
		print(command4)			
	elseif input == "config" then
		local loaded, reason = LoadAddOn("RSA_Options")
		if not loaded then
			if reason == "DISABLED" or reason == "INTERFACE_VERSION" then
				ChatFrame1:AddMessage("|cFFFF75B3RSA:|r " .. L.OptionsDisabled)
			elseif reason == "MISSING" or reason == "CORRUPT" then
				ChatFrame1:AddMessage("|cFFFF75B3RSA:|r " .. L.OptionsMissing)
			end
		end
	InterfaceOptionsFrame_OpenToCategory("Raeli's Spell Announcer","Raeli's Spell Announcer")
	elseif input == "reminders" then
		local loaded, reason = LoadAddOn("RSA_Options")
		if not loaded then
			if reason == "DISABLED" or reason == "INTERFACE_VERSION" then
				ChatFrame1:AddMessage("|cFFFF75B3RSA:|r " .. L.OptionsDisabled)
			elseif reason == "MISSING" or reason == "CORRUPT" then
				ChatFrame1:AddMessage("|cFFFF75B3RSA:|r " .. L.OptionsMissing)
			end
		end	
	InterfaceOptionsFrame_OpenToCategory("Buff Reminders","Raeli's Spell Announcer")
	elseif input == "spell" then
		local loaded, reason = LoadAddOn("RSA_Options")
		if not loaded then
			if reason == "DISABLED" or reason == "INTERFACE_VERSION" then
				ChatFrame1:AddMessage("|cFFFF75B3RSA:|r " .. L.OptionsDisabled)
			elseif reason == "MISSING" or reason == "CORRUPT" then
				ChatFrame1:AddMessage("|cFFFF75B3RSA:|r " .. L.OptionsMissing)
			end
		end	
	InterfaceOptionsFrame_OpenToCategory("Spell Options","Raeli's Spell Announcer")
	elseif input == "help" then
		local loaded, reason = LoadAddOn("RSA_Options")
		if not loaded then
			if reason == "DISABLED" or reason == "INTERFACE_VERSION" then
				ChatFrame1:AddMessage("|cFFFF75B3RSA:|r " .. L.OptionsDisabled)
			elseif reason == "MISSING" or reason == "CORRUPT" then
				ChatFrame1:AddMessage("|cFFFF75B3RSA:|r " .. L.OptionsMissing)
			end
		end	
	InterfaceOptionsFrame_OpenToCategory("Help!","Raeli's Spell Announcer")
	end
end

--------------------------------
---- Announcement Functions ----
--------------------------------
function RSA_CopyText(text)
ChatFrame1EditBox:Show();
ChatFrame1EditBox:SetFocus();
ChatFrame1EditBox:Insert(text);
ChatFrame1EditBox:HighlightText();
end

local function Print_Self(message) -- Send a message to your default chat window.
	_G.ChatFrame1:AddMessage("|cFFFF75B3RSA:|r " .. format(message))
end

local function Print_Raid_Smart(message) -- Send a message to raid, party, or nothing, depending on group size.
	local InInstance, InstanceType = IsInInstance()
	if (RSA.db.profile.General.Smart.InInstance == true and InInstance == 1) or (RSA.db.profile.General.Smart.InInstance == false) and (RSA.db.profile.General.Smart.PvP == true and UnitIsPVP("player") ~= 1) or (RSA.db.profile.General.Smart.PvP == false) then
		if GetNumRaidMembers() > 0 then
			SendChatMessage(format(message), "RAID", nil)
		elseif GetNumPartyMembers() > 0 then
			SendChatMessage(format(message), "PARTY", nil)
		end
	end
end

local function Print_Raid(message) -- Send a message to raid or nothing.
	local InInstance, InstanceType = IsInInstance()
	if ((RSA.db.profile.General.Smart.InInstance == true and InInstance == 1) or (RSA.db.profile.General.Smart.InInstance == false)) and ((RSA.db.profile.General.Smart.PvP == true and UnitIsPVP("player") ~= 1) or (RSA.db.profile.General.Smart.PvP == false)) then
		if GetNumRaidMembers() > 0 then
			SendChatMessage(format(message), "RAID", nil)
		end
	end
end

local function Print_Party(message) -- Send a message to party or nothing.
	local InInstance, InstanceType = IsInInstance()
	if ((RSA.db.profile.General.Smart.InInstance == true and InInstance == 1) or (RSA.db.profile.General.Smart.InInstance == false)) and ((RSA.db.profile.General.Smart.PvP == true and UnitIsPVP("player") ~= 1) or (RSA.db.profile.General.Smart.PvP == false)) then
		if GetNumPartyMembers() > 0 then
			SendChatMessage(format(message), "PARTY", nil)
		end
	end
end

local function Print_Channel(message, channel) -- Send a message to the custom channel that the user defines.
	local InInstance, InstanceType = IsInInstance()
	if ((RSA.db.profile.General.Smart.InInstance == true and InInstance == 1) or (RSA.db.profile.General.Smart.InInstance == false)) and ((RSA.db.profile.General.Smart.PvP == true and UnitIsPVP("player") ~= 1) or (RSA.db.profile.General.Smart.PvP == false)) then
		if RSA.db.profile.General.Smart.CustomChannel == true then
			if GetNumRaidMembers()>0 or GetNumPartyMembers()>0 then
				SendChatMessage(format(message), "CHANNEL", nil, GetChannelName(channel))
			end
		elseif RSA.db.profile.General.Smart.CustomChannel == false then
				SendChatMessage(format(message), "CHANNEL", nil, GetChannelName(channel))			
		end
	end
end

local function Print_Self_RW(message) -- Send a message locally to the raid warning frame. Only visible to the user.
	local RWColor = {r=1, g=1, b=1}
	RaidNotice_AddMessage(RaidWarningFrame, "|cFFFF75B3RSA:|r " .. format(message), RWColor)
end

local function Print_RW(message) -- Send a proper message to the raid warning frame.
	local InInstance, InstanceType = IsInInstance()
	if ((RSA.db.profile.General.Smart.InInstance == true and InInstance == 1) or (RSA.db.profile.General.Smart.InInstance == false)) and ((RSA.db.profile.General.Smart.PvP == true and UnitIsPVP("player") ~= 1) or (RSA.db.profile.General.Smart.PvP == false)) then
		SendChatMessage(format(message), "RAID_WARNING", nil)
	end	
end

local function Print_Whisper(message, target) -- Send a whisper to the target.
	SendChatMessage(format(message), "WHISPER", nil, target)
end

local function Print_Say(message) -- Send a message to Say.
	local InInstance, InstanceType = IsInInstance()
	if ((RSA.db.profile.General.Smart.InInstance == true and InInstance == 1) or (RSA.db.profile.General.Smart.InInstance == false)) and ((RSA.db.profile.General.Smart.PvP == true and UnitIsPVP("player") ~= 1) or (RSA.db.profile.General.Smart.PvP == false)) then
		if RSA.db.profile.General.Smart.Say == true then
			if GetNumRaidMembers() > 0 or GetNumPartyMembers() > 0 then
				SendChatMessage(format(message), "SAY", nil)
			end
		elseif RSA.db.profile.General.Smart.Say == false then
			SendChatMessage(format(message), "SAY", nil)
		end
	end		
end

-----------------------------
---- Combat Log Checking ----
-----------------------------
local CombatLogMonitor = CreateFrame("Frame", "RSA:CLM")
local pName = UnitName("player")
function RSA_String_Replace(str)
	return RSA_Replacements [str] or str
end
CombatLogMonitor:SetScript("OnEvent", function(_, _, _, event, _, source, _, _, dest, _, spellID, spellName, _, missType)
	local petName = UnitName("pet")
	
	if source == pName or source == petName then
	
--		Death Knights Druid Hunter Mage Paladin Priest Rogue Shaman Warlock Warrior

		if event == "SPELL_AURA_APPLIED" then		
			-- Reminder Refreshed
			if RSA.db.profile.General.Class == "DEATHKNIGHT" then -- Check Class, Set the Spell we're reminding about.
				ReminderSpell = RSA.db.profile.DeathKnight.Reminders.SpellName
			elseif RSA.db.profile.General.Class == "DRUID" then
				ReminderSpell = RSA.db.profile.Druid.Reminders.SpellName
			elseif RSA.db.profile.General.Class == "HUNTER" then
				ReminderSpell = RSA.db.profile.Hunter.Reminders.SpellName
			elseif RSA.db.profile.General.Class == "MAGE" then
				ReminderSpell = RSA.db.profile.Mage.Reminders.SpellName
			elseif RSA.db.profile.General.Class == "PALADIN" then
				ReminderSpell = RSA.db.profile.Paladin.Reminders.SpellName
			elseif RSA.db.profile.General.Class == "PRIEST" then
				ReminderSpell = RSA.db.profile.Priest.Reminders.SpellName
			elseif RSA.db.profile.General.Class == "ROGUE" then
				ReminderSpell = RSA.db.profile.Rogue.Reminders.SpellName
			elseif RSA.db.profile.General.Class == "SHAMAN" then
				ReminderSpell = RSA.db.profile.Shaman.Reminders.SpellName
			elseif RSA.db.profile.General.Class == "WARLOCK" then
				ReminderSpell = RSA.db.profile.Warlock.Reminders.SpellName
			elseif RSA.db.profile.General.Class == "WARRIOR" then
				ReminderSpell = RSA.db.profile.Warrior.Reminders.SpellName
			end
			if spellName == ReminderSpell and dest == pName then
				RSA_Reminder:SetScript("OnUpdate", nil)
				if RSA.db.profile.Reminders.RemindChannels.Chat == true then
					Print_Self(ReminderSpell .. " Refreshed!")
				end
				if RSA.db.profile.Reminders.RemindChannels.RaidWarn == true then
					Print_Self_RW(ReminderSpell .. " Refreshed!")
				end
			end
			
			
			-- DEATH KNIGHT
			if spellID == 56222 then -- DARK COMMAND
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Start ~= "" then
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.DarkCommand.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.DarkCommand.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.DarkCommand.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.DarkCommand.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- DARK COMMAND
			if spellID == 49560 then -- DEATH GRIP
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Start ~= "" then
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.DeathGrip.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.DeathGrip.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.DeathGrip.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.DeathGrip.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- DEATH GRIP				
			
			-- DRUID
			if spellID == 29166 then -- INNERVATE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.Innervate.Messages.Start ~= "" then
					if RSA.db.profile.Druid.Spells.Innervate.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Innervate.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Druid.Spells.Innervate.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Innervate.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Innervate.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Innervate.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Innervate.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Innervate.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- INNERVATE			
			if spellID == 6795 then -- GROWL
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.Growl.Messages.Start ~= "" then
					if RSA.db.profile.Druid.Spells.Growl.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Growl.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Druid.Spells.Growl.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Growl.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Growl.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Growl.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Growl.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Growl.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- GROWL			
			if spellID == 2637 then -- HIBERNATE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.Hibernate.Messages.Start ~= "" then
					if RSA.db.profile.Druid.Spells.Hibernate.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Hibernate.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Hibernate.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Hibernate.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Hibernate.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Hibernate.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HIBERNATE
			if spellID == 33786 then -- CYCLONE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.Cyclone.Messages.Start ~= "" then
					if RSA.db.profile.Druid.Spells.Cyclone.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Cyclone.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Cyclone.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Cyclone.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Cyclone.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Cyclone.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- CYCLONE

			
			-- MAGE
			if spellID == 118 or spellID == 61305 or spellID == 28272 or spellID == 61721 or spellID == 61780 or spellID == 28271 then -- POLYMORPH
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Mage.Spells.Polymorph.Messages.Start ~= "" then
					if RSA.db.profile.Mage.Spells.Polymorph.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Channel)
					end
					if RSA.db.profile.Mage.Spells.Polymorph.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Mage.Spells.Polymorph.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Mage.Spells.Polymorph.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Mage.Spells.Polymorph.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- POLYMORPH	
			
			-- PALADIN
			if spellID == 62124 then -- HAND OF RECKONING
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HandOfReckoning.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HandOfReckoning.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HandOfReckoning.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HandOfReckoning.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- HAND OF RECKONING
			if spellID == 31790 then -- RIGHTEOUS DEFENSE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.RighteousDefense.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.RighteousDefense.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.RighteousDefense.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.RighteousDefense.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.RighteousDefense.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.RighteousDefense.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.RighteousDefense.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.RighteousDefense.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- RIGHTEOUS DEFENSE	
			if spellID == 70940 and dest == pName then -- DIVINE GUARDIAN
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.DivineGuardian.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.DivineGuardian.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.DivineGuardian.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.DivineGuardian.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.DivineGuardian.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.DivineGuardian.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.DivineGuardian.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.DivineGuardian.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DIVINE GUARDIAN		
			if spellID == 25771 then -- FORBEARANCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.Forbearance.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.Forbearance.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.Forbearance.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.Forbearance.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.Forbearance.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.Forbearance.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.Forbearance.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.Forbearance.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Forbearance.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- FORBEARANCE			

			--PRIEST 
			if spellID == 9484 then -- SHACKLE UNDEAD
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.ShackleUndead.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.ShackleUndead.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.ShackleUndead.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.ShackleUndead.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.ShackleUndead.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SHACKLE UNDEAD					
			if spellID == 7001 then -- LIGHTWELL RENEW
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.LightwellRenew.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.LightwellRenew.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.LightwellRenew.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.LightwellRenew.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.LightwellRenew.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.LightwellRenew.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Priest.Spells.LightwellRenew.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.LightwellRenew.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.LightwellRenew.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.LightwellRenew.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.LightwellRenew.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.LightwellRenew.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.LightwellRenew.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.LightwellRenew.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.LightwellRenew.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.LightwellRenew.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.LightwellRenew.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- LIGHTWELL RENEW

			-- ROGUE
			if spellID == 6770 then -- SAP
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Rogue.Spells.Sap.Messages.Start ~= "" then
					if RSA.db.profile.Rogue.Spells.Sap.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Sap.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Sap.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Sap.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Sap.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Sap.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SAP				
			if spellID == 51722 then -- DISMANTLE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Rogue.Spells.Dismantle.Messages.Start ~= "" then
					if RSA.db.profile.Rogue.Spells.Dismantle.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Dismantle.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Dismantle.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Dismantle.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Dismantle.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Dismantle.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DISMANTLE
			if spellID == 2094 then -- Blind
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Rogue.Spells.Blind.Messages.Start ~= "" then
					if RSA.db.profile.Rogue.Spells.Blind.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Blind.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Blind.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Blind.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Blind.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- Blind	
			
			-- SHAMAN
			if spellID == 51514 then -- HEX
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Shaman.Spells.Hex.Messages.Start ~= "" then
					if RSA.db.profile.Shaman.Spells.Hex.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.Hex.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.Hex.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.Hex.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.Hex.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.Hex.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HEX		
			
			-- WARLOCK
			if spellID == 17735 then -- SUFFERING
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warlock.Spells.Suffering.Messages.Start ~= "" then
					if RSA.db.profile.Warlock.Spells.Suffering.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Suffering.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Suffering.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Suffering.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Suffering.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Suffering.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Suffering.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- SUFFERING
			if spellID == 18647 then -- BANISH
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warlock.Spells.Banish.Messages.Start ~= "" then
					if RSA.db.profile.Warlock.Spells.Banish.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Banish.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Banish.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Banish.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Banish.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BANISH			
			if spellID == 5782 then -- FEAR
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warlock.Spells.Fear.Messages.Start ~= "" then
					if RSA.db.profile.Warlock.Spells.Fear.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Fear.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Fear.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Fear.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Fear.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- FEAR
			if spellID == 6358 then -- SEDUCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warlock.Spells.Seduce.Messages.Start ~= "" then
					if RSA.db.profile.Warlock.Spells.Seduce.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Seduce.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Seduce.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Seduce.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Seduce.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SEDUCE				

			-- WARRIOR
			if spellID == 355 then -- TAUNT
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.Taunt.Messages.Start ~= "" then
					if RSA.db.profile.Warrior.Spells.Taunt.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Taunt.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.Taunt.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Taunt.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Taunt.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Taunt.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Taunt.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Taunt.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- TAUNT			
			if spellID == 676 then -- DISARM
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.Disarm.Messages.Start ~= "" then
					if RSA.db.profile.Warrior.Spells.Disarm.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Disarm.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Disarm.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Disarm.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Disarm.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Disarm.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DISARM	


			
		end -- IF EVENT IS SPELL_AURA_APPLIED
		
		
		if event == "SPELL_CAST_START" then
			-- MAGE
			if spellID == 53142 or spellID == 11419 or spellID == 32266 or spellID == 11416 or spellID == 11417 -- PORTALS
			or spellID == 35717 or spellID == 33691 or spellID == 32267 or spellID == 49361 or spellID == 10059
			or spellID == 49360 or spellID == 11420 or spellID == 11418 then
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Mage.Spells.Portals.Messages.Start ~= "" then
					if RSA.db.profile.Mage.Spells.Portals.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.Portals.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.Portals.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Mage.Spells.Portals.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Mage.Spells.Portals.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Mage.Spells.Portals.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Mage.Spells.Portals.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Mage.Spells.Portals.CustomChannel.Channel)
					end
					if RSA.db.profile.Mage.Spells.Portals.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Mage.Spells.Portals.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Mage.Spells.Portals.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Mage.Spells.Portals.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Mage.Spells.Portals.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Mage.Spells.Portals.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Mage.Spells.Portals.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Mage.Spells.Portals.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- PORTALS
			if spellID == 53140 or spellID == 3562 or spellID == 32271 or spellID == 3562 or spellID == 3567 -- TELEPORTS
			or spellID == 33690 or spellID == 35715 or spellID == 32272 or spellID == 49358 or spellID == 3561
			or spellID == 49359 or spellID == 3566 or spellID == 3563 then
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Mage.Spells.Teleport.Messages.Start ~= "" then
					if RSA.db.profile.Mage.Spells.Teleport.Local == true and (GetNumPartyMembers() > 0 or GetNumRaidMembers() > 0) then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.Teleport.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.Teleport.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- TELEPORT			
		
		end -- IF EVENT IS SPELL_CAST_START
		
		
		if event == "SPELL_CAST_SUCCESS" then
			-- DEATH KNIGHT
			if spellID == 48792 then -- ICEBOUND FORTITUDE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.Start ~= "" then
					if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.IceboundFortitude.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- ICEBOUND FORTITUDE		
			if spellID == 55233 then -- VAMPIRIC BLOOD
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.Start ~= "" then
					if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.VampiricBlood.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.VampiricBlood.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- VAMPIRIC BLOOD				
			if spellID == 49222 then -- BONE SHIELD
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.Start ~= "" then
					if RSA.db.profile.DeathKnight.Spells.BoneShield.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.BoneShield.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.BoneShield.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.BoneShield.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.BoneShield.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.BoneShield.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.BoneShield.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.BoneShield.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BONE SHIELD	
			if spellID == 48707 then -- ANTI MAGIC SHELL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.DeathKnight.Spells.AMS.Messages.Start ~= "" then
					if RSA.db.profile.DeathKnight.Spells.AMS.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.AMS.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.AMS.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.AMS.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.AMS.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.AMS.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.AMS.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.AMS.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- ANTI MAGIC SHELL
			if spellID == 42650 then -- ARMY OF THE DEAD
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.DeathKnight.Spells.Army.Messages.Start ~= "" then
					if RSA.db.profile.DeathKnight.Spells.Army.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.Army.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.Army.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.Army.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.Army.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.Army.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.Army.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.Army.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.Army.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.Army.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.Army.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.Army.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.Army.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.Army.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.Army.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.Army.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- ARMY OF THE DEAD			

			-- DRUID
			if spellID == 22842 then -- FRENZIED REGENERATION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.Start ~= "" then
					if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Druid.Spells.FrenziedRegeneration.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.FrenziedRegeneration.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- FRENZIED REGENERATION
			if spellID == 61336 then -- SURVIVAL INSTINCTS
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.Start ~= "" then
					if RSA.db.profile.Druid.Spells.SurvivalInstincts.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.SurvivalInstincts.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Druid.Spells.SurvivalInstincts.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.SurvivalInstincts.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.SurvivalInstincts.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.SurvivalInstincts.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.SurvivalInstincts.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.SurvivalInstincts.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SURVIVAL INSTINCTS			
			if spellID == 22812 then -- BARKSKIN
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.Barkskin.Messages.Start ~= "" then
					if RSA.db.profile.Druid.Spells.Barkskin.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Barkskin.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Barkskin.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Barkskin.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Barkskin.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Barkskin.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Barkskin.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BARKSKIN			
			
			-- MAGE
			if spellID == 43987 then -- REFRESHMENT TABLE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Mage.Spells.RefreshmentTable.Messages.Start ~= "" then
					if RSA.db.profile.Mage.Spells.RefreshmentTable.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.RefreshmentTable.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.RefreshmentTable.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Mage.Spells.RefreshmentTable.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Mage.Spells.RefreshmentTable.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Mage.Spells.RefreshmentTable.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Mage.Spells.RefreshmentTable.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Mage.Spells.RefreshmentTable.CustomChannel.Channel)
					end
					if RSA.db.profile.Mage.Spells.RefreshmentTable.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Mage.Spells.RefreshmentTable.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Mage.Spells.RefreshmentTable.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Mage.Spells.RefreshmentTable.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Mage.Spells.RefreshmentTable.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Mage.Spells.RefreshmentTable.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Mage.Spells.RefreshmentTable.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Mage.Spells.RefreshmentTable.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- REFRESHMENT TABLE			
			
			-- PALADIN
			if spellID == 31821 then -- AURA MASTERY
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.AuraMastery.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.AuraMastery.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.AuraMastery.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.AuraMastery.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.AuraMastery.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.AuraMastery.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.AuraMastery.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.AuraMastery.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.AuraMastery.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- AURA MASTERY
			if spellID == 498 then -- DIVINE PROTECTION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.DivineProtection.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.DivineProtection.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.DivineProtection.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.DivineProtection.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.DivineProtection.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.DivineProtection.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.DivineProtection.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.DivineProtection.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.DivineProtection.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DIVINE PROTECTION
			if spellID == 1044 then -- HAND OF FREEDOM
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.HandOfFreedom.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HandOfFreedom.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Paladin.Spells.HandOfFreedom.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HandOfFreedom.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HandOfFreedom.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HandOfFreedom.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HandOfFreedom.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HandOfFreedom.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HAND OF FREEDOM
			if spellID == 1022 then -- HAND OF PROTECTION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.HandOfProtection.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HandOfProtection.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Paladin.Spells.HandOfProtection.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HandOfProtection.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HandOfProtection.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HandOfProtection.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HandOfProtection.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HandOfProtection.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HAND OF PROTECTION
			if spellID == 6940 then -- HAND OF SACRIFICE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Paladin.Spells.HandOfSacrifice.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HandOfSacrifice.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HAND OF SACRIFICE
			if spellID == 1038 then -- HAND OF SALVATION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.HandOfSalvation.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HandOfSalvation.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Paladin.Spells.HandOfSalvation.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HandOfSalvation.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HandOfSalvation.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HandOfSalvation.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HandOfSalvation.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HandOfSalvation.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HAND OF SALVATION
			if spellID == 20066 then -- REPENTANCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.Repentance.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.Repentance.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.Repentance.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.Repentance.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.Repentance.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.Repentance.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Repentance.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- REPENTANCE
			if spellID == 53563 then -- BEACON OF LIGHT
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.Beacon.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.Beacon.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.Beacon.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Paladin.Spells.Beacon.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.Beacon.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.Beacon.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.Beacon.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.Beacon.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Beacon.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BEACON OF LIGHT

			-- PRIEST
			if spellID == 64843 then -- DIVINE HYMN
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.DivineHymn.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.DivineHymn.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.DivineHymn.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Priest.Spells.DivineHymn.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.DivineHymn.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.DivineHymn.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.DivineHymn.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.DivineHymn.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.DivineHymn.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DIVINE HYMN
			if spellID == 64901 then -- HYMN OF HOPE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.HymnOfHope.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.HymnOfHope.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.HymnOfHope.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Priest.Spells.HymnOfHope.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.HymnOfHope.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.HymnOfHope.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.HymnOfHope.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.HymnOfHope.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.HymnOfHope.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HYMN OF HOPE	
			if spellID == 6346 then -- FEAR WARD
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.FearWard.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.FearWard.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.FearWard.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Priest.Spells.FearWard.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.FearWard.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.FearWard.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.FearWard.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.FearWard.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.FearWard.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- FEAR WARD
			if spellID == 1706 then -- LEVITATE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.Levitate.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.Levitate.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.Levitate.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Priest.Spells.Levitate.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.Levitate.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.Levitate.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.Levitate.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.Levitate.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Levitate.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- LEVITATE			
			if spellID == 47788 then -- GUARDIAN SPIRIT
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.GuardianSpirit.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.GuardianSpirit.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Priest.Spells.GuardianSpirit.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.GuardianSpirit.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.GuardianSpirit.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.GuardianSpirit.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.GuardianSpirit.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.GuardianSpirit.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- GUARDIAN SPIRIT			
			if spellID == 33206 then -- PAIN SUPPRESSION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.PainSuppression.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.PainSuppression.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.PainSuppression.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Priest.Spells.PainSuppression.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.PainSuppression.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.PainSuppression.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.PainSuppression.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.PainSuppression.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.PainSuppression.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- PAIN SUPPRESSION			
			if spellID == 10060 then -- POWER INFUSION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.PowerInfusion.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.PowerInfusion.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.PowerInfusion.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Priest.Spells.PowerInfusion.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.PowerInfusion.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.PowerInfusion.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.PowerInfusion.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.PowerInfusion.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.PowerInfusion.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- POWER INFUSION			
			
			-- SHAMAN
			if spellID == 32182 or spellID == 2825 then -- BLOODLUST / HEROISM
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Shaman.Spells.Heroism.Messages.Start ~= "" then
					if RSA.db.profile.Shaman.Spells.Heroism.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.Heroism.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.Heroism.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.Heroism.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Shaman.Spells.Heroism.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Shaman.Spells.Heroism.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.Heroism.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.Heroism.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.Heroism.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.Heroism.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.Heroism.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.Heroism.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.Heroism.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.Heroism.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.Heroism.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.Heroism.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BLOODLUST / HEROISM
			if spellID == 16190 then -- MANA TIDE TOTEM
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Shaman.Spells.ManaTide.Messages.Start ~= "" then
					if RSA.db.profile.Shaman.Spells.ManaTide.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.ManaTide.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Shaman.Spells.ManaTide.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.ManaTide.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.ManaTide.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.ManaTide.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.ManaTide.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.ManaTide.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- MANA TIDE TOTEM		
			
			-- WARLOCK
			if spellID == 58887 then -- SOUL WELL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warlock.Spells.SoulWell.Messages.Start ~= "" then
					if RSA.db.profile.Warlock.Spells.SoulWell.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.SoulWell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.SoulWell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.SoulWell.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Warlock.Spells.SoulWell.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Warlock.Spells.SoulWell.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.SoulWell.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.SoulWell.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.SoulWell.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.SoulWell.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.SoulWell.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.SoulWell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.SoulWell.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.SoulWell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.SoulWell.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.SoulWell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SOUL WELL
			if spellID == 698 then -- SUMMONING STONE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warlock.Spells.SummonStone.Messages.Start ~= "" then
					if RSA.db.profile.Warlock.Spells.SummonStone.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.SummonStone.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.SummonStone.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.SummonStone.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Warlock.Spells.SummonStone.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Warlock.Spells.SummonStone.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.SummonStone.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.SummonStone.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.SummonStone.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.SummonStone.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.SummonStone.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.SummonStone.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.SummonStone.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.SummonStone.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.SummonStone.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.SummonStone.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SUMMONING STONE					

			-- WARRIOR
			if spellID == 871 then -- SHIELD WALL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.ShieldWall.Messages.Start ~= "" then
					if RSA.db.profile.Warrior.Spells.ShieldWall.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.ShieldWall.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.ShieldWall.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.ShieldWall.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.ShieldWall.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.ShieldWall.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.ShieldWall.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.ShieldWall.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SHIELD WALL
			if spellID == 12975 then -- LAST STAND
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.LastStand.Messages.Start ~= "" then
					if RSA.db.profile.Warrior.Spells.LastStand.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.LastStand.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.LastStand.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.LastStand.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.LastStand.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.LastStand.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.LastStand.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.LastStand.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- LAST STAND
			if spellID == 1161 then -- CHALLENGING SHOUT WITH TIMER FOR ENDING
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.Start ~= "" then
					if RSA.db.profile.Warrior.Spells.ChallengingShout.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.ChallengingShout.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.ChallengingShout.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.ChallengingShout.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.ChallengingShout.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.ChallengingShout.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.ChallengingShout.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.ChallengingShout.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
				
				local ReminderTimeElapsed = 0.0
				RSA_CS_Timer = CreateFrame("Frame", "RSA:R")
				local function CSTimer(self, elapsed)
					ReminderTimeElapsed = ReminderTimeElapsed + elapsed
					if ReminderTimeElapsed < 6 then return end
					ReminderTimeElapsed = ReminderTimeElapsed - floor(ReminderTimeElapsed)
					if RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.End ~= "" then
						if RSA.db.profile.Warrior.Spells.ChallengingShout.Local == true then
							if RSA.db.profile.General.Local.RaidWarn == true then
								Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.End, ".%a+.", RSA_String_Replace))
							end
							if RSA.db.profile.General.Local.Chat == true then
								Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.End, ".%a+.", RSA_String_Replace))
							end
						end
						if RSA.db.profile.Warrior.Spells.ChallengingShout.Whisper == true then
							Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.End, ".%a+.", RSA_String_Replace), dest)
						end
						if RSA.db.profile.Warrior.Spells.ChallengingShout.CustomChannel.Enabled == true then
							Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.ChallengingShout.CustomChannel.Channel)
						end
						if RSA.db.profile.Warrior.Spells.ChallengingShout.Smart.Say == true then
							Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Smart.RaidParty == true then
							if RSA.db.profile.Warrior.Spells.ChallengingShout.Smart.RaidParty == true then
								Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.End, ".%a+.", RSA_String_Replace))
							end
						end
						if RSA.db.profile.General.Smart.RaidParty == false then
							if RSA.db.profile.Warrior.Spells.ChallengingShout.Party == true then
								Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.End, ".%a+.", RSA_String_Replace))
							end
							if RSA.db.profile.Warrior.Spells.ChallengingShout.Raid == true then
								Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.ChallengingShout.Messages.End, ".%a+.", RSA_String_Replace))
							end
						end
					end			
					RSA_CS_Timer:SetScript("OnUpdate", nil)
				end						
				RSA_CS_Timer:SetScript("OnUpdate", CSTimer)
				
			end -- CHALLENGING SHOUT WITH TIMER FOR ENDING	

			
			if spellID == 64382 then -- SHATTERING THROW
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.Start ~= "" then
					if RSA.db.profile.Warrior.Spells.ShatteringThrow.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.ShatteringThrow.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.ShatteringThrow.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.ShatteringThrow.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.ShatteringThrow.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.ShatteringThrow.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.ShatteringThrow.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.ShatteringThrow.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SHATTERING THROW			
			if spellID == 50720 then -- VIGILANCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.Vigilance.Messages.Start ~= "" then
					if RSA.db.profile.Warrior.Spells.Vigilance.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Vigilance.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Warrior.Spells.Vigilance.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Vigilance.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Vigilance.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Vigilance.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Vigilance.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Vigilance.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- VIGILANCE
			
		end -- IF EVENT IS SPELL_CAST_SUCCESS
		
		
		if event == "SPELL_SUMMON" then		
			-- PRIEST
			if spellID == 724 then -- LIGHTWELL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.Lightwell.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.Lightwell.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.Lightwell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.Lightwell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.Lightwell.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.Lightwell.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Priest.Spells.Lightwell.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.Lightwell.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.Lightwell.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.Lightwell.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.Lightwell.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.Lightwell.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.Lightwell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.Lightwell.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.Lightwell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Lightwell.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.Lightwell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- LIGHTWELL	
		
		end -- IF EVENT IS SPELL_SUMMON
		
		
		if event == "SPELL_INTERRUPT" then
			-- DEATH KNIGHT
			if spellID == 47476 then -- STRANGULATE
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[TARCAST]"] = extraspellinfo, ["[TARLINK]"] = extraspellinfolink,}
				if RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Start ~= "" then
					if RSA.db.profile.DeathKnight.Spells.Strangulate.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.Strangulate.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.Strangulate.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.Strangulate.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.Strangulate.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.Strangulate.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.Strangulate.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.Strangulate.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- STRANGULATE
			if spellID == 47528 then -- MIND FREEZE
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[TARCAST]"] = extraspellinfo, ["[TARLINK]"] = extraspellinfolink,}
				if RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Start ~= "" then
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.MindFreeze.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.MindFreeze.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.MindFreeze.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.MindFreeze.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- MIND FREEZE

			-- DRUID
			
			-- MAGE
			if spellID == 2139 then -- COUNTERSPELL
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[TARCAST]"] = extraspellinfo, ["[TARLINK]"] = extraspellinfolink,}
				if RSA.db.profile.Mage.Spells.Counterspell.Messages.Start ~= "" then
					if RSA.db.profile.Mage.Spells.Counterspell.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Mage.Spells.Counterspell.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Mage.Spells.Counterspell.CustomChannel.Channel)
					end
					if RSA.db.profile.Mage.Spells.Counterspell.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Mage.Spells.Counterspell.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Mage.Spells.Counterspell.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Mage.Spells.Counterspell.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- COUNTERSPELL			
			
			-- PALADIN
			if spellID == 853 then -- HAMMER OF JUSTICE INTERRUPT
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[TARCAST]"] = extraspellinfo, ["[TARLINK]"] = extraspellinfolink,}
				if RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.HammerOfJustice.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HammerOfJustice.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.HammerOfJustice.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HammerOfJustice.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HammerOfJustice.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HammerOfJustice.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HammerOfJustice.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HammerOfJustice.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HAMMER OF JUSTICE INTERRUPT			

			-- ROGUE
			if spellID == 1766 then -- KICK
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[TARCAST]"] = extraspellinfo, ["[TARLINK]"] = extraspellinfolink,}
				if RSA.db.profile.Rogue.Spells.Kick.Messages.Start ~= "" then
					if RSA.db.profile.Rogue.Spells.Kick.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Kick.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Rogue.Spells.Kick.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Kick.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Kick.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Kick.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Kick.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Kick.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- KICK			
			
			-- SHAMAN
			if spellID == 57994 then -- WIND SHEAR
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[TARCAST]"] = extraspellinfo, ["[TARLINK]"] = extraspellinfolink,}
				if RSA.db.profile.Shaman.Spells.WindShear.Messages.Start ~= "" then
					if RSA.db.profile.Shaman.Spells.WindShear.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.WindShear.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Shaman.Spells.WindShear.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.WindShear.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.WindShear.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.WindShear.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.WindShear.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.WindShear.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- WIND SHEAR			
			
			-- WARLOCK
			if spellID == 19647 then -- SPELL LOCK
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[TARCAST]"] = extraspellinfo, ["[TARLINK]"] = extraspellinfolink,}
				if RSA.db.profile.Warlock.Spells.SpellLock.Messages.Start ~= "" then
					if RSA.db.profile.Warlock.Spells.SpellLock.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.SpellLock.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.SpellLock.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.SpellLock.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.SpellLock.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.SpellLock.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.SpellLock.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SPELL LOCK

			-- WARRIOR
			if spellID == 6552 then -- PUMMEL
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[TARCAST]"] = extraspellinfo, ["[TARLINK]"] = extraspellinfolink,}
				if RSA.db.profile.Warrior.Spells.Pummel.Messages.Start ~= "" then
					if RSA.db.profile.Warrior.Spells.Pummel.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Pummel.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.Pummel.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Pummel.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Pummel.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Pummel.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Pummel.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Pummel.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- PUMMEL
			if spellID == 72 then -- SHIELD BASH
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[TARCAST]"] = extraspellinfo, ["[TARLINK]"] = extraspellinfolink,}
				if RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Start ~= "" then
					if RSA.db.profile.Warrior.Spells.ShieldBash.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.ShieldBash.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Start, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.ShieldBash.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.ShieldBash.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.ShieldBash.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.ShieldBash.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.ShieldBash.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.ShieldBash.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SHIELD BASH			
			
		end -- IF EVENT IS SPELL_INTERRUPT
		
		
		if event == "SPELL_HEAL" then
			if spellID == 633 then -- LAY ON HANDS
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AMOUNT]"] = missType,}
				if RSA.db.profile.Paladin.Spells.LayOnHands.Messages.Start ~= "" then
					if RSA.db.profile.Paladin.Spells.LayOnHands.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.LayOnHands.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.LayOnHands.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.LayOnHands.Whisper == true and dest ~= pName  then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You", ["[AMOUNT]"] = missType,}
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.LayOnHands.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "dest", ["[AMOUNT]"] = missType,}
					end
					if RSA.db.profile.Paladin.Spells.LayOnHands.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.LayOnHands.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.LayOnHands.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.LayOnHands.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.LayOnHands.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.LayOnHands.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.LayOnHands.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.LayOnHands.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.LayOnHands.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.LayOnHands.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.LayOnHands.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- LAY ON HANDS

			if spellID == 66235 then -- ARDENT DEFENDER HEAL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AMOUNT]"] = missType,}
				if RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Heal ~= "" then
					if RSA.db.profile.Paladin.Spells.ArdentDefender.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Heal, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Heal, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.ArdentDefender.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Heal, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.ArdentDefender.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.ArdentDefender.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Heal, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.ArdentDefender.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Heal, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.ArdentDefender.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Heal, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.ArdentDefender.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Heal, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- ARDENT DEFENDER HEAL

		end -- IF EVENT IS SPELL_HEAL
		
		
		if event == "SPELL_AURA_REMOVED" then
			-- DEATH KNIGHT
			if spellID == 48792 then -- ICEBOUND FORTITUDE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.End ~= "" then
					if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.IceboundFortitude.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- ICEBOUND FORTITUDE
			if spellID == 55233 then -- VAMPIRIC BLOOD
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.End ~= "" then
					if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.VampiricBlood.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.VampiricBlood.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.VampiricBlood.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- VAMPIRIC BLOOD				
			if spellID == 49222 then -- BONE SHIELD
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.End ~= "" then
					if RSA.db.profile.DeathKnight.Spells.BoneShield.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.BoneShield.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.BoneShield.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.BoneShield.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.BoneShield.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.BoneShield.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.BoneShield.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.BoneShield.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BONE SHIELD	
			if spellID == 48707 then -- ANTI MAGIC SHELL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.DeathKnight.Spells.AMS.Messages.End ~= "" then
					if RSA.db.profile.DeathKnight.Spells.AMS.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.AMS.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.AMS.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.AMS.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.AMS.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.AMS.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.AMS.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.AMS.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.AMS.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- ANTI MAGIC SHELL				
			
			-- DRUID
			if spellID == 29166 then -- INNERVATE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.Innervate.Messages.End ~= "" then
					if RSA.db.profile.Druid.Spells.Innervate.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Innervate.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Druid.Spells.Innervate.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Innervate.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Innervate.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Innervate.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Innervate.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Innervate.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Innervate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- INNERVATE				
			if spellID == 2637 then -- HIBERNATE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.Hibernate.Messages.End ~= "" then
					if RSA.db.profile.Druid.Spells.Hibernate.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Hibernate.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Hibernate.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Hibernate.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Hibernate.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Hibernate.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HIBERNATE
			if spellID == 33786 then -- CYCLONE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.Cyclone.Messages.End ~= "" then
					if RSA.db.profile.Druid.Spells.Cyclone.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Cyclone.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Cyclone.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Cyclone.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Cyclone.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Cyclone.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- CYCLONE
			if spellID == 22842 then -- FRENZIED REGENERATION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.End ~= "" then
					if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Druid.Spells.FrenziedRegeneration.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.FrenziedRegeneration.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.FrenziedRegeneration.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- FRENZIED REGENERATION
			if spellID == 61336 then -- SURVIVAL INSTINCTS
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.End ~= "" then
					if RSA.db.profile.Druid.Spells.SurvivalInstincts.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.SurvivalInstincts.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Druid.Spells.SurvivalInstincts.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.SurvivalInstincts.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.SurvivalInstincts.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.SurvivalInstincts.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.SurvivalInstincts.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.SurvivalInstincts.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SURVIVAL INSTINCTS	
			if spellID == 22812 then -- BARKSKIN
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Druid.Spells.Barkskin.Messages.End ~= "" then
					if RSA.db.profile.Druid.Spells.Barkskin.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Barkskin.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Barkskin.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Barkskin.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Barkskin.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Barkskin.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Barkskin.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Barkskin.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BARKSKIN	
			
			-- MAGE
			if spellID == 118 or spellID == 61305 or spellID == 28272 or spellID == 61721 or spellID == 61780 or spellID == 28271 then -- POLYMORPH
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Mage.Spells.Polymorph.Messages.End ~= "" then
					if RSA.db.profile.Mage.Spells.Polymorph.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Channel)
					end
					if RSA.db.profile.Mage.Spells.Polymorph.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Mage.Spells.Polymorph.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Mage.Spells.Polymorph.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Mage.Spells.Polymorph.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- POLYMORPH
			
			-- PALADIN
			if spellID == 31821 then -- AURA MASTERY
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.AuraMastery.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.AuraMastery.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.AuraMastery.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.AuraMastery.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.AuraMastery.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.AuraMastery.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.AuraMastery.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.AuraMastery.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.AuraMastery.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.AuraMastery.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- AURA MASTERY
			if spellID == 498 then -- DIVINE PROTECTION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.DivineProtection.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.DivineProtection.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.DivineProtection.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.DivineProtection.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.DivineProtection.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.DivineProtection.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.DivineProtection.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.DivineProtection.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.DivineProtection.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.DivineProtection.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DIVINE PROTECTION
			if spellID == 25771 and dest == pName then -- FORBEARANCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.Forbearance.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.Forbearance.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					--[[if RSA.db.profile.Paladin.Spells.Forbearance.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.Forbearance.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.Forbearance.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.Forbearance.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.Forbearance.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.Forbearance.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Forbearance.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.Forbearance.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end]]--
				end
			end -- FORBEARANCE
			if spellID == 70940 and dest == pName then -- DIVINE GUARDIAN
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.DivineGuardian.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.DivineGuardian.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.DivineGuardian.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.DivineGuardian.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.DivineGuardian.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.DivineGuardian.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.DivineGuardian.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.DivineGuardian.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.DivineGuardian.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DIVINE GUARDIAN
			if spellID == 1044 then -- HAND OF FREEDOM
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.HandOfFreedom.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HandOfFreedom.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Paladin.Spells.HandOfFreedom.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HandOfFreedom.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HandOfFreedom.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HandOfFreedom.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HandOfFreedom.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HandOfFreedom.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HAND OF FREEDOM
			if spellID == 1022 then -- HAND OF PROTECTION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.HandOfProtection.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HandOfProtection.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.End, ".%a+.", RSA_String_Replace), dest)
							RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Paladin.Spells.HandOfProtection.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HandOfProtection.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HandOfProtection.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HandOfProtection.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HandOfProtection.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HandOfProtection.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HAND OF PROTECTION
			if spellID == 6940 then -- HAND OF SACRIFICE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Paladin.Spells.HandOfSacrifice.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HandOfSacrifice.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HandOfSacrifice.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HAND OF SACRIFICE
			if spellID == 1038 then -- HAND OF SALVATION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.HandOfSalvation.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HandOfSalvation.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Paladin.Spells.HandOfSalvation.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HandOfSalvation.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HandOfSalvation.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HandOfSalvation.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HandOfSalvation.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HandOfSalvation.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HAND OF SALVATION
			if spellID == 20066 then -- REPENTANCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.Repentance.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.Repentance.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.Repentance.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.Repentance.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.Repentance.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.Repentance.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Repentance.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- REPENTANCE
			if spellID == 53563 then -- BEACON OF LIGHT
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Paladin.Spells.Beacon.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.Beacon.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.Beacon.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Paladin.Spells.Beacon.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.Beacon.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.Beacon.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.Beacon.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.Beacon.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Beacon.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.Beacon.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BEACON OF LIGHT

			-- PRIEST
			if spellID == 64843 then -- DIVINE HYMN
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.DivineHymn.Messages.End ~= "" then
					if RSA.db.profile.Priest.Spells.DivineHymn.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.DivineHymn.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Priest.Spells.DivineHymn.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.DivineHymn.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.DivineHymn.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.DivineHymn.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.DivineHymn.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.DivineHymn.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.DivineHymn.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DIVINE HYMN
			if spellID == 64901 then -- HYMN OF HOPE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.HymnOfHope.Messages.End ~= "" then
					if RSA.db.profile.Priest.Spells.HymnOfHope.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.HymnOfHope.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Priest.Spells.HymnOfHope.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.HymnOfHope.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.HymnOfHope.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.HymnOfHope.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.HymnOfHope.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.HymnOfHope.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.HymnOfHope.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HYMN OF HOPE			
			if spellID == 6346 then -- FEAR WARD
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.FearWard.Messages.End ~= "" then
					if RSA.db.profile.Priest.Spells.FearWard.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.FearWard.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Priest.Spells.FearWard.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.FearWard.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.FearWard.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.FearWard.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.FearWard.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.FearWard.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.FearWard.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- FEAR WARD
			if spellID == 1706 then -- LEVITATE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.Levitate.Messages.End ~= "" then
					if RSA.db.profile.Priest.Spells.Levitate.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.Levitate.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Priest.Spells.Levitate.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.Levitate.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.Levitate.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.Levitate.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.Levitate.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Levitate.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.Levitate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- LEVITATE				
			if spellID == 9484 then -- SHACKLE UNDEAD
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.ShackleUndead.Messages.End ~= "" then
					if RSA.db.profile.Priest.Spells.ShackleUndead.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.ShackleUndead.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.ShackleUndead.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.ShackleUndead.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.ShackleUndead.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SHACKLE UNDEAD				
			if spellID == 47788 then -- GUARDIAN SPIRIT
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.End ~= "" then
					if RSA.db.profile.Priest.Spells.GuardianSpirit.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.GuardianSpirit.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Priest.Spells.GuardianSpirit.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.GuardianSpirit.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.GuardianSpirit.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.GuardianSpirit.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.GuardianSpirit.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.GuardianSpirit.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- GUARDIAN SPIRIT
			if spellID == 33206 then -- PAIN SUPPRESSION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.PainSuppression.Messages.End ~= "" then
					if RSA.db.profile.Priest.Spells.PainSuppression.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.PainSuppression.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Priest.Spells.PainSuppression.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.PainSuppression.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.PainSuppression.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.PainSuppression.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.PainSuppression.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.PainSuppression.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.PainSuppression.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- PAIN SUPPRESSION			
			if spellID == 10060 then -- POWER INFUSION
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Priest.Spells.PowerInfusion.Messages.End ~= "" then
					if RSA.db.profile.Priest.Spells.PowerInfusion.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.PowerInfusion.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Priest.Spells.PowerInfusion.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.PowerInfusion.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.PowerInfusion.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.PowerInfusion.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.PowerInfusion.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.PowerInfusion.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.PowerInfusion.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- POWER INFUSION

			-- ROGUE
			if spellID == 6770 then -- SAP
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Rogue.Spells.Sap.Messages.End ~= "" then
					if RSA.db.profile.Rogue.Spells.Sap.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Sap.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Sap.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Sap.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Sap.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Sap.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SAP				
			if spellID == 51722 then -- DISMANTLE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Rogue.Spells.Dismantle.Messages.End ~= "" then
					if RSA.db.profile.Rogue.Spells.Dismantle.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Dismantle.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Dismantle.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Dismantle.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Dismantle.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Dismantle.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DISMANTLE			
			if spellID == 2094 then -- Blind
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Rogue.Spells.Blind.Messages.End ~= "" then
					if RSA.db.profile.Rogue.Spells.Blind.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Blind.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Blind.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Blind.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Blind.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- Blind

			-- SHAMAN
			if spellID == 51514 then -- HEX
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Shaman.Spells.Hex.Messages.End ~= "" then
					if RSA.db.profile.Shaman.Spells.Hex.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.Hex.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.Hex.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.Hex.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.Hex.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.Hex.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HEX
			
			-- WARLOCK
			if spellID == 18647 then -- BANISH
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warlock.Spells.Banish.Messages.End ~= "" then
					if RSA.db.profile.Warlock.Spells.Banish.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Banish.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Banish.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Banish.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Banish.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BANISH
			if spellID == 5782 then -- FEAR
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warlock.Spells.Fear.Messages.End ~= "" then
					if RSA.db.profile.Warlock.Spells.Fear.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Fear.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Fear.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Fear.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Fear.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- FEAR
			if spellID == 6358 then -- SEDUCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warlock.Spells.Seduce.Messages.End ~= "" then
					if RSA.db.profile.Warlock.Spells.Seduce.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Seduce.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Seduce.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Seduce.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Seduce.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SEDUCE			
			
			-- WARRIOR
			if spellID == 64382 then -- SHATTERING THROW
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.End ~= "" then
					if RSA.db.profile.Warrior.Spells.ShatteringThrow.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.ShatteringThrow.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.ShatteringThrow.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.ShatteringThrow.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.ShatteringThrow.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.ShatteringThrow.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.ShatteringThrow.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.ShatteringThrow.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SHATTERING THROW			
			if spellID == 50720 then -- VIGILANCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.Vigilance.Messages.End ~= "" then
					if RSA.db.profile.Warrior.Spells.Vigilance.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Vigilance.Whisper == true and dest ~= pName then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You",}
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Warrior.Spells.Vigilance.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Vigilance.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Vigilance.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Vigilance.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Vigilance.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Vigilance.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Vigilance.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- VIGILANCE			
			if spellID == 871 then -- SHIELD WALL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.ShieldWall.Messages.End ~= "" then
					if RSA.db.profile.Warrior.Spells.ShieldWall.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.ShieldWall.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.ShieldWall.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.ShieldWall.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.ShieldWall.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.ShieldWall.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.ShieldWall.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.ShieldWall.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.ShieldWall.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SHIELD WALL
			if spellID == 12976 then -- LAST STAND
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.LastStand.Messages.End ~= "" then
					if RSA.db.profile.Warrior.Spells.LastStand.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.LastStand.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.LastStand.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.LastStand.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.LastStand.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.LastStand.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.LastStand.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.LastStand.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.LastStand.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- LAST STAND
			if spellID == 676 then -- DISARM
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.Disarm.Messages.End ~= "" then
					if RSA.db.profile.Warrior.Spells.Disarm.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Disarm.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Disarm.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Disarm.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Disarm.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Disarm.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DISARM	
			
		end -- IF EVENT IS SPELL_AURA_REMOVED
		
		
		if event == "SPELL_STOLEN" then
			-- MAGE
			if spellID == 30449 then -- SPELLSTEAL
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
				if RSA.db.profile.Mage.Spells.Spellsteal.Messages.Start ~= "" then
					if RSA.db.profile.Mage.Spells.Spellsteal.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Mage.Spells.Spellsteal.Whisper == true and dest ~= pName and dest ~= pName and UnitIsPlayer(dest) and UnitIsFriend(pName, dest) then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You", ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
						Print_Whisper(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
					end
					if RSA.db.profile.Mage.Spells.Spellsteal.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Mage.Spells.Spellsteal.CustomChannel.Channel)
					end
					if RSA.db.profile.Mage.Spells.Spellsteal.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Mage.Spells.Spellsteal.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Mage.Spells.Spellsteal.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Mage.Spells.Spellsteal.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SPELLSTEAL					
		end -- IF EVENT IS SPELL_STOLEN
		
		
		if event == "SPELL_DISPEL" then	
			-- PRIEST
			if spellID == 527 then -- DISPEL MAGIC
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
				if RSA.db.profile.Priest.Spells.DispelMagic.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.DispelMagic.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.DispelMagic.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.DispelMagic.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.DispelMagic.Whisper == true and dest ~= pName and dest ~= pName and UnitIsPlayer(dest) and UnitIsFriend(pName, dest) then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You", ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
						Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.DispelMagic.Messages.Start, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
					end
					if RSA.db.profile.Priest.Spells.DispelMagic.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.DispelMagic.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.DispelMagic.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.DispelMagic.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.DispelMagic.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.DispelMagic.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.DispelMagic.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.DispelMagic.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.DispelMagic.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.DispelMagic.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.DispelMagic.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DISPEL MAGIC			
			if spellID == 528 then -- CURE DISEASE
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
				if RSA.db.profile.Priest.Spells.CureDisease.Messages.Start ~= "" then
					if RSA.db.profile.Priest.Spells.CureDisease.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.CureDisease.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.CureDisease.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.CureDisease.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.CureDisease.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.CureDisease.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.CureDisease.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.CureDisease.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.CureDisease.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.CureDisease.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.CureDisease.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.CureDisease.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.CureDisease.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.CureDisease.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- CURE DISEASE

			
			-- SHAMAN
			if spellID == 370 then -- PURGE
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
				if RSA.db.profile.Shaman.Spells.Purge.Messages.Start ~= "" then
					if RSA.db.profile.Shaman.Spells.Purge.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.Purge.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.Purge.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.Purge.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.Purge.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.Purge.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.Purge.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- PURGE
			if spellID == 51886 then -- CLEANSE SPIRIT
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
				if RSA.db.profile.Shaman.Spells.CleanseSpirit.Messages.Start ~= "" then
					if RSA.db.profile.Shaman.Spells.CleanseSpirit.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.CleanseSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.CleanseSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.CleanseSpirit.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.CleanseSpirit.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.CleanseSpirit.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.CleanseSpirit.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.CleanseSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.CleanseSpirit.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.CleanseSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.CleanseSpirit.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.CleanseSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.CleanseSpirit.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.CleanseSpirit.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- CLEANSE SPIRIT			
			
		
			-- WARLOCK
			if spellID == 19505 then -- DEVOUR MAGIC
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType) extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
				if RSA.db.profile.Warlock.Spells.Devour.Messages.Start ~= "" then
					if RSA.db.profile.Warlock.Spells.Devour.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Devour.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.Start, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Devour.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Devour.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.Start, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Devour.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Devour.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.Start, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Devour.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.Start, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DEVOUR MAGIC			
			
		end -- IF EVENT IS SPELL_DISPEL
		
		
		if event == "SPELL_DISPEL_FAILED" then
			-- SHAMAN
			if spellID == 370 then -- PURGE
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
				if RSA.db.profile.Shaman.Spells.Purge.Messages.End ~= "" then
					if RSA.db.profile.Shaman.Spells.Purge.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.Purge.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.Purge.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.Purge.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.Purge.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.Purge.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.Purge.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.Purge.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- PURGE		
		
			-- WARLOCK
			if spellID == 19505 then -- DEVOUR MAGIC
				spellinfo = GetSpellInfo(spellID)
				spelllinkinfo = GetSpellLink(spellID)
				extraspellinfo = GetSpellInfo(missType)
				extraspellinfolink = GetSpellLink(missType)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
				if RSA.db.profile.Warlock.Spells.Devour.Messages.End ~= "" then
					if RSA.db.profile.Warlock.Spells.Devour.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Devour.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Devour.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Devour.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Devour.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Devour.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Devour.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Devour.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DEVOUR MAGIC			
		
		end -- IF EVENT IS SPELL_DISPEL_FAILED
		
		
		if event == "SPELL_MISSED" and missType ~= "IMMUNE" then
			-- DEATH KNIGHT
			if spellID == 56222 then -- DARK COMMAND
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.End ~= "" then
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.DarkCommand.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.DarkCommand.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.DarkCommand.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.DarkCommand.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- DARK COMMAND
			if spellID == 49560 or spellID == 49576 then -- DEATH GRIP
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.End ~= "" then
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.DeathGrip.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.DeathGrip.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.DeathGrip.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.DeathGrip.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- DEATH GRIP				
			if spellID == 47476 then -- STRANGULATE
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.End ~= "" then
					if RSA.db.profile.DeathKnight.Spells.Strangulate.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.Strangulate.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.Strangulate.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.Strangulate.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.Strangulate.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.Strangulate.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.Strangulate.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.Strangulate.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- STRANGULATE
			if spellID == 47528 then -- MIND FREEZE
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.End ~= "" then
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.MindFreeze.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.MindFreeze.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.MindFreeze.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.MindFreeze.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- MIND FREEZE

			-- DRUID
			if spellID == 6795 then -- GROWL
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Druid.Spells.Growl.Messages.End ~= "" then
					if RSA.db.profile.Druid.Spells.Growl.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Growl.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Druid.Spells.Growl.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Growl.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Growl.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Growl.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Growl.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Growl.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- GROWL			
			
			-- MAGE
			if spellID == 2139 then -- COUNTERSPELL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Mage.Spells.Counterspell.Messages.End ~= "" then
					if RSA.db.profile.Mage.Spells.Counterspell.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Mage.Spells.Counterspell.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Mage.Spells.Counterspell.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Mage.Spells.Counterspell.CustomChannel.Channel)
					end
					if RSA.db.profile.Mage.Spells.Counterspell.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Mage.Spells.Counterspell.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Mage.Spells.Counterspell.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Mage.Spells.Counterspell.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- COUNTERSPELL
			if spellID == 30449 then -- SPELLSTEAL
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Mage.Spells.Spellsteal.Messages.End ~= "" then
					if RSA.db.profile.Mage.Spells.Spellsteal.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Mage.Spells.Spellsteal.Whisper == true and dest ~= pName and dest ~= pName and UnitIsPlayer(dest) and UnitIsFriend(pName, dest) then
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = "You", ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
						Print_Whisper(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.End, ".%a+.", RSA_String_Replace), dest)
						RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AURA]"] = extraspellinfo, ["[AURALINK]"] = extraspellinfolink,}
					end
					if RSA.db.profile.Mage.Spells.Spellsteal.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Mage.Spells.Spellsteal.CustomChannel.Channel)
					end
					if RSA.db.profile.Mage.Spells.Spellsteal.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Mage.Spells.Spellsteal.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Mage.Spells.Spellsteal.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Mage.Spells.Spellsteal.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Mage.Spells.Spellsteal.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SPELLSTEAL			
			
			-- PALADIN
			if spellID == 62124 then -- HAND OF RECKONING
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HandOfReckoning.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HandOfReckoning.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HandOfReckoning.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HandOfReckoning.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- HAND OF RECKONING
			if spellID == 31789 then -- RIGHTEOUS DEFENSE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.RighteousDefense.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.RighteousDefense.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.RighteousDefense.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.RighteousDefense.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.RighteousDefense.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.RighteousDefense.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.RighteousDefense.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.RighteousDefense.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- RIGHTEOUS DEFENSE
			if spellID == 853 then -- HAMMER OF JUSTICE INTERRUPT
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.End ~= "" then
					if RSA.db.profile.Paladin.Spells.HammerOfJustice.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HammerOfJustice.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.HammerOfJustice.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HammerOfJustice.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HammerOfJustice.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HammerOfJustice.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HammerOfJustice.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HammerOfJustice.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HAMMER OF JUSTICE INTERRUPT

			-- ROGUE
			if spellID == 1766 then -- KICK
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Rogue.Spells.Kick.Messages.End ~= "" then
					if RSA.db.profile.Rogue.Spells.Kick.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Kick.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Rogue.Spells.Kick.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Kick.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Kick.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Kick.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Kick.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Kick.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- KICK			
			
			-- SHAMAN
			if spellID == 57994 then -- WIND SHEAR
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Shaman.Spells.WindShear.Messages.End ~= "" then
					if RSA.db.profile.Shaman.Spells.WindShear.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.WindShear.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Shaman.Spells.WindShear.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.WindShear.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.WindShear.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.WindShear.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.WindShear.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.WindShear.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- WIND SHEAR				
			
			-- WARLOCK
			if spellID == 19647 then -- SPELL LOCK
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Warlock.Spells.SpellLock.Messages.End ~= "" then
					if RSA.db.profile.Warlock.Spells.SpellLock.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.SpellLock.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warlock.Spells.SpellLock.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.SpellLock.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.SpellLock.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.SpellLock.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.SpellLock.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.SpellLock.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SPELL LOCK
			if spellID == 17735 then -- SUFFERING
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Warlock.Spells.Suffering.Messages.End ~= "" then
					if RSA.db.profile.Warlock.Spells.Suffering.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Suffering.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warlock.Spells.Suffering.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Suffering.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Suffering.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Suffering.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Suffering.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Suffering.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- SUFFERING			

			-- WARRIOR
			if spellID == 355 then -- TAUNT
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Warrior.Spells.Taunt.Messages.End ~= "" then
					if RSA.db.profile.Warrior.Spells.Taunt.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Taunt.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.Taunt.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Taunt.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Taunt.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Taunt.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Taunt.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Taunt.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- TAUNT	
			if spellID == 6552 then -- PUMMEL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Warrior.Spells.Pummel.Messages.End ~= "" then
					if RSA.db.profile.Warrior.Spells.Pummel.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Pummel.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.Pummel.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Pummel.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Pummel.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Pummel.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Pummel.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Pummel.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- PUMMEL
			if spellID == 72 then -- SHIELD BASH
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Warrior.Spells.ShieldBash.Messages.End ~= "" then
					if RSA.db.profile.Warrior.Spells.ShieldBash.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.ShieldBash.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.ShieldBash.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.ShieldBash.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.ShieldBash.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.ShieldBash.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.ShieldBash.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.ShieldBash.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SHIELD BASH			
			
			if spellID == 33786 then -- CYCLONE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Druid.Spells.Cyclone.Messages.Resisted ~= "" then
					if RSA.db.profile.Druid.Spells.Cyclone.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Cyclone.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Cyclone.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Cyclone.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Cyclone.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- CYCLONE
			if spellID == 2637 then -- HIBERNATE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Druid.Spells.Hibernate.Messages.Resisted ~= "" then
					if RSA.db.profile.Druid.Spells.Hibernate.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Hibernate.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Hibernate.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Hibernate.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Hibernate.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HIBERNATE
			if spellID == 118 or spellID == 61305 or spellID == 28272 or spellID == 61721 or spellID == 61780 or spellID == 28271 then -- POLYMORPH
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Mage.Spells.Polymorph.Messages.Resisted ~= "" then
					if RSA.db.profile.Mage.Spells.Polymorph.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Channel)
					end
					if RSA.db.profile.Mage.Spells.Polymorph.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Mage.Spells.Polymorph.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Mage.Spells.Polymorph.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Mage.Spells.Polymorph.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- POLYMORPH
			if spellID == 9484 then -- SHACKLEUNDEAD
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Resisted ~= "" then
					if RSA.db.profile.Priest.Spells.ShackleUndead.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.ShackleUndead.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.ShackleUndead.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.ShackleUndead.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.ShackleUndead.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SHACKLEUNDEAD
			if spellID == 6770 then -- SAP
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Rogue.Spells.Sap.Messages.Resisted ~= "" then
					if RSA.db.profile.Rogue.Spells.Sap.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Sap.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Sap.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Sap.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Sap.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SAP
			if spellID == 2094 then -- BLIND
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Rogue.Spells.Blind.Messages.Resisted ~= "" then
					if RSA.db.profile.Rogue.Spells.Blind.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Blind.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Blind.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Blind.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Blind.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BLIND
			if spellID == 51514 then -- HEX
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Shaman.Spells.Hex.Messages.Resisted ~= "" then
					if RSA.db.profile.Shaman.Spells.Hex.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.Hex.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.Hex.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.Hex.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.Hex.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HEX
			if spellID == 18647 then -- BANISH
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Warlock.Spells.Banish.Messages.Resisted ~= "" then
					if RSA.db.profile.Warlock.Spells.Banish.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Banish.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Banish.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Banish.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Banish.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BANISH
			if spellID == 5782 then -- FEAR
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Warlock.Spells.Fear.Messages.Resisted ~= "" then
					if RSA.db.profile.Warlock.Spells.Fear.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Fear.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Fear.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Fear.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Fear.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- FEAR
			if spellID == 6358 then -- SEDUCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Warlock.Spells.Seduce.Messages.Resisted ~= "" then
					if RSA.db.profile.Warlock.Spells.Seduce.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Seduce.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Seduce.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Seduce.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Seduce.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SEDUCE
			if spellID == 20066 then -- REPENTANCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Paladin.Spells.Repentance.Messages.Resisted ~= "" then
					if RSA.db.profile.Paladin.Spells.Repentance.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.Repentance.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.Repentance.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.Repentance.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Repentance.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- REPENTANCE
			if spellID == 51722 then -- DISMANTLE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Rogue.Spells.Dismantle.Messages.Resisted ~= "" then
					if RSA.db.profile.Rogue.Spells.Dismantle.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Dismantle.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Dismantle.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Dismantle.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Dismantle.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DISMANTLE
			if spellID == 676 then -- DISARM
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				if missType == "MISS" then
					missinfo = "Missed"
				elseif missType ~= "MISS" then
					missinfo = "Resisted"
				end
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = missinfo,}
				if RSA.db.profile.Warrior.Spells.Disarm.Messages.Resisted ~= "" then
					if RSA.db.profile.Warrior.Spells.Disarm.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Resisted, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Disarm.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Resisted, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Disarm.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Disarm.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Disarm.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Resisted, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DISARM
		end -- IF EVENT IS SPELL_MISSED AND NOT IMMUNE
		
		
		if event == "SPELL_MISSED" and missType == "IMMUNE" then
			-- DEATH KNIGHT
			if spellID == 56222 then -- DARK COMMAND
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Immune ~= "" then
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.DarkCommand.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.DarkCommand.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.DarkCommand.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.DarkCommand.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.DarkCommand.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- DARK COMMAND
			if spellID == 49560 or spellID == 49576 then -- DEATH GRIP
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Immune ~= "" then
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.DeathGrip.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.DeathGrip.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.DeathGrip.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.DeathGrip.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.DeathGrip.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- DEATH GRIP					
			if spellID == 47476 then -- STRANGULATE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Immune ~= "" then
					if RSA.db.profile.DeathKnight.Spells.Strangulate.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.Strangulate.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.Strangulate.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.Strangulate.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.Strangulate.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.Strangulate.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.Strangulate.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.Strangulate.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- STRANGULATE
			if spellID == 47528 then -- MIND FREEZE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Immune ~= "" then
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.DeathKnight.Spells.MindFreeze.CustomChannel.Channel)
					end
					if RSA.db.profile.DeathKnight.Spells.MindFreeze.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.DeathKnight.Spells.MindFreeze.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.DeathKnight.Spells.MindFreeze.Party == true then
							Print_Party(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.DeathKnight.Spells.MindFreeze.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- MIND FREEZE

			-- DRUID
			if spellID == 6795 then -- GROWL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Druid.Spells.Growl.Messages.Immune ~= "" then
					if RSA.db.profile.Druid.Spells.Growl.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Growl.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Druid.Spells.Growl.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Growl.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Growl.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Growl.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Growl.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Growl.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Growl.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- GROWL			

			
			-- MAGE
			if spellID == 2139 then -- COUNTERSPELL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Mage.Spells.Counterspell.Messages.Immune ~= "" then
					if RSA.db.profile.Mage.Spells.Counterspell.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Mage.Spells.Counterspell.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Mage.Spells.Counterspell.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Mage.Spells.Counterspell.CustomChannel.Channel)
					end
					if RSA.db.profile.Mage.Spells.Counterspell.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Mage.Spells.Counterspell.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Mage.Spells.Counterspell.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Mage.Spells.Counterspell.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Mage.Spells.Counterspell.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- COUNTERSPELL
			
			-- PALADIN
			if spellID == 62124 then -- HAND OF RECKONING
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Immune ~= "" then
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.HandOfReckoning.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.HandOfReckoning.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.HandOfReckoning.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.HandOfReckoning.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.HandOfReckoning.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- HAND OF RECKONING
			if spellID == 31789 then -- RIGHTEOUS DEFENSE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Immune ~= "" then
					if RSA.db.profile.Paladin.Spells.RighteousDefense.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.RighteousDefense.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Paladin.Spells.RighteousDefense.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.RighteousDefense.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.RighteousDefense.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.RighteousDefense.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.RighteousDefense.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.RighteousDefense.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.RighteousDefense.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- RIGHTEOUS DEFENSE

			-- ROGUE
			if spellID == 1766 then -- KICK
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Rogue.Spells.Kick.Messages.Immune ~= "" then
					if RSA.db.profile.Rogue.Spells.Kick.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Kick.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Rogue.Spells.Kick.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Kick.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Kick.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Kick.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Kick.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Kick.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Kick.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- KICK			
			
			-- SHAMAN
			if spellID == 57994 then -- WIND SHEAR
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Shaman.Spells.WindShear.Messages.Immune ~= "" then
					if RSA.db.profile.Shaman.Spells.WindShear.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.WindShear.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Shaman.Spells.WindShear.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.WindShear.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.WindShear.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.WindShear.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.WindShear.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.WindShear.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.WindShear.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- WIND SHEAR				
			
			-- WARLOCK
			if spellID == 19647 then -- SPELL LOCK
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Warlock.Spells.SpellLock.Messages.Immune ~= "" then
					if RSA.db.profile.Warlock.Spells.SpellLock.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.SpellLock.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warlock.Spells.SpellLock.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.SpellLock.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.SpellLock.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.SpellLock.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.SpellLock.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.SpellLock.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.SpellLock.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SPELL LOCK
			if spellID == 17735 then -- SUFFERING
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Warlock.Spells.Suffering.Messages.Immune ~= "" then
					if RSA.db.profile.Warlock.Spells.Suffering.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Suffering.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warlock.Spells.Suffering.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Suffering.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Suffering.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Suffering.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Suffering.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Suffering.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Suffering.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- SUFFERING			

			-- WARRIOR
			if spellID == 355 then -- TAUNT
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Warrior.Spells.Taunt.Messages.Immune ~= "" then
					if RSA.db.profile.Warrior.Spells.Taunt.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Taunt.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.Taunt.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Taunt.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Taunt.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Taunt.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Taunt.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Taunt.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Taunt.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end

				end
			end -- TAUNT	
			if spellID == 6552 then -- PUMMEL
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Warrior.Spells.Pummel.Messages.Immune ~= "" then
					if RSA.db.profile.Warrior.Spells.Pummel.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Pummel.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.Pummel.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Pummel.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Pummel.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Pummel.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Pummel.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Pummel.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Pummel.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- PUMMEL
			if spellID == 72 then -- SHIELD BASH
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Immune ~= "" then
					if RSA.db.profile.Warrior.Spells.ShieldBash.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.ShieldBash.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Immune, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Warrior.Spells.ShieldBash.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.ShieldBash.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.ShieldBash.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.ShieldBash.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.ShieldBash.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.ShieldBash.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.ShieldBash.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SHIELD BASH			
			
			if spellID == 33786 then -- CYCLONE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Druid.Spells.Cyclone.Messages.Immune ~= "" then
					if RSA.db.profile.Druid.Spells.Cyclone.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Cyclone.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Cyclone.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Cyclone.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Cyclone.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Cyclone.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- CYCLONE
			if spellID == 2637 then -- HIBERNATE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Druid.Spells.Hibernate.Messages.Immune ~= "" then
					if RSA.db.profile.Druid.Spells.Hibernate.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Channel)
					end
					if RSA.db.profile.Druid.Spells.Hibernate.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Druid.Spells.Hibernate.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Druid.Spells.Hibernate.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Hibernate.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Hibernate.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HIBERNATE
			if spellID == 118 or spellID == 61305 or spellID == 28272 or spellID == 61721 or spellID == 61780 or spellID == 28271 then -- POLYMORPH
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Mage.Spells.Polymorph.Messages.Immune ~= "" then
					if RSA.db.profile.Mage.Spells.Polymorph.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Channel)
					end
					if RSA.db.profile.Mage.Spells.Polymorph.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Mage.Spells.Polymorph.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Mage.Spells.Polymorph.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Mage.Spells.Polymorph.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Mage.Spells.Polymorph.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- POLYMORPH
			if spellID == 9484 then -- SHACKLEUNDEAD
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Immune ~= "" then
					if RSA.db.profile.Priest.Spells.ShackleUndead.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Channel)
					end
					if RSA.db.profile.Priest.Spells.ShackleUndead.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Priest.Spells.ShackleUndead.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Priest.Spells.ShackleUndead.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Priest.Spells.ShackleUndead.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SHACKLEUNDEAD
			if spellID == 6770 then -- SAP
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Rogue.Spells.Sap.Messages.Immune ~= "" then
					if RSA.db.profile.Rogue.Spells.Sap.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Sap.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Sap.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Sap.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Sap.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Sap.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SAP
			if spellID == 2094 then -- BLIND
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Rogue.Spells.Blind.Messages.Immune ~= "" then
					if RSA.db.profile.Rogue.Spells.Blind.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Blind.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Blind.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Blind.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Blind.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Blind.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BLIND
			if spellID == 51514 then -- HEX
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Shaman.Spells.Hex.Messages.Immune ~= "" then
					if RSA.db.profile.Shaman.Spells.Hex.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.Hex.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.Hex.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.Hex.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.Hex.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.Hex.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- HEX
			if spellID == 18647 then -- BANISH
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Warlock.Spells.Banish.Messages.Immune ~= "" then
					if RSA.db.profile.Warlock.Spells.Banish.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Banish.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Banish.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Banish.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Banish.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Banish.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- BANISH
			if spellID == 5782 then -- FEAR
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Warlock.Spells.Fear.Messages.Immune ~= "" then
					if RSA.db.profile.Warlock.Spells.Fear.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Fear.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Fear.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Fear.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Fear.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Fear.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- FEAR
			if spellID == 6358 then -- SEDUCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Warlock.Spells.Seduce.Messages.Immune ~= "" then
					if RSA.db.profile.Warlock.Spells.Seduce.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Channel)
					end
					if RSA.db.profile.Warlock.Spells.Seduce.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warlock.Spells.Seduce.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warlock.Spells.Seduce.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Seduce.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Seduce.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- SEDUCE
			if spellID == 20066 then -- REPENTANCE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Paladin.Spells.Repentance.Messages.Immune ~= "" then
					if RSA.db.profile.Paladin.Spells.Repentance.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Channel)
					end
					if RSA.db.profile.Paladin.Spells.Repentance.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Paladin.Spells.Repentance.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Paladin.Spells.Repentance.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Repentance.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.Repentance.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- REPENTANCE
			if spellID == 51722 then -- DISMANTLE
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Rogue.Spells.Dismantle.Messages.Immune ~= "" then
					if RSA.db.profile.Rogue.Spells.Dismantle.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Channel)
					end
					if RSA.db.profile.Rogue.Spells.Dismantle.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Rogue.Spells.Dismantle.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Rogue.Spells.Dismantle.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Rogue.Spells.Dismantle.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Rogue.Spells.Dismantle.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DISMANTLE
			if spellID == 676 then -- DISARM
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				spellinfo = GetSpellInfo(spellID) spelllinkinfo = GetSpellLink(spellID)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[MISSTYPE]"] = "Immune",}
				if RSA.db.profile.Warrior.Spells.Disarm.Messages.Immune ~= "" then
					if RSA.db.profile.Warrior.Spells.Disarm.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Immune, ".%a+.", RSA_String_Replace), RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Channel)
					end
					if RSA.db.profile.Warrior.Spells.Disarm.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Immune, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Warrior.Spells.Disarm.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Warrior.Spells.Disarm.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.Disarm.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.Disarm.Messages.Immune, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- DISARM
		end -- IF EVENT IS SPELL_MISSED AND IS IMMUNE
		
		if event == "UNIT_DESTROYED" then
			if dest == "Mana Tide Totem" then -- MANA TIDE TOTEM
				spellinfo = GetSpellInfo(16190) spelllinkinfo = GetSpellLink(16190)
				RSA_Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
				if RSA.db.profile.Shaman.Spells.ManaTide.Messages.End ~= "" then
					if RSA.db.profile.Shaman.Spells.ManaTide.Local == true then
						if RSA.db.profile.General.Local.RaidWarn == true then
							Print_Self_RW(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.General.Local.Chat == true then
							Print_Self(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.Shaman.Spells.ManaTide.Whisper == true then
						Print_Whisper(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.End, ".%a+.", RSA_String_Replace), dest)
					end
					if RSA.db.profile.Shaman.Spells.ManaTide.CustomChannel.Enabled == true then
						Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.End, ".%a+.", RSA_String_Replace), RSA.db.profile.Shaman.Spells.ManaTide.CustomChannel.Channel)
					end
					if RSA.db.profile.Shaman.Spells.ManaTide.Smart.Say == true then
						Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.End, ".%a+.", RSA_String_Replace))
					end
					if RSA.db.profile.General.Smart.RaidParty == true then
						if RSA.db.profile.Shaman.Spells.ManaTide.Smart.RaidParty == true then
							Print_Raid_Smart(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
					if RSA.db.profile.General.Smart.RaidParty == false then
						if RSA.db.profile.Shaman.Spells.ManaTide.Party == true then
							Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.End, ".%a+.", RSA_String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.ManaTide.Raid == true then
							Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.ManaTide.Messages.End, ".%a+.", RSA_String_Replace))
						end
					end
				end
			end -- MANA TIDE TOTEM			
		
		end -- IF EVENT IS UNIT_DESTROYED
		
	
	end -- IF SOURCE IS PLAYER

end) -- END ENTIRELY
CombatLogMonitor:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

----------------------------------
---- Spell Reminder Functions ----
----------------------------------
--[[ Detect what talent spec we are ]]--
	local numTalents, maxTemp, returnIndex
	local tt = {}
function RSA_GetSpec() -- GetPrimarySpecInfo(player) gets player's talent spec.
	numTalents = 0
	tt = wipe(tt)
	local name, iconTexture, pointsSpent, background
	local level = UnitLevel("player");
	local hasSpec = not ( level > 0 and level < 10 )
	for i = 1, GetNumTalentTabs() do
	local name, iconTexture, pointsSpent, background = GetTalentTabInfo(i)
	if numTalents <= pointsSpent then
		numTalents = pointsSpent
		tt[i] = {name, iconTexture, pointsSpent, background}
		returnIndex = i
	end
	end
	-- returns name, iconTexture, pointsSpent, background
	if hasSpec and GetNumTalentTabs() > 0 then
	return tt[returnIndex][1] -- Spec Name
	--, tempTable[returnIndex][2], tempTable[returnIndex][3], tempTable[returnIndex][4]
	end
end

--[[ Spell Reminder ]]--
local ReminderTimeElapsed = 0.0
RSA_Reminder = CreateFrame("Frame", "RSA:R")
local function Reminder(self, elapsed)
	if RSA.db.profile.General.Class == "DEATHKNIGHT" then -- Check Class, Set the Spell we're reminding about.
		ReminderSpell = RSA.db.profile.DeathKnight.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "DRUID" then
		ReminderSpell = RSA.db.profile.Druid.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "HUNTER" then
		ReminderSpell = RSA.db.profile.Hunter.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "MAGE" then
		ReminderSpell = RSA.db.profile.Mage.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "PALADIN" then
		ReminderSpell = RSA.db.profile.Paladin.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "PRIEST" then
		ReminderSpell = RSA.db.profile.Priest.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "ROGUE" then
		ReminderSpell = RSA.db.profile.Rogue.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "SHAMAN" then
		ReminderSpell = RSA.db.profile.Shaman.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "WARLOCK" then
		ReminderSpell = RSA.db.profile.Warlock.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "WARRIOR" then
		ReminderSpell = RSA.db.profile.Warrior.Reminders.SpellName
	end
	if ReminderSpell == "" then return end
	if RSA.db.profile.Reminders.DisableInPvP == true and UnitIsPVP("player") then return end
	ReminderTimeElapsed = ReminderTimeElapsed + elapsed
	if ReminderTimeElapsed < RSA.db.profile.Reminders.RemindInterval then return end
	ReminderTimeElapsed = ReminderTimeElapsed - floor(ReminderTimeElapsed)
	local name = UnitBuff("player", ReminderSpell)
	if name == ReminderSpell then
		RSA_Reminder:SetScript("OnUpdate", nil)
	end
	if UnitIsDeadOrGhost("player") == 1 then return end
	if RSA.db.profile.Reminders.EnableInSpec1 == true then
		if GetActiveTalentGroup("player") == 1 then
			if RSA.db.profile.Reminders.RemindChannels.Chat == true then
				Print_Self(ReminderSpell .. " is Missing!")
			end
			if RSA.db.profile.Reminders.RemindChannels.RaidWarn == true then
				Print_Self_RW(ReminderSpell .. " is Missing!")
			end
		end
	end
	if RSA.db.profile.Reminders.EnableInSpec2 == true then
		if GetActiveTalentGroup("player") == 2 then
			if RSA.db.profile.Reminders.RemindChannels.Chat == true then
				Print_Self(ReminderSpell .. " is Missing!")
			end
			if RSA.db.profile.Reminders.RemindChannels.RaidWarn == true then
				Print_Self_RW(ReminderSpell .. " is Missing!")
			end
		end
	end
end

RSA_Monitor = CreateFrame("Frame", "RSA:M")
local MonitorTimeElapsed = 0.0
local function Monitor(self, elapsed)
	MonitorTimeElapsed = MonitorTimeElapsed + elapsed
	if MonitorTimeElapsed < RSA.db.profile.Reminders.CheckInterval then return end
	MonitorTimeElapsed = MonitorTimeElapsed - floor(MonitorTimeElapsed)
	if RSA.db.profile.General.Class == "DEATHKNIGHT" then -- Check Class, Set the Spell we're reminding about.
		ReminderSpell = RSA.db.profile.DeathKnight.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "DRUID" then
		ReminderSpell = RSA.db.profile.Druid.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "HUNTER" then
		ReminderSpell = RSA.db.profile.Hunter.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "MAGE" then
		ReminderSpell = RSA.db.profile.Mage.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "PALADIN" then
		ReminderSpell = RSA.db.profile.Paladin.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "PRIEST" then
		ReminderSpell = RSA.db.profile.Priest.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "ROGUE" then
		ReminderSpell = RSA.db.profile.Rogue.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "SHAMAN" then
		ReminderSpell = RSA.db.profile.Shaman.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "WARLOCK" then
		ReminderSpell = RSA.db.profile.Warlock.Reminders.SpellName
	elseif RSA.db.profile.General.Class == "WARRIOR" then
		ReminderSpell = RSA.db.profile.Warrior.Reminders.SpellName
	end
	if ReminderSpell == "" then return end
	local name = UnitBuff("player", ReminderSpell)
	if name ~= ReminderSpell then
		RSA_Reminder:SetScript("OnUpdate", Reminder)
	end
end
RSA_Monitor:SetScript("OnUpdate", Monitor)