" ==================================================================
" PLUGINS
" ==================================================================

" VIM-PLUG
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'trevordmiller/nova-vim'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'KeyboardFire/vim-minisnip'
Plug 'wakatime/vim-wakatime'
call plug#end()

" NOVA-VIM
colorscheme nova

" VIM-POLYGLOT
let g:javascript_plugin_flow = 1

" ALE
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

" FZF
" Relies on FZF_DEFAULT_COMMAND set in ~/.bash_profile

" VIM-MINISNIP
let g:minisnip_dir = '~/.snippets/'

" VIM-WAKATIME
" Relies on config set in ~/.wakatime.cfg

" SHORTCUTS
let mapleader=" "
nnoremap <leader>f :FZF<cr>
nnoremap <leader>s :Ag<cr>
nnoremap <leader>r :Buffer<cr>
nnoremap <leader>: :History:<cr>
nnoremap <leader>e :Explore<cr>


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

" HISTORY
set undofile
set undodir=~/.vim/undo_files//
set directory=~/.vim/swap_files//
set backupdir=~/.vim/backup_files//

" CLIPBOARD
set clipboard^=unnamed

" PERFORMANCE
set synmaxcol=200
