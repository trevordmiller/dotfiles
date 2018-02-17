" ==================================================================
" NATIVE CONFIG
" ==================================================================

" SPLITS
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" LINES
set number
set cursorline

" INDENTATION
set expandtab
set shiftwidth=2
set softtabstop=2
augroup PythonTabOverrides
  autocmd!
  autocmd Filetype python setlocal shiftwidth=4 softtabstop=4
augroup END

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

" DEFAULTS
Plug 'tpope/vim-sensible'

" EXPLORING
" netrw - included with vim

" SEARCHING
Plug 'mileszs/ack.vim'

" FUZZY FINDING
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" EXTENDED LANGUAGES
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'

" INLINE LINTING/TYPE CHECKING/FORMATTING
Plug 'w0rp/ale'

" SNIPPETS
Plug 'KeyboardFire/vim-minisnip'

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
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" INLINE LINTING/TYPE CHECKING/FORMATTING
let g:ale_linters = {
\  'python': ['pylint'],
\  'ruby': ['rubocop'],
\  'javascript': ['eslint', 'flow'],
\}
let g:ale_fixers = {
\  'python': ['yapf'],
\  'ruby': ['rubocop'],
\  'javascript': ['eslint', 'prettier'],
\  'json': ['prettier'],
\  'css': ['prettier'],
\  'markdown': ['prettier'],
\}
let g:ale_fix_on_save = 1

" SNIPPETS
let g:minisnip_dir = '~/.snippets/'

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
