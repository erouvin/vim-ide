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

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('java', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" youcomplete "

let g:ycm_python_binary_path = '/home/erouvin/tools/pyenv/shims/python'
nnoremap ,gd :YcmCompleter GoToDefinition<CR>
nnoremap ,gl :YcmCompleter GoToDeclaration<CR>
nnoremap ,gr :YcmCompleter GoToReferences<CR>
nnoremap ,gc :YcmCompleter GetDoc<CR>

" Syntastic "

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_java_checkers = []
" vim-colors-solarized "

" syntax enable "
" set background=dark "
"colorscheme solarized "

" dev-icons "

let g:airline_powerline_fonts = 1
