" Sync plugins with repos
call plug#begin('~/.vim/plugged')

" Enable sensible defaults
Plug 'tpope/vim-sensible'

" Automate indenting
Plug 'tpope/vim-sleuth'

" Support modern languages
Plug 'sheerun/vim-polyglot'

" Integrate with static analysis tools
Plug 'dense-analysis/ale'

" Use custom color scheme
Plug 'owickstrom/vim-colors-paramount'
call plug#end()

" Remove clutter from file exploring
let g:netrw_banner = 0

" Apply custom color scheme
colorscheme paramount

" Show line numbers
set number

" Show active line
set cursorline

" Persist history
set undofile
set undodir=~/.vim/undo_files//
set directory=~/.vim/swap_files//
set backupdir=~/.vim/backup_files//

" Share clipboard with OS
set clipboard^=unnamed

" Ignore generated files
set wildignore+=*.zip,*.png,*.jpg,*.gif,*.pdf,*.mp3,*.mp4,package-lock.json,*/.git/*,*/node_modules/*,*/.next/*,*/.cache/*,*/lib/*,*/public/*
set grepprg=grep\ -In\ --exclude=package-lock.json\ --exclude-dir={.git,node_modules,.next,.cache,lib,public}
