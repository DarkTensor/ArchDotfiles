-- disable netrw at the start of the config
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	-- use the command ":help nvim-tree-mappings-default" to see the full list of possible maps
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set('n', 'l', api.node.open.edit , opts("Open"))
	vim.keymap.set('n', 'h', api.node.navigate.parent_close , opts("Close Directory"))
	vim.keymap.set('n', 'v', api.node.open.vertical , opts("Open: Vertical Split"))
end



require("nvim-tree").setup({
	on_attach = on_attach,
  sort_by = "case_sensitive",
  view = {
    width = 30,
		side = "left",
  },
  renderer = {
    group_empty = true,
		root_folder_modifier = ":t",
		    icons = {
		      glyphs = {
		        default = "",
		        symlink = "",
		        folder = {
		          arrow_open = "",
		          arrow_closed = "",
		          default = "",
		          open = "",
		          empty = "",
		          empty_open = "",
		          symlink = "",
		          symlink_open = "",
		        },
		        git = {
		          unstaged = "",
		          staged = "S",
		          unmerged = "",
		          renamed = "➜",
		          untracked = "U",
		          deleted = "",
		          ignored = "◌",
		        },
		      },
		    },
  },
  filters = {
    dotfiles = true,
  },
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
      info = "",
      warning = "",
      error = "",
		},
	},
})

