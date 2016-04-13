set nocompatible              " be iMproved, required

"------------------VUNDLE----------------"
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-surround'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'ervandew/supertab'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
Plugin 'SirVer/ultisnips'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jwalton512/vim-blade'
Plugin 'danro/rename.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'mattn/emmet-vim'

call vundle#end()            " required
filetype plugin indent on    " required

"------------------END-------------------"




silent !stty -ixon > /dev/null 2>/dev/null
set backspace=indent,eol,start
set background=dark
let g:ctrlp_max_files=0
syntax on
set switchbuf=useopen,usetab

"The default <Leader> is / but hell no, , is better"
let mapleader = ','

"Activate line number"
set nonumber

"Shell are using?
set shell=/bin/bash

"Automatic save the file when switching buffer
set autowriteall

"Set autocomplete
set complete=.,w,b,u
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4

"Set php-fixer default
let g:set_php_fixer_level = "psr2"
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

"Auto Doc block
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>




"------------------VISUALS---------------"
"colorscheme atom-dark-256
set guifont=Fira_Code:h17
set guioptions-=e
set t_CO=256
set linespace=15

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


set foldcolumn=2

hi Normal ctermfg=none ctermbg=none
hi FoldColumn ctermbg=none ctermfg=none



"------------------SEARCH----------------"
set hlsearch
set incsearch





"------------------SPIT MANAMENT---------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>






"------------------IMAP------------------"
"Ctrl-C is now Esc




"------------------NMAP------------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<CR>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<CR>
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader>tn :tn<CR>
nmap <Leader>tp :tp<CR>

"Return to old buffer
nmap <BS> :bp<CR>

"Find tags ctags
nmap <Leader><Leader>t :tag<space>

"Add simple hightlight removal.
nmap <Leader><space> :nohlsearch<CR>

"Toggle NERDTreeToggle
nmap ,1 :NERDTreeToggle<CR>

"Recent Files
nmap <C-e> :CtrlPMRUFiles<CR>

"Tab switching
nmap <C-n> :tabn<CR>
nmap <C-m> :tabp<CR>
nmap <C-l> :tabl<CR>

"Tab moving
nmap <C-F9> :tabm -1<CR>
nmap <C-F10> :tabm +1<CR>

"Edit new file in new tab
nmap <Leader>ee :tabedit

"Tab close
nmap <C-x> :tabc<CR>

"Tab open 
nmap <C-o> :tabnew<CR>

"Spit window close
nmap <C-q> :q<CR>

"Spit window switching
nmap <C-h> <C-w><C-h>
nmap <C-k> <C-w><C-k>
nmap <C-j> <C-w><C-j>
nmap <C-l> <C-w><C-l>

"Format js
map <Leader>js :call JsBeautify()<cr>

"Format html
map <Leader>html :set ft=html<CR> =G




"------------------RENAME-CURRENT-FILE----"
nmap <Leader>rc :rename 





"------------------MARK-------------------"
nmap mm mM
nmap mn mN
nmap mc mC
nmap mv mV
nmap ma mA
nmap ms mS
nmap md mD
nmap mf mF
nmap mj mJ
nmap mk mK
nmap ml mL
nmap mi mI
nmap mo mO
nmap mp mP

nmap zm 'Mzz
nmap zn 'Nzz
nmap zc 'Czz
nmap zv 'Vzz
nmap za 'Azz
nmap zs 'Szz
nmap zd 'Dzz
nmap zf 'Fzz
nmap zj 'Jzz
nmap zk 'Kzz
nmap zl 'Lzz
nmap zi 'Izz
nmap zo 'Ozz
nmap zp 'Pzz





"------------------LARAVEL-SPECIFIC-------"
nmap <F3> :Autoformat<CR>





"------------------LARAVEL-SPECIFIC-------"
nmap <Leader>lr :e app/Http/routes.php<CR>
nmap <Leader>lc :CtrlP<CR>app/Http/Controllers
nmap <Leader>lm :CtrlP<CR>app/
nmap <Leader>lv :e resources/views/<CR>





"/
"------------------CtrlP------------------"
"\
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'







"/
"------------------NERDTree------------------"
"\
let NERDTreeHijackNetrw = 0






"/
"------------------GREPLACE.VIM------------------"
"\
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'

















"Custom function here and there :P

"Custom function vim-php-namespace
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>


function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>









"Sort PHP use statements
""http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>









"------------------Auto-Commands-------------"

"Automatically source the Vimrc file on save.

augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END
