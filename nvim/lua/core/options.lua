local options = {
	tabstop = 2,								-- number of spaces for a tab
	shiftwidth = 2 ,						-- number of spaces for (auto) indent step
	wrap = true,								-- wraps long lines to the line below
	breakindent = true,					-- wraped lines preserve indentation
	hlsearch = true,						-- highlight search results
	incsearch = true,						-- highlight search as you type
	ignorecase = true,					-- ignores case when seaching
	smartcase = true,						-- no ignore case when seach pattern has uppercase
	cursorline = true,					-- highlights current cursor line
	number = true,							-- shows line numbers
	relativenumber = true,			-- shows relative line number
	splitbelow = true,					-- always splits below
	splitright = true,					-- always vsplits to the right
	background = "dark",				-- defaults to version of themes
}

for k,v in pairs(options) do
	vim.opt[k] = v
end

