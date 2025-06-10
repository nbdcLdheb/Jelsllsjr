local player = game.Players.LocalPlayer
            local camera = game.Workspace.CurrentCamera
            -- Unlocks camera from first-person to third-person and zooms out
            local function unlockCamera()
                if player.CameraMode == Enum.CameraMode.Classic and player.CameraMaxZoomDistance >= 20 then
                    Fluent:Notify({
                        Title = "Mscuaz",
                        Content = "Camera is already unlocked!",
                        Duration = 3
                    })
                    return
                end
                player.CameraMode = Enum.CameraMode.Classic -- Allows third-person mode
                player.CameraMinZoomDistance = 0.5 -- Ensures zooming out is possible
                player.CameraMaxZoomDistance = 50 -- Allows third-person view
                camera.CameraSubject = player.Character and player.Character:FindFirstChild("Humanoid") or camera.CameraSubject
                camera.CameraType = Enum.CameraType.Custom
                Fluent:Notify({
                    Title = "Mscuaz",
                    Content = "Unlocked third-person view!",
                    SubContent = "Zoom camera out.",
                    Duration = 10
                })
            end
            unlockCamera()
        end
    })
