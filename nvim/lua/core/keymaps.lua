local opts = { silent = true }
local term_opts = {silent = true}
local keymap = vim.api.nvim_set_keymap

-- remaps space to be the leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

----------------------- NORMAL MODE ----------------------------
-- better vsplit and split navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- opens up a file explorer to the left
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- resize splits
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- navigate buffers ( buffers are similar to tabs )
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("n", "cw", "ciw", opts)
keymap("n", "dw", "diw", opts)
keymap("n", "yw", "yiw", opts)

-- copy to system clipboard
keymap('n', 'gy', '"+y', opts)
-- paste to system clipboard
keymap('n', 'gp', '"+p', opts)

-- faster movement through file
keymap("n", "J", "3j", opts)
keymap("n", "K", "3k", opts)

----------------------- INSERT MODE ----------------------------
-- changes esc key to jj 
keymap("i", "jj", "<ESC>", opts)

----------------------- VISUAL MODE ----------------------------
-- indent blocks of highlighted text
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- copy to system clipboard
keymap('v', 'gy', '"+y', opts)
-- paste to system clipboard
keymap('v', 'gp', '"+p', opts)

-- move chunks of highlighted text
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)

----------------------- VISUAL BLOCK MODE ----------------------------
-- move chuncks of hightlighted text
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)

-- copy to system clipboard
keymap('x', 'gy', '"+y', opts)
-- paste to system clipboard
keymap('x', 'gp', '"+p', opts)

----------------------- TELESCOPE ----------------------------
keymap('n', '<leader>f', ':Telescope find_files<cr>' , opts)
keymap('n', '<leader>gs', ':Telescope grep_string<cr>' , opts)
