local CATEGORY_NAME = 'Utility'

-------------------------------
-- clear
-------------------------------
function ulx.clear (calling_ply, target_plys)
  for _, target_ply in pairs(target_plys) do
    net.Start('ulxtra_reset_decals')
    net.Send(target_ply)
    net.Start('ulxtra_reset_sounds')
    net.Send(target_ply)
    net.Start('ulxtra_reset_ragdolls')
    net.Send(target_ply)
  end

  ulx.fancyLogAdmin(calling_ply, "#A removed #T clientside garbages", target_plys)
end

local clear = ulx.command(CATEGORY_NAME, 'ulx clear', ulx.clear, '!clear', true)
clear:addParam{type=ULib.cmds.PlayersArg, default='^', ULib.cmds.optional}
clear:defaultAccess(ULib.ACCESS_ALL)
clear:help('Remove all target(s) clientside decals, sounds and ragdolls.')

-------------------------------
-- decals
-------------------------------
function ulx.decals (calling_ply, target_plys)
  for _, target_ply in pairs(target_plys) do
    net.Start('ulxtra_reset_decals')
    net.Send(target_ply)
  end

  ulx.fancyLogAdmin(calling_ply, "#A removed #T clientside decals", target_plys)
end

local decals = ulx.command(CATEGORY_NAME, 'ulx decals', ulx.decals, {'!decals', '!decal'}, true)
decals:addParam{type=ULib.cmds.PlayersArg, default='^', ULib.cmds.optional}
decals:defaultAccess(ULib.ACCESS_ALL)
decals:help('Remove all target(s) clientside decals.')

-------------------------------
-- sounds
-------------------------------
function ulx.sounds (calling_ply, target_plys)
  for _, target_ply in pairs(target_plys) do
    net.Start('ulxtra_reset_sounds')
    net.Send(target_ply)
  end

  ulx.fancyLogAdmin(calling_ply, "#A removed #T clientside sound(s)", target_plys)
end

local sounds = ulx.command(CATEGORY_NAME, 'ulx sounds', ulx.sounds, '!sounds', true)
sounds:addParam{type=ULib.cmds.PlayersArg, default='^', ULib.cmds.optional}
sounds:defaultAccess(ULib.ACCESS_ALL)
sounds:help('Remove all target(s) clientside sounds.')

-------------------------------
-- ragdolls
-------------------------------
function ulx.ragdolls (calling_ply, target_plys)
  for _, target_ply in pairs(target_plys) do
    net.Start('ulxtra_reset_ragdolls')
    net.Send(target_ply)
  end

  ulx.fancyLogAdmin(calling_ply, "#A removed #T clientside ragdolls", target_plys)
end

local ragdolls = ulx.command(CATEGORY_NAME, 'ulx ragdolls', ulx.ragdolls, {'!ragdolls', '!ragdoll'}, true)
ragdolls:addParam{type=ULib.cmds.PlayersArg, default='^', ULib.cmds.optional}
ragdolls:defaultAccess(ULib.ACCESS_ALL)
ragdolls:help('Remove all target(s) clientside ragdolls.')