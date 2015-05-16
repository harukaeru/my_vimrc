execute pathogen#infect()
syntax on

scriptencoding utf-8
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0

set spell
set spelllang=en,cjk

set directory=$HOME/.vim/swapfiles//

"source /Users/usrNeko/.vim/indent/python.vim
set hlsearch

set backspace=indent,eol,start
let g:jedi#completion_command = "<C-p>"

"PEP8
au BufNewFile,BufRead *.py set textwidth=80
autocmd FileType python syntax spell toplevel
au BufRead *.html syntax spell toplevel
autocmd BufWritePre * :%s/\s\+$//ge

set nu
set rnu
iabbrev neko@ nekoneko.myaomyao@gmail.com
nnoremap , "*y

nnoremap <silent> co :ContinuousNumber <C-a><CR>
vnoremap <silent> co :ContinuousNumber <C-a><CR>
command! -count -nargs=1 ContinuousNumber let c = col('.')|for n in range(1, <count>?<count>-line('.'):1)|exec 'normal! j' . n . <q-args>|call cursor('.', c)|endfor

