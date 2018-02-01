" ==================================================================
" NATIVE CONFIG
" ==================================================================

" PANES
set fillchars+=vert:│
set splitbelow
set splitright
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" STATUS
set laststatus=2

" SEARCH
set incsearch

" LINES
set number
set cursorline
set scrolloff=5

" TABS
set backspace=indent,eol,start
set smarttab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set indentkeys+=O,o

" DIRECTORY EXPLORER
let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_list_hide = '^\./$,^\.\./$'
let g:netrw_hide = 1
let g:netrw_sort_by = 'name'
let g:netrw_sort_direction = 'normal'

" COMMAND-LINE COMPLETION
set wildmenu

" PATTERN IGNORING
set wildignore+=*/.git/*,*/node_modules/*,*/build/*,*/.next/*,*/flow-typed/*,package-lock.json,*.zip,*.png,*.jpg,*.gif,*.pdf,*DS_Store*

" SPELLCHECK
set spelllang=en
set complete+=kspell
autocmd FileType gitcommit setlocal spell
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell

" CLIPBOARD
set clipboard=unnamed

" HISTORY
set undofile
set undodir=~/.vim/undo_files//
set directory=~/.vim/swap_files//
set backupdir=~/.vim/backup_files//

" PERFORMANCE
set synmaxcol=200


" ==================================================================
" PLUGIN MANAGEMENT
" ==================================================================

call plug#begin('~/.vim/plugged')

" COLOR SCHEME
Plug 'trevordmiller/nova-vim'

" EXTENDED LANGUAGES
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" EXTENDED % MATCHING
Plug 'tmhedberg/matchit'

" INLINE LINTING/TYPE CHECKING/FORMATTING
Plug 'w0rp/ale'

" TIME TRACKING
Plug 'wakatime/vim-wakatime'

call plug#end()


" ==================================================================
" PLUGIN CONFIG
" ==================================================================

" COLOR SCHEME
colorscheme nova

" EXTENDED LANGUAGES
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

" INLINE LINTING/TYPE CHECKING/FORMATTING
let g:ale_linters = {
\  'javascript': ['eslint', 'flow'],
\  'css': ['stylelint'],
\  'ruby': ['rubocop'],
\}
let g:ale_fixers = {
\  'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
