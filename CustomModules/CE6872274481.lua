loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VoidwareBakup/refs/heads/main/CustomModules/CE6872274481.lua", true))()
run(function()

	StaffDetector = GuiLibrary.ObjectsThatCanBeSaved.UtilityWindow.Api.CreateOptionsButton({
			Name = "ACModDetector [Xquisite Version]",
			Function = function(call)
				if call then
					
					local con = game:GetService("Players").PlayerAdded:Connect(function(v)
						local ac = false
						for i,p in ipairs(game.Players:GetChildren()) do
							if p:IsFriendsWith(v.UserId) then
								ac = ac and p:IsFriendsWith(v.UserId)
							end
						end
						if ac == false then warningNotification("AC Mod joined", tostring(v.Name).." has joined!", 25) end
						
					end)
					
			end
		})
		StaffDetector.Restart = function() if StaffDetector.Enabled then StaffDetector.ToggleButton(false); StaffDetector.ToggleButton(false) end end
end)
