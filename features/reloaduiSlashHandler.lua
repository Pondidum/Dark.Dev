local addon, ns = ...

local reloadSlashHandler = function()

	local rl = ns.lib.slash:new("rl", {
		_default = ReloadUI
	})

end

ns.features.reloadSlash = reloadSlashHandler
