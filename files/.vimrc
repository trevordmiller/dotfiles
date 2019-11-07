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

" Add color scheme
Plug 'arcticicestudio/nord-vim'
call plug#end()

" Ignore generated files
set wildignore+=*.zip,*.png,*.jpg,*.gif,*.pdf,*.mp3,*.mp4,package-lock.json,*/.git/*,*/node_modules/*,*/.next/*,*/.cache/*,*/lib/*,*/dist/*,*/public/*
set grepprg=grep\ -In\ --exclude=package-lock.json\ --exclude-dir={.git,node_modules,.next,.cache,lib,dist,public}

" Set color scheme
colorscheme nord
