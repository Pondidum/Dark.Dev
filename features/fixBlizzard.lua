local addon, ns = ...

local fixBlizzard = function()

	local handler = ns.lib.slash:add("fix", function(self)

		SetCVar("consolidateBuffs", 0, true)
		SetCVar("displaySpellActivationOverlays", 0, true)
		SetCVar("ShowClassColorInNameplate", 1, true)
		SetCVar("autoLootDefault", 1, true)

	end)

end

ns.features.fixBlizzard = fixBlizzard
