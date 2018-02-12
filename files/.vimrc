" ==================================================================
" NATIVE CONFIG
" ==================================================================

" SPLITS
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
set autoindent
set smarttab
set expandtab
set shiftwidth=2
set softtabstop=2
augroup PythonTabOverrides
  autocmd!
  autocmd Filetype python setlocal shiftwidth=4 softtabstop=4
augroup END

" COMMAND-LINE COMPLETION
set wildmenu

" CLIPBOARD
set clipboard^=unnamed

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

" EXPLORING
" netrw - included with vim

" SEARCHING
Plug 'mileszs/ack.vim'

" FUZZY FINDING
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

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

" COLOR SCHEME
Plug 'trevordmiller/nova-vim'

call plug#end()


" ==================================================================
" PLUGIN CONFIG
" ==================================================================

" EXPLORING
let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_list_hide = '^\./$,^\.\./$'
let g:netrw_hide = 1
let g:netrw_sort_by = 'name'
let g:netrw_sort_direction = 'normal'

" SEARCHING
let g:ackprg = 'ag --path-to-ignore ~/.ignore --hidden --vimgrep'
let g:ack_autoclose=1

" EXTENDED LANGUAGES
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

" INLINE LINTING/TYPE CHECKING/FORMATTING
let g:ale_linters = {
\  'javascript': ['eslint', 'flow'],
\  'ruby': ['rubocop'],
\  'python': ['pylint'],
\}
let g:ale_fixers = {
\  'javascript': ['eslint', 'prettier'],
\  'ruby': ['rubocop'],
\  'python': ['yapf'],
\}
let g:ale_javascript_prettier_options = '--no-semi --single-quote --trailing-comma es5'
let g:ale_fix_on_save = 1

" COLOR SCHEME
colorscheme nova


" ==================================================================
" LEADER SHORTCUTS
" ==================================================================

let mapleader=" "

" EXPLORING
nnoremap <leader>e :E<cr>

" SEARCHING
nnoremap <leader>s :Ack ""<Left>

" FUZZY FINDING
nnoremap <leader>f :FZF<cr>
