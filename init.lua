local user = "arvand"
require(string.format("%s.options", user))
require(string.format("%s.keymaps", user))
require(string.format("%s.plugins", user))
require(string.format("%s.colorscheme", user))
require(string.format("%s.cmp", user))
require(string.format("%s.nvim-tree", user))
require(string.format("%s.vim-airline", user))
--require (string.format("%s.autocommands", user))
require(string.format("%s.telescope", user))
require(string.format("%s.treesitter", user))
require(string.format("%s.autopairs", user))
require(string.format("%s.comment", user))
require(string.format("%s.gitsigns", user))
require(string.format("%s.bufferline", user))
require(string.format("%s.toggleterm", user))
require(string.format("%s.whichkey", user))
require(string.format("%s.lualine", user))
require (string.format("%s.project", user))
--require (string.format("%s.impatient", user))
--require (string.format("%s.illuminate", user))
--require (string.format("%s.indentline", user))
require(string.format("%s.alpha", user))
require(string.format("%s.lsp", user)) -- .init.lua will be implied
--require (string.format("%s.dap", user)) -- .init.lua will be implied

-- Require as the last option so it override previous calls
-- on the font and the font size
-- ** You can also consider putting the font options in the /after directory
require(string.format("%s.neovide", user))
