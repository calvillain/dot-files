-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local silent = { silent = true, noremap = true }
map("", "<Space>", "<Nop>", silent)

-- esc
-- vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- oil
vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>_", "<CMD>Oil --float<CR>", { desc = "Open parent directory (float)" })

-- buffers
vim.api.nvim_set_keymap("n", "tk", ":blast<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tj", ":bfirst<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "th", ":bprev<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tl", ":bnext<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "td", ":bdelete<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<enter>", { noremap = false })

-- files
vim.api.nvim_set_keymap("n", "QQ", ":q!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "WW", ":w!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "E", "$", { noremap = false })
vim.api.nvim_set_keymap("n", "B", "^", { noremap = false })
vim.api.nvim_set_keymap("n", "TT", ":TransparentToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "ss", ":noh<CR>", { noremap = true })

-- terminal
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", { noremap = true })
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", { noremap = true })
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", { noremap = true })
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", { noremap = true })

-- git
vim.api.nvim_set_keymap("n", "<leader>lg", ":LazyGit<CR>", { desc = "[L]azy[G]it", noremap = false })
vim.api.nvim_set_keymap("n", "<leader>gdo", ":DiffviewOpen<CR>", { desc = "[G]it [D]iffView [O]pen", noremap = false })
vim.api.nvim_set_keymap("n", "<leader>gdc", ":DiffviewClose<CR>", { desc = "[G]it [D]iffView [C]lose", noremap = false })
vim.api.nvim_set_keymap("n", "<leader>gdr", ":DiffviewRefresh<CR>", { desc = "[G]it [D]iffView [R]efresh", noremap = false })
vim.api.nvim_set_keymap("n", "<leader>gdh", ":DiffviewFileHistory<CR>", { desc = "[G]it [D]iffView File [H]istory", noremap = false })
vim.api.nvim_set_keymap("n", "<leader>gr", ":Gr<CR>", { desc = "[G]it [R]ead", noremap = false })
vim.api.nvim_set_keymap("n", "<leader>gw", ":Gw<CR>", { desc = "[G]it [W]rite", noremap = false })

-- splits
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-W>,", ":vertical resize -10<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-W>.", ":vertical resize +10<CR>", { noremap = true })

-- Comment
vim.keymap.set("n", "<space>/", "gcc", { desc = "comment toggle", remap = true })
vim.keymap.set("v", "<space>/", "gc", { desc = "comment toggle", remap = true })

-- Noice
vim.api.nvim_set_keymap("n", "<leader>nn", ":Noice dismiss<CR>", { noremap = true })

-- Obsession
vim.keymap.set("n", "<leader>ss", "<CMD>Obsession Session.vim<CR>", { desc = "ob[S]ession [S]ave" })
vim.keymap.set("n", "<leader>sl", "<CMD>source Session.vim<CR>", { desc = "Ob[S]ession [L]oad" })

-- Misc. keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Quicker close split
vim.keymap.set("n", "<leader>qq", ":q<CR>", { silent = true, noremap = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- vim.keymap.set("n", "<leader>ee", "<cmd>GoIfErr<cr>", { silent = true, noremap = true })

-- Close buffer without closing window
vim.keymap.set("n", "<leader>qw", ":bp<bar>sp<bar>bn<bar>bd<CR>", { noremap = true })
