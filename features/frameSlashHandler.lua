local addon, ns = ...

local frameDebugSlashHandler = function()

	local rl = ns.lib.slash:new("frame", {

		_default = function(self, frameName)

			local frame

			if frameName and frameName ~= "" then
				frame = _G[frameName]
			else
				frame = GetMouseFocus()
			end

			if frame == nil or frame:GetName() == nil then
				print("Invalid frame name.")
				return
			end

			local point, relativeTo, relativePoint, xOfs, yOfs = frame:GetPoint()

			print("|cffCC0000~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
			print("Name: |cffFFD100"..frame:GetName())

			local parent = frame:GetParent()

			if parent ~= nil then
				parent = parent:GetName() or tostring(parent)
			end

			print("Parent: |cffFFD100".. (parent or "nil"))

			print("Width: |cffFFD100"..format("%.2f",frame:GetWidth()))
			print("Height: |cffFFD100"..format("%.2f",frame:GetHeight()))
			print("Strata: |cffFFD100"..frame:GetFrameStrata())
			print("Level: |cffFFD100"..frame:GetFrameLevel())

			if xOfs then
				print("X: |cffFFD100"..format("%.2f",xOfs))
			end

			if yOfs then
				print("Y: |cffFFD100"..format("%.2f",yOfs))
			end

			if relativeTo then
				print("Point: |cffFFD100"..point.."|r anchored to ".. (relativeTo:GetName() or tostring(relativeTo)) .."'s |cffFFD100"..relativePoint)
			end

			print("|cffCC0000~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")

		end
	})

end

ns.features.frameSlash = frameDebugSlashHandler
