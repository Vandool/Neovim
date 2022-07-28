local user = 'arvand'
require (string.format("%s.options", user))
require (string.format("%s.keymaps", user))
require (string.format("%s.plugins", user))
require (string.format("%s.colorscheme", user))
require (string.format("%s.cmp", user))
require (string.format("%s.nvim-tree", user))
require (string.format("%s.vim-airline", user))
--require "user.autocommands"

--require "user.telescope"
require (string.format("%s.telescope", user))
--require "user.treesitter"
--require "user.autopairs"
--require "user.comment"
--require "user.gitsigns"
--require "user.bufferline"
--require "user.lualine"
--require "user.toggleterm"
--require "user.project"
--require "user.impatient"
--require "user.illuminate"
--require "user.indentline"
--require "user.alpha"

--require "user.lsp"
require (string.format("%s.lsp", user)) -- .init.lua will be implied
--require "user.dap"


-- Require as the last option so it override previous calls
-- on the font and the font size 
-- ** You can also consider putting the font options in the /after directory
require (string.format("%s.neovide", user))
