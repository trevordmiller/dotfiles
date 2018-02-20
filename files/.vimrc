" ==================================================================
" CORE
" ==================================================================

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
" PLUGINS
" ==================================================================

call plug#begin('~/.vim/plugged')

" DEFAULTS
Plug 'tpope/vim-sensible'

" LANGUAGES
Plug 'sheerun/vim-polyglot'

" EXPLORE
" netrw - included with vim

" FUZZY FIND
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" SNIPPETS
Plug 'KeyboardFire/vim-minisnip'

" QUALITY CONTROL
Plug 'w0rp/ale'

" TIME TRACKING
Plug 'wakatime/vim-wakatime'

" COLOR SCHEME
Plug 'trevordmiller/nova-vim'

call plug#end()


" ==================================================================
" PLUGIN CONFIG
" ==================================================================

" LANGUAGES
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

" EXPLORE
let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_list_hide = '^\./$,^\.\./$'
let g:netrw_hide = 1
let g:netrw_sort_by = 'name'
let g:netrw_sort_direction = 'normal'

" SNIPPETS
let g:minisnip_dir = '~/.snippets/'

" QUALITY CONTROL
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

" COLOR SCHEME
colorscheme nova


" ==================================================================
" SHORTCUTS
" ==================================================================

let mapleader=" "
nnoremap <leader>e :E<cr>
nnoremap <leader>s :Ag<cr>
nnoremap <leader>f :FZF<cr>
nnoremap <leader>r :Buffer<cr>
nnoremap <leader>: :History:<cr>
