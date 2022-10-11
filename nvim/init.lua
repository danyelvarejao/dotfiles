require('danyel.options')
require('danyel.autocmds')
require('danyel.keymaps')
require('danyel.plugins')

local operatingSystem = vim.loop.os_uname().sysname
if operatingSystem == 'Linux' then
  require('danyel.os.linux')
elseif operatingSystem == 'Windows' then
  require('danyel.os.windows')
else
  require('danyel.os.linux')
end
