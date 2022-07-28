--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--+       NEOVIDE GUI STUFF
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

vim.cmd [[set guifont="monospace:h14"]]
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
