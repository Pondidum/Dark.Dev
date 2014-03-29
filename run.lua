local addon, ns = ...

local run = function()

	for name, action in pairs(ns.features) do
		action()
	end

end

run()

