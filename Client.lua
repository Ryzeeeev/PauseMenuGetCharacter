RegisterCommand("testp", function()
  SetFrontendActive(true)
  ActivateFrontendMenu(GetHashKey("FE_MENU_VERSION_EMPTY"), false, -1)

  Citizen.Wait(100)
  N_0x98215325a695e78a(false)
  
  PlayerPedPreview = ClonePed(PlayerPedId(), GetEntityHeading(PlayerPedId()), false, false)
  SetEntityVisible(PlayerPedPreview, false, false)
  
  Wait(100)
  local PedPreview = GivePedToPauseMenu(PlayerPedPreview, 2)
  ApplyPedDamagePack(PedPreview, "BigHitByVehicle", 0.0, 1.0)
  SetPedHeadBlendData(PedPreview , 0, 0, 0, 0, 0, 0, 0, 0, 0, false)
  
end)
