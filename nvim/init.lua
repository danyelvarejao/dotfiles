require('danyel.options')
require('danyel.autocmds')
require('danyel.keymaps')
require('danyel.plugins')

local has = vim.fn.has
if has("macunix") then
  require('danyel.os.mac')
elseif has("win32") then
  require('danyel.os.windows')
else
  require('danyel.os.linux')
end
