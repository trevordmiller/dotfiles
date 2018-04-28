" ==================================================================
" PLUGINS
" ==================================================================

" VIM-PLUG
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'tpope/vim-vinegar'
Plug 'ludovicchabant/vim-gutentags'
Plug 'SirVer/ultisnips'
Plug 'w0rp/ale'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'wakatime/vim-wakatime'
call plug#end()

" NOVA-VIM
colorscheme nova

" ALE
let g:ale_echo_msg_format = '[%linter%] %s'
let g:ale_fix_on_save = 1
let g:ale_linters = {
\  'sh': ['shell'],
\  'typescript': ['tsserver', 'typecheck', 'tslint'],
\  'javascript': ['flow', 'eslint'],
\}
let g:ale_fixers = {
\  'sh': ['shfmt'],
\  'typescript': ['prettier', 'tslint'],
\  'javascript': ['prettier', 'eslint'],
\  'json': ['prettier'],
\  'markdown': ['prettier'],
\  'css': ['prettier'],
\}
let g:ale_pattern_options = {
\  'repos/edgar': {
\    'ale_fixers': {
\      'sh': [],
\      'javascript': ['eslint'],
\      'json': [],
\      'markdown': [],
\      'css': [],
\    },
\  },
\}

" FZF
let $FZF_DEFAULT_COMMAND = 'ag --path-to-ignore ~/.ignore --hidden -g ""'
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--path-to-ignore ~/.ignore --hidden', <bang>0)

" SHORTCUTS
let mapleader=' '
nnoremap <leader>e :Explore<cr>
nnoremap <leader>/ :Ag<space>
nnoremap <leader>: :History:<cr>
nnoremap <leader>f :FZF<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>t :Tags<cr>
nnoremap <leader>s :Snippets<cr>


" ==================================================================
" CORE
" ==================================================================

" LINES
set number
set cursorline

" HISTORY
set undofile
set undodir=~/.vim/undo_files//
set directory=~/.vim/swap_files//
set backupdir=~/.vim/backup_files//

" CLIPBOARD
set clipboard^=unnamed

" PERFORMANCE
set synmaxcol=200
