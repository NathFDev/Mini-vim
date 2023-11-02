local keymap = vim.keymap

keymap.set("i", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })

-- go to beginning and end
keymap.set("i", "<C-b>", "<ESC>^i", { desc = "Beginning of line" })
keymap.set("i", "<C-e>", "<End>", { desc = "End of line" })

-- navigate within insert mode
keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })
keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })

-- clear highlights
keymap.set("n", "<Esc>", "<cmd> noh <CR>", { desc = "Clear highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- switch between windows
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })

-- Buffer Navigation
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half a page and center the cursor" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half a page and center the cursor" })
keymap.set("n", "n", "nzzzv", { desc = "Move to the next search result and center the cursor" })
keymap.set("n", "N", "Nzzzv", { desc = "Move to the previous search result and center the cursor" })
keymap.set("n", "<leader>x", ":bd<CR>", { desc = "Close buffer" })

-- Search and replace word under cursor
keymap.set(
	"n",
	"<leader>rp",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Search and replace word under cursor" }
)

-- Source current file
keymap.set("n", "<leader><leader>", ":so<CR>", { desc = "Source current file" })

-- Save
keymap.set("n", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })

-- Copy all
keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })

-- New buffer
keymap.set("n", "<leader>b", "<cmd> enew <CR>", { desc = "New buffer" })

-- Formatting
keymap.set("n", "<leader>fm", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "LSP formatting" })

-- Move the current line / block
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- Indent
keymap.set("v", "<", "<gv", { desc = "Indent line" })
keymap.set("v", ">", ">gv", { desc = "Indent line" })

-- Yan to system clipboard
keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })

-- Paste without yanking
keymap.set("x", "<leader>p", [["_dP]])

-- Delete without yanking
keymap.set({ "n", "v" }, "<leader>dx", [["_d]])

-- Escape
keymap.set("i", "<C-c>", "<Esc>")

--Spectre
keymap.set("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', {
	desc = "Toggle Spectre",
})
keymap.set("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
	desc = "Search current word",
})
keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
	desc = "Search current word",
})
keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
	desc = "Search on current file",
})

-- Lazygit
keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Toggle LazyGit" })

--Undotree
keymap.set("n", "<leader>ut", "<cmd>UndotreeToggle<CR>", { desc = "Toggle Undotree" })

-- CCC
keymap.set("n", "<leader>cc", "<cmd>CccHighlighterToggle<CR>", { desc = "Toggle color highlighter" })
keymap.set("n", "<leader>cv", "<cmd>CccConvert<CR>", { desc = "Color converter" })
keymap.set("n", "<leader>co", "<cmd>CccPick<CR>", { desc = "Color Picker" })

-- Harpoon
keymap.set("n", "<leader>hm", "<cmd>lua require('harpoon.mark').add_file<CR>", { desc = "Mark files" })
keymap.set("n", "<leader>hu", "<cmd>lua harpoon_ui.toggle_quick_menu<CR>", { desc = "Mark files" })

-- Bufferline
keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Cycle to Next buffer" })
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Cycle to Next buffer" })
keymap.set("n", "<leader>X", "<cmd>BufferLineCloseOthers<CR>", { desc = "Cycle to Next buffer" })

-- Comment
keymap.set("n", "<C-/>", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", { desc = "Toggle comment" })
keymap.set(
	"v",
	"<C-/>",
	"<cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
	{ desc = "Toggle comment" }
)

-- Tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>nt", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file explorer" })

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
