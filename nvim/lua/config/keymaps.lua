local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---------------- General -----------------------
keymap("i", "jk", "<ESC>", opts)
keymap("n", "<leader>w", ":w <CR>", opts)
keymap("n", "<leader>q", ":q <CR>", opts)
keymap("n", "<leader>d", ":vs <CR>", opts)
keymap("n", "<leader>s", ":split <CR>", opts)
keymap("n", "<leader>c", ":q <cr>", opts)
keymap("n", "<c-n>", ":bdelete <cr>", opts)
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)
keymap("n", "<leader>;", ":", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

---------------- Neo Tree ----------------------
keymap("n", "z", ":Neotree toggle<CR>", opts)

------------------- LSP ------------------------
keymap("n", "gl", ':lua vim.diagnostic.open_float({ border = "rounded" })<CR>', opts)
vim.keymap.set("n", "<leader>a", vim.lsp.buf.format, {})

---------------- Telescope ---------------------
keymap(
	"n",
	"<leader>f",
	"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>",
	opts
)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>/", ":Telescope current_buffer_fuzzy_find <CR>", opts)
keymap("n", "<leader>i", ":Telescope diagnostics <CR>", opts)
keymap("n", "<leader>o", ":TodoTelescope  <cr>", opts)
