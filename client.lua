local showIds = true

RegisterCommand("ids", function()
    showIds = not showIds
end, false)

CreateThread(function()
    while true do
        if showIds then
            local myPed = PlayerPedId()
            local myCoords = GetEntityCoords(myPed)

            for _, playerId in ipairs(GetActivePlayers()) do
                local ped = GetPlayerPed(playerId)

                if DoesEntityExist(ped) then
                    local headCoords = GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0)
                    headCoords = vector3(headCoords.x, headCoords.y, headCoords.z + 0.45)

                    local dist = #(myCoords - headCoords)

                    if dist < 50.0 then
                        local serverId = GetPlayerServerId(playerId)
                        DrawStableText(headCoords, tostring(serverId), dist)
                    end
                end
            end
        end

        Wait(0)
    end
end)

function DrawStableText(coords, text, dist)
    local onScreen, x, y = World3dToScreen2d(coords.x, coords.y, coords.z)

    if not onScreen then return end

    local scaleBase = math.max(0.22, 0.42 - (dist / 150))

    SetTextScale(scaleBase * 0.9, scaleBase * 0.9)
    SetTextFont(2)
    SetTextProportional(1)

    SetTextColour(255, 255, 255, 220)
    SetTextCentre(true)

    SetTextOutline()
    SetTextDropshadow(0, 0, 0, 0, 0)

    BeginTextCommandDisplayText("STRING")
    AddTextComponentString(text)
    EndTextCommandDisplayText(x, y)
end