local addon, ns = ...

local fixBlizzard = function()

	SLASH_FIX1 = "/fix"
	SlashCmdList["FIX"] = function()

		SetCVar("consolidateBuffs", 0, true)
		SetCVar("displaySpellActivationOverlays", 0, true)
		SetCVar("ShowClassColorInNameplate", 1, true)
		SetCVar("autoLootDefault", 1, true)
	end

end

ns.features.fixBlizzard = fixBlizzard
