local function format(component, text, hl_group)
	if not hl_group then
		return text
	end
	
	---@type table<string, string>
	component.hl_cache = component.hl_cache or {}
	local lualine_hl_group = component.hl_cache[hl_group]
	if not lualine_hl_group then
		local utils = require("lualine.utils.utils")
		local mygui = function()
			local mybold = utils.extract_highlight_colors(hl_group, "bold") and "bold"
			local myitalic = utils.extract_highlight_colors(hl_group, "italic") and "italic"
			if mybold and myitalic then
				return mybold .. "," .. myitalic
			elseif mybold then
				return mybold
			elseif myitalic then
				return myitalic
			else
				return ""
			end
		end
		
		lualine_hl_group = component:create_hl({
			fg = utils.extract_highlight_colors(hl_group, "fg"),
			gui = mygui(),
		}, "LV_" .. hl_group)
		component.hl_cache[hl_group] = lualine_hl_group
	end
	return component:format_hl(lualine_hl_group) .. text .. component:get_default_hl()
end

return {
	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			opts.options = {
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
			}

			if not opts.sections then
				opts.sections = {}
			end

			opts.sections.lualine_a = {
				{
					function()
						return ""
					end,
					padding = { left = 1, right = 0 },
					separator = "",
				},
				"mode",
			}
			opts.sections.lualine_y = { "progress" }
			opts.sections.lualine_z = {
				{ "location", separator = "" },
				{
					function()
						return ""
					end,
					padding = { left = 0, right = 1 },
				},
			}
			return opts
		end,
	},
}