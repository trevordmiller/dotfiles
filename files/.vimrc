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
Plug 'janko-m/vim-test'
Plug 'tpope/vim-vinegar'
Plug 'ludovicchabant/vim-gutentags'
Plug 'SirVer/ultisnips'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'wakatime/vim-wakatime'
call plug#end()

" NOVA-VIM
colorscheme nova

" ALE
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
\  'typescript': ['prettier', 'eslint', 'tslint'],
\  'json': ['prettier'],
\  'markdown': ['prettier'],
\  'yaml': ['prettier'],
\  'css': ['prettier'],
\}

" FZF
let $FZF_DEFAULT_COMMAND = 'ag --path-to-ignore ~/.ignore --hidden -g ""'
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--path-to-ignore ~/.ignore --hidden', <bang>0)

" SHORTCUTS
let mapleader=' '
nnoremap <leader>t :TestNearest<cr>
nnoremap <leader>l :make .<cr>:copen<cr>:redraw!<cr>
nnoremap <leader>e :Explore<cr>
nnoremap <leader>] :Tags<cr>
nnoremap <leader>s :Snippets<cr>
nnoremap <leader>f :FZF<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>/ :Ag<space>
nnoremap <leader>: :History:<cr>


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

" TAGS
nnoremap <C-]> g<C-]>

" MAKE
set makeprg=./node_modules/.bin/eslint\ --no-color\ -f\ unix\ $*
set errorformat=%A%f:%l:%c:%m,%-G%.%#
