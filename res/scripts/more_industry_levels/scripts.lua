local functions = {}

local function getNumberOfProductionLevels(params)
  for i = 1, #params do
    if params[i].key == "productionLevel" then
      return #params[i].values
    end
	end
	return 5 -- this default is also used in industryutil.lua
end

local function adjustProductionLevelsInParams(params, factor)
	local res = {}
  for i = 1, #params do
    local param = params[i]

    if param.key == "productionLevel" then
      local values = {}
      for i = 1, #param.values * factor do
        table.insert(values, tostring(i))
      end

      param = {
        key = param.key,
        name = param.name,
        values = values,
      }
    end

		table.insert(res, param)
	end
	return res
end

function functions.createConstructionCallback(factor)
  local constructionCallback = function (fileName, constr)
    if constr.type ~= "INDUSTRY" or constr.updateFn == nil then
      return constr
    end

    print('[More Industry Levels] adjusting production levels for industry ' .. constr.description.name .. '...')

    constr.params = adjustProductionLevelsInParams(constr.params, factor)

    local originalUpdateFn = constr.updateFn
    constr.updateFn = function(params)
      local productionLevel = params.productionLevel or 0
      
      -- ensure the production level is within the original bounds
      local adjustedProductionLevel = math.floor(productionLevel / factor)

      params.productionLevel = adjustedProductionLevel

      local result = originalUpdateFn(params)

      -- the +1 is something industryutil does since params.productionLevel seems to be 0-index based
      local originalCapacity = result.rule.capacity / (adjustedProductionLevel + 1)
      result.rule.capacity = originalCapacity * (productionLevel + 1)

      return result
    end
    
    return constr
  end

  return constructionCallback
end

return functions
