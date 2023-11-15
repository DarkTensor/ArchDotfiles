-- Core
require("core.keymaps")									-- Keymaps config file
require("core.options")									-- Options config file
require("core.plugins")									-- Plugin config file
require("core.colorscheme")							-- Colorscheme config file


-- Plugin Configs
require("plugin-configs.cmp")						-- Completion config
require("plugin-configs.telescope")			-- Telescope config
require("plugin-configs.treesitter")		-- Treesitter config
require("plugin-configs.autopairs")			-- Autopairs config
require("plugin-configs.gitsigns")			-- Gitsigns config
require("plugin-configs.nvimtree")			-- Nvimtree config
require("plugin-configs.bufferline")		-- Bufferline config


-- LSP
require("lsp")													-- LSP settings directory
