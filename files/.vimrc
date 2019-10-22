" ==================================================================
" PLUGINS
" ==================================================================

" Plugin repos
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-vinegar'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'wakatime/vim-wakatime'
call plug#end()

" Set color scheme
colorscheme nova

" Set linters
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_linters = {
\  'sh': ['shell'],
\  'javascript': ['eslint'],
\  'typescript': ['eslint', 'tslint', 'tsserver', 'typecheck'],
\}
let g:ale_fixers = {
\  'sh': ['shfmt'],
\  'javascript': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint', 'tslint'],
\  'json': ['prettier'],
\  'markdown': ['prettier'],
\  'yaml': ['prettier'],
\  'css': ['prettier'],
\}

" Apply ~/.ignore to fuzzy finding
let $FZF_DEFAULT_COMMAND = 'ag --path-to-ignore ~/.ignore --hidden -g ""'
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--path-to-ignore ~/.ignore --hidden', <bang>0)

" ==================================================================
" CORE
" ==================================================================

" Show line numbers
set number

" Show active line
set cursorline

" Store history files in a single location
set undofile
set undodir=~/.vim/undo_files//
set directory=~/.vim/swap_files//
set backupdir=~/.vim/backup_files//

" Allow copy/paste between OS
set clipboard^=unnamed
