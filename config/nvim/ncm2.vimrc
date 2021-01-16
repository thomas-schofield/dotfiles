" NCM2 settings

augroup NCM2
    autocmd!

    autocmd BufEnter * call ncm2#enable_for_buffer()

    set completeopt=noinsert,menuone,noselect

    inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S_Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


    autocmd Filetype tex call ncm2#register_source({
        \ 'name': 'vimtex',
        \ 'priority': 8,
        \ 'scope': ['tex'],
        \ 'mark': 'tex',
        \ 'word_pattern': '\w+',
        \ 'complete_pattern': g:vimtex#re#ncm2,
        \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
        \ })
augroup END

