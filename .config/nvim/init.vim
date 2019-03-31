call plug#begin('~/.local/share/nvim/plugged')
Plug 'easymotion/vim-easymotion'
"Plug 'leafgarland/typescript-vim'
"Plug 'lervag/vimtex'
Plug 'mattn/emmet-vim'
"Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
Plug 'nlknguyen/papercolor-theme'
"Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'tomlion/vim-solidity'
Plug 'tpope/vim-fugitive'
"Plug 'vhdirk/vim-cmake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd FileType * set ts=2 | set sw=2 | set expandtab
autocmd FileType make setlocal noexpandtab
colorscheme PaperColor
highlight Normal ctermbg=none
highlight NonText ctermbg=none
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'
let g:NERDSpaceDelims=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = '✗'
let g:syntastic_style_error_symbol = "☡"
let g:syntastic_style_warning_symbol = "☡"
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_cpp_include_dirs = ['../include']
let g:syntastic_python_checkers = ['python']
"let g:syntastic_tex_checkers = ['lacheck']
let g:python3_host_prog = 'python3'
"let g:vimtex_compiler_progname = 'nvr'
set background=dark
set clipboard+=unnamedplus
set colorcolumn=80,120
set fileencodings=utf-8,ucs-bom,gb18030
set laststatus=2
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
set number
set relativenumber
