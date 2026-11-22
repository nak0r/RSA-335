********** RSA Changelog **********

Changes made on top of version 2.21 (the version numbers in RSA.toc and
RSA_Options.toc have NOT been changed).

Files modified:
  RSA/Core.lua
  RSA/Locale-enUS.lua
  RSA_Options/Options.lua

Install: copy Core.lua and Locale-enUS.lua into the RSA folder, and
Options.lua into the RSA_Options folder, replacing the existing files.
Existing users do not need to reset their profile; new settings pick up
their defaults automatically.


========== Added ==========

** Druid: Barkskin (spell ID 22812)
   - Announces when Barkskin goes up and when it fades (Start / End).
   - Self-only spell, so there is no Whisper option.
   - Defaults: Start = "[LINK] Activated!", End = "[LINK] Faded!".
     Announces to Raid / Party only; Local, Custom Channel and Say are off.
   - Core.lua: new defaults entry, a Start handler in SPELL_CAST_SUCCESS and
     an End handler in SPELL_AURA_REMOVED (same pattern as Survival
     Instincts).
   - Options.lua: new "Barkskin" settings page (sorted above Survival
     Instincts), and added to the "Set to all spells" custom channel list.

** Paladin: Ardent Defender now announces the amount healed
   - Ardent Defender's heal (spell ID 66235) is a separate spell from the
     buff already tracked (31852), so it previously never announced.
   - New "Heal" message for Ardent Defender, supporting [SPELL], [LINK],
     [TARGET] and [AMOUNT]. Default: "[LINK] healed for [AMOUNT]!"
   - Core.lua: new Messages.Heal default and a SPELL_HEAL handler (works the
     same way as Lay on Hands). No Whisper, since it only heals you.
   - Options.lua: new "Heal" text box on the Ardent Defender page; the
     page's help text now lists [AMOUNT].
   - Locale-enUS.lua: new strings L["Heal"] and L.DescSpellHealMessage.
   - Verified working in game.
   - The Start/End announcements for Ardent Defender were later removed
     (see "Removed" below); only the heal announcement remains.


========== Improved ==========

** Resist and Immune announcements for crowd control spells
   These spells previously announced Start and End only. They now also
   announce when they are resisted/missed and when the target is immune.

   Druid:    Cyclone, Hibernate
   Mage:     Polymorph
   Priest:   Shackle Undead
   Rogue:    Sap, Blind, Dismantle
   Shaman:   Hex, Bind Elemental
   Warlock:  Banish, Fear, Seduce
   Paladin:  Repentance
   Warrior:  Disarm

   - New message boxes "Resisted" and "Immune" on each spell's page, using
     the [MISSTYPE] token (Missed / Resisted / Immune). The page's help text
     now uses the missable-spell description.
   - Defaults: Resisted = "My [LINK] [MISSTYPE] [TARGET]!"
               Immune   = "[TARGET] is [MISSTYPE] to my [LINK]!"
     Hibernate, Polymorph and Shackle Undead already had an unused Immune
     default; those wordings were kept.
   - Core.lua: new handlers in the SPELL_MISSED (not immune) and
     SPELL_MISSED (immune) sections. Whisper is not used (targets are enemies).
   - Options.lua: two new text boxes on each of the 14 spell pages.
   - Warlock pet spells (e.g. Seduce) work because they are covered by the
     existing "you or your pet" source check.


========== Removed (Cataclysm-only content, for WotLK use) ==========

This addon was written for Cataclysm (Interface 40000). For WotLK (3.3.5)
the following abilities do not exist, so their code and settings pages
were removed from Core.lua and Options.lua:

   Druid:    Skull Bash         (80964, 80965)
   Mage:     Time Warp          (80353)
   Paladin:  Guardian of Ancient Kings (86150, 86657, 86674, 86701)
             Rebuke           (85285)
   Priest:   Leap of Faith      (73325)
             Power Word: Barrier (62618, 81781)
   Shaman:   Bind Elemental     (76780)
   Warlock:  Singe Magic (Imp)  (89808)

   - Removed for each: the defaults entry, every combat-log handler
     (start, end, interrupt, resist, immune), the settings page, and the
     entry in the "Set to all spells" custom channel list.
   - Cleanse Spirit: the Purify Spirit ID (77130, Cataclysm only) was removed;
     the WotLK ID (51886) is unchanged.
   - Ardent Defender: in WotLK it is a passive talent, so the Start and End
     announcements (spell ID 31852) could never fire. Those two handlers,
     their default messages and their two settings boxes were removed. The
     Heal announcement (spell ID 66235) is kept and works in WotLK.
   - Power Word: Barrier was the only spell in a small trailing section of
     Core.lua that handled events from other players. With it gone, that
     now-empty section was removed as well.


========== Fixed ==========

** Typo in the Druid "Set to all spells" custom channel list (Options.lua)
   "FrenziedRegneration" was missing an "e". It caused a nil-index error
   when a Druid clicked the button, so every Druid spell listed after it
   (Hibernate, Innervate, Skull Bash, Growl, ...) was never updated.

** Stale default on Blind
   An unused "Resist" default was renamed to "Resisted" so it matches the
   new handler and options box.


========== Testing status ==========

Verified in game by the author:
  - Ardent Defender heal amount

Not yet tested in game (code reviewed and structure-checked only):
  - Barkskin
  - Resist / Immune announcements for the 14 CC spells
  - Druid "Set to all spells" typo fix
  - Cataclysm-only removals (Core.lua and Options.lua were edited heavily;
    check that the addon loads without errors and the Spell Options pages
    open for each class)

If the Ardent Defender heal announcement ever stops working after a game
patch, check the combat log for the spell ID that is actually used and
update the matching "spellID ==" line in Core.lua.


========== Remaining To Do (from To_Do.txt) ==========

** Add Avenger's Shield - Interrupt only.
** Add Resurrection tracking
   (A first attempt was made and then removed because the announcements did
   not work in game. It needs to be redone from scratch; the combat log
   behaviour of resurrection casts should be checked first.)
** Add the ability to play sounds on local warnings
** Add the ability to send messages through other addon's frames, such as
   Parrot SCT, Bigwigs etc.
(Hammer of Justice interrupt is already in the code, so that item can be
removed from To_Do.txt.)


========== Known issues / notes for WotLK ==========

** WotLK gives many spells a separate spell ID for each rank, but this
   addon (written for Cataclysm) lists only one ID per spell, so some
   announcements may only fire for one rank. Examples (from memory, not yet
   verified against a database): Hand of Protection, Hand of Sacrifice,
   Lay on Hands, Dispel Magic, Banish, Fear, Hibernate, Shackle Undead,
   Sap, Pummel, Shield Bash, Kick, Purge, Spell Lock, Devour Magic.
** The Mage Teleport list appears to be missing Teleport: Darnassus (3565).
** Polymorph: Turkey (61780) exists as a spell ID but players cannot learn
   it; it is harmless.
