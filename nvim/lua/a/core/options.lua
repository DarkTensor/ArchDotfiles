

vim.opt.number = true		    -- line numbers
vim.opt.relativenumber = true	-- relative line numbers

vim.opt.tabstop = 4             -- sets tab to be 4 spaces
vim.opt.shiftwidth = 4          -- 
vim.opt.expandtab = true        --
vim.opt.autoindent = true       --

vim.opt.wrap = false            -- no wrapping text

vim.opt.ignorecase = true       -- ignores cases when searching
vim.opt.smartcase = true        -- when searching with an uppercase, switches to strict search

vim.opt.cursorline = true       -- gives a line at the botton of the line where there the cursor is

vim.opt.background = "dark"     -- defaults to dark themes

vim.opt.backspace = "indent,eol,start"

vim.opt.clipboard:append("unnamedplus")


vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.iskeyword:append("-")   -- example: if you 'dw' the word "hello-hello", nvim will treat it as a whole word


