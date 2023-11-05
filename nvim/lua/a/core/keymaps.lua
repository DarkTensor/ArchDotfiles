local opts = { noremap = true, silent = true } 
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- remaps space to be the leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NORMAL MODE
-- better vsplit and split navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)
keymap("n", "<leader>s", ":vsplit<cr>", opts)

-- resize splits
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- navigate buffers ( buffers are similar to tabs )
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- I can change an entire word in the middle of the word rather 
-- than having to be at the begining of the word.
keymap("n", "cw", "ciw", opts)
keymap("n", "dw", "diw", opts)
keymap("n", "yw", "yiw", opts)

-- INSERT MODE
keymap("i", "jj", "<ESC>", opts)        -- changes esc key to jj 

-- VISUAL MODE
-- indent blocks of highlighted text
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- VISUAL BLOCK
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
