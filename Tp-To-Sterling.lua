AddButton(Tab4o, {
    Name = "Tp To Sterling",
    Callback = function()
        pcall(function()
            -- Hook SetCore để chặn thông báo
            local originalSetCore = game:GetService("StarterGui").SetCore
            local blocked = {"SendNotification"}

            hookfunction(originalSetCore, function(self, method, ...)
                if table.find(blocked, method) then
                    return -- Chặn thông báo xuất hiện
                end
                return originalSetCore(self, method, ...)
            end)

            -- Tải và chạy script từ link
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Shade-vex/KJ/refs/heads/main/TPsterling.txt"))()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tp To Sterling",
            Text = "Script by Mscuaz",
            Duration = 3
        })
       end)
    end
})
