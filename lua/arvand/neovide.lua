--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--+       NEOVIDE GUI STUFF
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

--FONTS use ":set guifont=*" to see all the fonts and try them
-- My Favourites: 
-- "Cascadia Code PL", "Source Code Pro", "Noto Mono",
-- "Jet BrainsMono Nerd Font Mono"
--vim.opt.guifont = { "Cascadia Code PL", ":h15" }
vim.opt.guifont = { "JetBrainsMono Nerd Font Mono", ":h15" }

-- Highlights all the occurence of the word the curser is currently resting on
vim.cmd [[let g:python_highlight_all = 1]]

--Some nonesense
--let g:neovide_cursor_vfx_mode = "railgun"
--vim.cmd [[let g:neovide_cursor_vfx_mode = "railgun"]]
vim.cmd [[let g:neovide_cursor_vfx_mode = "pixiedust"]]


-- Funcionality
vim.cmd [[let g:neovide_transparency=0.95]]
vim.cmd [[let g:neovide_refresh_rate=140]]
vim.cmd [[let g:neovide_remember_window_size = v:true]]
vim.cmd [[let g:neovide_profiler = v:false]]
