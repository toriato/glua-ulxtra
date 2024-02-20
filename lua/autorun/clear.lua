local function IsPlayer (v)
  return IsValid(v) and v:IsPlayer()
end

if SERVER then

  AddCSLuaFile()

  util.AddNetworkString('ulxtra_reset_decals')
  util.AddNetworkString('ulxtra_reset_sounds')
  util.AddNetworkString('ulxtra_reset_ragdolls')

else

  net.Receive('ulxtra_reset_decals', function (_, caller)
    if IsPlayer(caller) then return end
    RunConsoleCommand('r_cleardecals')
  end)

  net.Receive('ulxtra_reset_sounds', function (_, caller)
    if IsPlayer(caller) then return end
    RunConsoleCommand('stopsound')
  end)

  net.Receive('ulxtra_reset_ragdolls', function (_, caller)
    if IsPlayer(caller) then return end
    for _, ent in pairs(ents.GetAll()) do
      if ent:GetClass() == 'class C_ClientRagdoll' then
        ent:Remove()
      end
    end
  end)

end
