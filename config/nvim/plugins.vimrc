"==============================================================================
" Plugins
"==============================================================================

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin()

Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'

" Editorconfig setup
Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Third party file browser - NERDTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Emacs-like git client
Plug 'jreybert/vimagit'

Plug 'ntpeters/vim-better-whitespace'

Plug 'tpope/vim-commentary'

" Autocomplete
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-jedi'
"Plug 'lervag/vimtex'

Plug 'Chiel92/vim-autoformat'

" Theming and syntax highlighting
Plug 'sheerun/vim-polyglot'
Plug 'phanviet/vim-monokai-pro'

call plug#end()

filetype plugin indent on
