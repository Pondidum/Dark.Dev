local addon, ns = ...

local slash = ns.lib.slash

local frameDebugSlashHandler = function()

		local onSlash = function(frameName)

			local frame

			if frameName and frameName ~= "" then
				frame = _G[frameName]
			else
				frame = GetMouseFocus()
			end

			if arg == nil or arg:GetName() == nil then
				print("Invalid frame name.")
				return
			end

			local point, relativeTo, relativePoint, xOfs, yOfs = arg:GetPoint()

			print("|cffCC0000~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
			print("Name: |cffFFD100"..arg:GetName())

			if arg:GetParent() then
				print("Parent: |cffFFD100"..arg:GetParent():GetName())
			end

			print("Width: |cffFFD100"..format("%.2f",arg:GetWidth()))
			print("Height: |cffFFD100"..format("%.2f",arg:GetHeight()))
			print("Strata: |cffFFD100"..arg:GetFrameStrata())
			print("Level: |cffFFD100"..arg:GetFrameLevel())

			if xOfs then
				print("X: |cffFFD100"..format("%.2f",xOfs))
			end

			if yOfs then
				print("Y: |cffFFD100"..format("%.2f",yOfs))
			end

			if relativeTo then
				print("Point: |cffFFD100"..point.."|r anchored to "..relativeTo:GetName().."'s |cffFFD100"..relativePoint)
			end

			print("|cffCC0000~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")

		end

	end

	slash.register("frame", onSlash)

end

ns.features.frameSlash = frameDebugSlashHandler
