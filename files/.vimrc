" Sync plugins with repos
call plug#begin('~/.vim/plugged')

" Normalize defaults
Plug 'https://github.com/tpope/vim-sensible'

" Automate indenting
Plug 'https://github.com/tpope/vim-sleuth'

" Enhance languages
Plug 'https://github.com/sheerun/vim-polyglot'

" Enhance wildignore to ignore .gitignore items
Plug 'https://github.com/octref/RootIgnore'

" Integrate with static analysis
Plug 'https://github.com/dense-analysis/ale'

" Add color scheme
Plug 'https://github.com/arcticicestudio/nord-vim'
call plug#end()

" Enhance grep to ignore .gitignore items
set grepprg=git\ --no-pager\ grep\ --no-color\ -n\ $*
set grepformat=%f:%l:%m,%m\ %f\ match%ts,%f

" Set color scheme
colorscheme nord
