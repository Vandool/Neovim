-- Smarter tab line
vim.cmd [[let g:airline#extensions#tabline#enabled = 1]]

vim.cmd [[let g:airline_powerline_fonts = 1]]
vim.cmd [[if !exists('g:airline_symbols')
            let g:airline_symbols = {}
        endif]]
vim.cmd [[let g:airline_left_sep = '']]
vim.cmd [[let g:airline_left_alt_sep = '']]
vim.cmd [[let g:airline_right_sep = '']]
vim.cmd [[let g:airline_right_alt_sep = '']]
vim.cmd [[let g:airline_symbols.branch = '']]
vim.cmd [[let g:airline_symbols.readonly = '']]
vim.cmd [[let g:airline_symbols.linenr = '']]



--let g:airline_powerline_fonts = 1
--if !exists('g:airline_symbols')
--let g:airline_symbols = {}
--endif
--let g:airline_left_sep = ''
--let g:airline_left_alt_sep = ''
--let g:airline_right_sep = ''
--let g:airline_right_alt_sep = ''
--let g:airline_symbols.branch = ''
--let g:airline_symbols.readonly = ''
--let g:airline_symbols.linenr = ''
