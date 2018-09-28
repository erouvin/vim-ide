so ~/.vim/plugins.vim

set nobackup
set nowb
set noswapfile
set noerrorbells

set mouse=a
set so=999
set clipboard=unnamed
set wildmenu

" Appearance "

syntax enable
syntax on

set number
set relativenumber
set linespace=12

set title
set titlestring=%F\ -\ vim
set noshowmode
set laststatus=2

set background=dark
colorscheme gruvbox
let g:gruvbox_vert_split = 'bg1'
let g:gruvbox_sign_column = 'bg0'

hi CursorLineNr ctermfg=White
hi MatchParen cterm=NONE ctermbg=black
hi StatusLine ctermbg=NONE
hi StatusLineNC ctermbg=NONE

" File behaviour "

set expandtab
set smarttab
set linebreak
" set breakindent "
set nostartofline

set shiftwidth=4
set tabstop=4

" Search "

set smartcase
set hlsearch
set incsearch

" Panes "

set splitbelow
set splitright

" Bindings "

map q <Nop>
set backspace=indent,eol,start
map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>
map <Leader> <Plug>(easymotion-prefix)

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" lightline "

"let g:lightline = {"
"  \     'active': {"
"  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],"
"  \         'right': [['lineinfo'], ['percent'], ['gitbranch', 'fileformat', 'fileencoding']]"
"  \     },
"  \     'component_function': {"
"  \         'gitbranch': 'gitbranch#name'"
"  \     }"
"  \ } "

" airline and fonts "
set encoding=utf8
set t_Co=256
"set term=screen-256color"

" NERDTree "

let NERDTreeShowHidden=1

" youcomplete "

" let g:ycm_python_binary_path = 'python' "
let g:ycm_show_diagnostics_ui = 0

" Syntastic "

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-colors-solarized "

" syntax enable "
" set background=dark "
"colorscheme solarized "

" dev-icons "

let g:airline_powerline_fonts = 1
