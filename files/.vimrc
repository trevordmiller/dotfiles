" Sync plugins with repos
call plug#begin('~/.vim/plugged')

" Normalize defaults
Plug 'https://github.com/tpope/vim-sensible'

" Automate indenting
Plug 'https://github.com/tpope/vim-sleuth'

" Enhance languages
Plug 'https://github.com/sheerun/vim-polyglot'

" Integrate with static analysis
Plug 'https://github.com/dense-analysis/ale'
call plug#end()

" Persist history
set undofile
set undodir=~/.vim/undo_files//
set directory=~/.vim/swap_files//
set backupdir=~/.vim/backup_files//

" Ignore generated files
set wildignore+=*.zip,*.png,*.jpg,*.gif,*.pdf,*.mp3,*.mp4,package-lock.json,*/.git/*,*/node_modules/*,*/.next/*,*/.cache/*,*/lib/*,*/dist/*,*/public/*
set grepprg=grep\ -In\ --exclude=package-lock.json\ --exclude-dir={.git,node_modules,.next,.cache,lib,dist,public}
