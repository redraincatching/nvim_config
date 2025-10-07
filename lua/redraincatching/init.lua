if vim.loop.os_uname().sysname == "Windows_NT" then
	require("redraincatching.core.powershell")
end

require("redraincatching.config.keymappings")
require("redraincatching.config.options")
require("redraincatching.core.bootstrap")
require("redraincatching.core.lazy")
require("redraincatching.config.colorscheme")
