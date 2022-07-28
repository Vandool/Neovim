-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { noremap = true, silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts) -- makes sure space is not mapped to anything else

vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)    -- LEFT
keymap("n", "<C-k>", "<C-w>j", opts)    -- DOWN
keymap("n", "<C-j>", "<C-w>k", opts)    -- UP
keymap("n", "<C-l>", "<C-w>l", opts)    -- RIGHT

-- Resize with arrows
keymap("n", "<C-A-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-A-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-A-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Clear highlights
keymap("n", "<leader>c", "<cmd>nohlsearch<CR>", opts)

-- Copy/Paste
keymap("v", "<C-c>", "\"+y", opts)
keymap("n", "<C-d>", "\"+P", opts)
keymap("v", "<C-d>", "\"+P", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- ++ PLUGINS
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- Vim-Gui-Zoom
-- ONLY WORKS IN NEOVIDE - in nvim its - and =
keymap("n", "<C-+>", ":ZoomIn<CR>", opts)
keymap("n", "<C-->", ":ZoomOut<CR>", opts)

-- Vim-Expand-Region
-- keymap("n", "-", "<Plug>(expand_region_shrink)", opts)
vim.cmd [[map + <Plug>(expand_region_expand)]]
vim.cmd [[map - <Plug>(expand_region_shrink)]]

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
--keymap("n", "<leader>fr", "<cmd>lua require'telescope.builtin'.find_files(require.('telescope.themes').get_ivy())<cr>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap({"n", "v"}, "<leader>hs",  ":Gitsigns stage_hunk<cr>", opts)
keymap({"n", "v"}, "<leader>hr",  ":Gitsigns reset_hunk<cr>", opts)
keymap("n", "<leader>hb", ":Gitsigns blame_line<cr>", opts)
keymap("n", "<leader>hp", ":Gitsigns preview_hunk<cr>", opts)
keymap("n", "<leader>hd", ":Gitsigns diffthis<cr>", opts)
keymap("n", "<leader>htd", ":Gitsigns toggle_deleted<cr>", opts)
keymap("n", "<leader>htb", ":Gitsigns toggle_current_line_blame<cr>", opts)


-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)
