loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VoidwareBakup/refs/heads/main/CustomModules/CE6872274481.lua", true))()
local GuiLibrary = shared.GuiLibrary
local function run(func)
	local suc, err = pcall(function()
		func()
	end)
	if err then warn("[CE687224481.lua Module Error]: "..tostring(debug.traceback(err))) end
end
run(function()
	print('ran')
	StaffDetector = GuiLibrary.ObjectsThatCanBeSaved.UtilityWindow.Api.CreateOptionsButton({
			Name = "ACModDetector [Xquisite Version]",
			Function = function(call)
				if call then
					
					local con = game:GetService("Players").PlayerAdded:Connect(function(v)
						local ac = false
						for i,p in ipairs(game.Players:GetChildren()) do
							if p:IsFriendsWith(v.UserId) then
								ac = true
								warningNotification("Spectator Joined", tostring(v.Name).." has joined!", 15)
							end
						end
						if ac == true then warningNotification("AC Mod joined", tostring(v.Name).." has joined!", 500) end
						
					end)
				end	
			end
	})
		StaffDetector.Restart = function() if StaffDetector.Enabled then StaffDetector.ToggleButton(false); StaffDetector.ToggleButton(false) end end
end)
