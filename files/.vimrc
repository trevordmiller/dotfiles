" Sync plugins with git repos
call plug#begin('~/.vim/plugged')

" Enhance core defaults to work consistently
Plug 'https://github.com/tpope/vim-sensible'

" Enhance indenting to indent automatically
Plug 'https://github.com/tpope/vim-sleuth'

" Enhance languages to use updated language packs
Plug 'https://github.com/sheerun/vim-polyglot'

" Enhance wildignore to ignore .gitignore items
Plug 'https://github.com/octref/RootIgnore'

" Enhance statics analysis to use installed programs
Plug 'https://github.com/dense-analysis/ale'

" Enhance color scheme to use terminal color palette
Plug 'https://github.com/arcticicestudio/nord-vim'
call plug#end()

" Enhance grep to ignore .gitignore items
set grepprg=git\ --no-pager\ grep\ --no-color\ -n\ $*
set grepformat=%f:%l:%m,%m\ %f\ match%ts,%f

" Enhance color scheme to use terminal color palette
colorscheme nord
