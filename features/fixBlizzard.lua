local addon, ns = ...

local fixBlizzard = function()

	SLASH_FIX1 = "/fix"
	SlashCmdList["FIX"] = function()

		SetCVar("consolidateBuffs", 0)
		SetCVar("displaySpellActivationOverlays", 0)
		SetCVar("ShowClassColorInNameplate", 1)
		SetCVar("autoLootDefault", 1)
	end

end

ns.features.fixBlizzard = fixBlizzard
