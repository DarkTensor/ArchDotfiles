local bufferline = require("bufferline")

bufferline.setup{
	options = {
		numbers = "none",
		close_command = "bdelete! %d",       -- can be a string | function, | false see "Mouse actions"
		right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
		left_mouse_command = "buffer %d",    -- can be a string | function, | false see "Mouse actions"
		middle_mouse_command = nil,          -- can be a string | function, | false see "Mouse actions"
		indicator = {
				icon = '▎', -- this should be omitted if indicator style is not 'icon'
				style = 'icon' -- | 'underline' | 'none',
		},
		buffer_close_icon = '󰅖',
		modified_icon = '●',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',
		max_name_length = 30,
		max_prefix_length = 30,
		tab_size = 21,
		offsets = {
			{
				filetype = "NvimTree",
				text = "",
				padding = 1,
			}
		}
	},

	-- this section was copied from gnmearacaun github, (neovim from scratch playlist by chris@machine)
	highlights = {
			fill = {
				fg = { attribute = "fg", highlight = "Visual" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			background = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},

			-- buffer_selected = {
			--   fg = {attribute='fg',highlight='#ff0000'},
			--   bg = {attribute='bg',highlight='#0000ff'},
			--   gui = 'none'
			--   },
			buffer_visible = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},

			close_button = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			close_button_visible = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			-- close_button_selected = {
			--   fg = {attribute='fg',highlight='TabLineSel'},
			--   bg ={attribute='bg',highlight='TabLineSel'}
			--   },

			tab_selected = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			tab = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			tab_close = {
				-- fg = {attribute='fg',highlight='LspDiagnosticsDefaultError'},
				fg = { attribute = "fg", highlight = "TabLineSel" },
				bg = { attribute = "bg", highlight = "Normal" },
			},

			duplicate_selected = {
				fg = { attribute = "fg", highlight = "TabLineSel" },
				bg = { attribute = "bg", highlight = "TabLineSel" },
				underline = true,
			},
			duplicate_visible = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
				underline = true,
			},
			duplicate = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
				underline = true,
			},

			modified = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			modified_selected = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			modified_visible = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},

			separator = {
				fg = { attribute = "bg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			separator_selected = {
				fg = { attribute = "bg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			-- separator_visible = {
			--   fg = {attribute='bg',highlight='TabLine'},
			--   bg = {attribute='bg',highlight='TabLine'}
			--   },
			indicator_selected = {
				fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
		},
}
