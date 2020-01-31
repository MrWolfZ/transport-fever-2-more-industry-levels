local scripts = require 'more_industry_levels/scripts'

function data()
  local minorVersion = 0

  return {
    info = {
      minorVersion = minorVersion,
      severityAdd = "NONE",
      severityRemove = "WARNING",
      name = _("Name"),
      description = _("Description"),
      tags = { "Script Mod", "Industry" },
      authors = {
        {
          name = "MrWolfZ",
          role = 'CREATOR',
        },
      },
    },
    runFn = function (settings)
      -- the number of production levels will be multiplied by this value
      local factor = 2
      local constructionCallback = scripts.createConstructionCallback(factor)
		  addModifier("loadConstruction", constructionCallback)
    end,
  }
end
