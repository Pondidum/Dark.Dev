local addon, ns = ...

local reloadSlashHandler = function()

	SLASH_RELOADUI1 = "/rl"
	SlashCmdList.RELOADUI = ReloadUI

end

ns.features.reloadSlash = reloadSlashHandler
