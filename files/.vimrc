" ==================================================================
" PLUGINS
" ==================================================================

" Plugins to use via vim-plug 
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'w0rp/ale'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-vinegar'
Plug 'ludovicchabant/vim-gutentags'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'wakatime/vim-wakatime'
call plug#end()

" Set color scheme
colorscheme nova

" Set linters / fixers
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
" SHORTCUTS
" ==================================================================

" Use space for shortcuts leader
let mapleader=' '

" Run tests
nnoremap <leader>t :TestNearest<cr>

" Use project file explorer
nnoremap <leader>e :Explore<cr>

" Use project file fuzzy finder
nnoremap <leader>f :FZF<cr>

" Use project search fuzzy finder
nnoremap <leader>/ :Ag<space>

" Use project tags fuzzy finder
nnoremap <leader>] :Tags<cr>

" Use EX commands fuzzy finder
nnoremap <leader>: :History:<cr>


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
