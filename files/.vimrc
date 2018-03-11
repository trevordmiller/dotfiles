" ==================================================================
" PLUGINS
" ==================================================================

" VIM-PLUG
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'w0rp/ale'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'SirVer/ultisnips'
Plug 'ludovicchabant/vim-gutentags'
Plug 'wakatime/vim-wakatime'
call plug#end()

" VIM-POLYGLOT
let g:javascript_plugin_flow = 1

" NOVA-VIM
colorscheme nova

" ALE
let g:ale_echo_msg_format = '[%linter%] %s'
let g:ale_linters = {
\  'sh': ['shell'],
\  'go': ['go vet', 'golint'],
\  'python': ['pylint'],
\  'ruby': ['rubocop'],
\  'javascript': ['flow', 'eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\  'sh': ['shfmt'],
\  'go': ['gofmt'],
\  'python': ['yapf'],
\  'ruby': ['rubocop'],
\  'javascript': ['prettier', 'eslint'],
\  'json': ['prettier'],
\  'css': ['prettier'],
\  'markdown': ['prettier'],
\}
let g:ale_pattern_options = {
\  'repos/edgar': {
\    'ale_fixers': {
\      'sh': [],
\      'ruby': [],
\      'javascript': ['eslint'],
\      'json': [],
\      'css': [],
\      'markdown': [],
\    }
\  },
\}

" FZF
let $FZF_DEFAULT_COMMAND = 'ag --path-to-ignore ~/.ignore --hidden -g ""'
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--path-to-ignore ~/.ignore --hidden', <bang>0)

" SHORTCUTS
let mapleader=' '
nnoremap <leader>f :FZF<cr>
nnoremap <leader>/ :Ag<space>
nnoremap <leader>r :Buffers<cr>
nnoremap <leader>: :History:<cr>
nnoremap <leader>s :Snippets<cr>
nnoremap <leader>e :Explore<cr>


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
