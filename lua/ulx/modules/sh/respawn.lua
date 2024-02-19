local CATEGORY_NAME = 'Utility'

-------------------------------
-- respawn
-------------------------------
function ulx.respawn (calling_ply, target_plys)
  for _, target_ply in pairs(target_plys) do
    target_ply:KillSilent()
    target_ply:Spawn()
  end

  ulx.fancyLogAdmin(calling_ply, '#A respawned #T', target_plys)
end

local respawn = ulx.command(CATEGORY_NAME, 'ulx respawn', ulx.respawn, {'!respawn'}, true)
respawn:addParam{type=ULib.cmds.PlayersArg, default='^', ULib.cmds.optional}
respawn:help('Respawn player(s).')
respawn:defaultAccess(ULib.ACCESS_ADMIN)
