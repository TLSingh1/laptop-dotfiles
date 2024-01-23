local alpha = require("alpha")

local theme = require("alpha.themes.theta") -- or require("alpha.themes.startify")
local dashboard = require("alpha.themes.dashboard")
theme.mru_opts.autocd = true
theme.header.val = {
	[[███    ██ ███████  ██████  ██    ██ ██ ███    ███]],
	[[████   ██ ██      ██    ██ ██    ██ ██ ████  ████]],
	[[██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██]],
	[[██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██]],
	[[██   ████ ██████  ██████     ████   ██ ██      ██]],
}


theme.buttons.val = {
	{ type = "padding", val = 1 },
	dashboard.button("n", "💰 Brain", "cd /home/tai/Brain && e index.norg"),
	{ type = "padding", val = 1 },
}

theme.config.layout = {
	{ type = "padding", val = 2 },
	theme.header,
	{ type = "padding", val = 2 },
	theme.buttons,
}

-- Add a custom button to change directory and open a file

alpha.setup(theme.config)

-- local dashboard = require("alpha.themes.dashboard")
-- dashboard.section.header.val = {
-- 	[[███    ██ ███████  ██████  ██    ██ ██ ███    ███]],
-- 	[[████   ██ ██      ██    ██ ██    ██ ██ ████  ████]],
-- 	[[██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██]],
-- 	[[██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██]],
-- 	[[██   ████ ██████  ██████     ████   ██ ██      ██]],
-- }
-- dashboard.section.buttons.val = {
-- 	-- dashboard.button("n", "☢️  Neo-Brain", ":e /home/tai/Neo-Brain/index.norg <CR>"),
-- 	dashboard.button("b", "💰 Brain", ":e /home/tai/Brain/index.norg/ <CR>"),
-- 	--[[ dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"), ]]
-- 	dashboard.button("p", "🥷 Find project", ":Telescope projects <CR>"),
-- 	--[[ dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"), ]]
-- 	--[[ dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"), ]]
-- 	dashboard.button("c", "🧬  Configuration", ":e /home/tai/.config/nvim/init.lua <CR>"),
-- 	dashboard.button("q", "🚫  Quit Neovim", ":qa<CR>"),
-- }
-- local handle = io.popen("fortune")
-- local fortune = handle:read("*a")
-- handle:close()
-- dashboard.section.footer.val = fortune
--
-- dashboard.config.opts.noautocmd = true
--
-- -- vim.cmd([[autocmd User AlphaReady echo 'ready']])
--
-- alpha.setup(dashboard.config)
