local CATEGORY_NAME = 'Utility'

-------------------------------
-- freezeprops
-------------------------------
function ulx.freezeprops (calling_ply)
  for _, ent in ipairs(ents.GetAll()) do
    if ent:IsValid() then
      local phys = ent:GetPhysicsObject()
      if IsValid(phys) then
        phys:EnableMotion(false)
        phys:Sleep()
      end
    end
  end

  ulx.fancyLogAdmin(calling_ply, '#A froze all props')
end

local freezeprops = ulx.command(CATEGORY_NAME, 'ulx freezeprops', ulx.freezeprops, {'!freezeprops', '!fp'}, true)
freezeprops:help('Freeze all props.')
freezeprops:defaultAccess( ULib.ACCESS_ADMIN )
