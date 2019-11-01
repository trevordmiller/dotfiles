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

" Ignore binaries and generated output
set wildignore+=*.zip,*.png,*.jpg,*.gif,*.pdf,*.mp3,*.mp4,package-lock.json,*/.git/*,*/node_modules/*,*/.next/*,*/.cache/*,*/lib/*,*/public/*
set grepprg=grep\ -In\ --exclude=package-lock.json\ --exclude-dir={.git,node_modules,.next,.cache,lib,public}

" Remove netrw banner
let g:netrw_banner = 0

" Sync plugin repos
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'owickstrom/vim-colors-paramount'
call plug#end()

" Apply static analysis
let g:ale_completion_enabled = 1
let g:ale_linters_explicit = 1
let g:ale_linters = {
\  'javascript': ['eslint'],
\  'typescript': ['eslint', 'tsserver', 'typecheck'],
\}
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\  'javascript': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint'],
\  'json': ['prettier'],
\  'markdown': ['prettier'],
\  'yaml': ['prettier'],
\  'css': ['prettier'],
\}

" Apply color scheme
colorscheme paramount
