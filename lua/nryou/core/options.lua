local opt = vim.opt

-- Statusline
opt.laststatus = 3 -- global statusline
opt.showmode = false

-- Clipboard
opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Timeoutlen
opt.timeoutlen = 100

-- Toggle number
opt.relativenumber = true
opt.number = true

-- isfname
opt.isfname:append("@-@")

-- Tab
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

-- Indent
opt.smartindent = true
opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true

-- Search
opt.hlsearch = false
opt.incsearch = true

-- Term
opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 100
opt.undofile = true

-- Scroll
opt.scrolloff = 8

-- Update time
opt.updatetime = 100

-- Swap file
opt.swapfile = false
