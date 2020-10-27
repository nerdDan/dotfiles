call plug#begin('~/.local/share/nvim/plugged')
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd FileType * set ts=2 | set sw=2 | set expandtab
autocmd FileType make setlocal noexpandtab
colorscheme hybrid_material
let g:NERDSpaceDelims = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'term'
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = '✘'
let g:syntastic_style_error_symbol = '☡'
let g:syntastic_style_warning_symbol = '☡'
let g:syntastic_warning_symbol = '✗'
set background=dark
set clipboard+=unnamedplus
set colorcolumn=80
set inccommand=nosplit
set laststatus=2
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
set mouse=a
set number
set relativenumber
set termguicolors
