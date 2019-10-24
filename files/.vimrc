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
set wildignore+=*.zip,*.png,*.jpg,*.gif,*.pdf,*.mp3,*.mp4,package-lock.json,*/.git/*,*/node_modules/*,*/.next/*
set grepprg=grep\ -In\ --exclude=package-lock.json\ --exclude-dir={.git,node_modules,.next}

" Remove netrw banner
let g:netrw_banner = 0

" Sync plugin repos
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'wakatime/vim-wakatime'
call plug#end()

" Apply linters
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
\  'typescript': ['prettier', 'eslint'],
\  'json': ['prettier'],
\  'markdown': ['prettier'],
\  'yaml': ['prettier'],
\  'css': ['prettier'],
\}
