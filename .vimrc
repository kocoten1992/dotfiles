colorscheme spring-night

"------------------VUNDLE----------------"
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
Plugin 'scrooloose/nerdcommenter'
Plugin 'danro/rename.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'mattn/emmet-vim'
Plugin 'wavded/vim-stylus'
Plugin 'rust-lang/rust.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'othree/html5.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'martinda/Jenkinsfile-vim-syntax'
Plugin 'vim-scripts/groovyindent-unix'
Plugin 'vifm/vifm'
Plugin 'vim-autoformat/vim-autoformat'
Plugin 'mg979/vim-visual-multi'
Plugin 'ap/vim-css-color'
Plugin 'vim-vdebug/vdebug'

call vundle#end()            " required

"------------------END-------------------"


silent !stty -ixon > /dev/null 2>/dev/null
set backspace=indent,eol,start
set background=dark
set redrawtime=10000
let g:ctrlp_max_files=0
syntax on
set switchbuf=useopen,usetab

"The default <Leader> is / but hell no, , is better"
let mapleader = ','

"Activate line number"
set nonumber

"Shell are using?
set shell=/bin/bash

"Show hidden files, nerdtree
let NERDTreeShowHidden=1

"Automatic save the file when switching buffer
set autowriteall

"Set autocomplete
set complete=.,w,b,u
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

set expandtab ts=4 sw=4 ai

"Set php-fixer default
let g:set_php_fixer_level = "psr2"
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

"Auto Doc block
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>

"GitGutter gitgutter
let g:gitgutter_enabled = 0

"Vdebug
let g:vdebug_options = {}
let g:vdebug_options["port"] = 9001
let g:vdebug_features = { 'max_children': 256 }

"------------------VISUALS---------------"
set guifont=Fira_Code:h17
set guioptions-=e
set linespace=15

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


hi Normal ctermfg=none ctermbg=none
hi FoldColumn ctermbg=none ctermfg=none



"------------VIM MULTIPLE CURSOR---------"
" Default mapping
let g:multi_cursor_use_default_mapping=0

" Map start key separately from next key
let g:multi_cursor_start_key='<F6>'



"------------------SEARCH----------------"
set hlsearch
set incsearch








"----------------CTRLVIM-----------------"
let g:ctrlp_clear_cache_on_exit = 0









"----------------TERMINAL----------------"
nmap <Leader>ts :!










"----------------CTAGS-------------------"
nmap <Leader>ct :tag<space>
nmap <Leader>ctn :tn<CR>
nmap <Leader>ctp :tp<CR>
nmap <Leader>cts :ts<CR>

nmap <Leader>ctc :!ctags -R --exclude=.git --exclude=node_modules --exclude=vendor --exclude=bower_components --exclude=storage --exclude=.idea --exclude=jspm_packages --exclude=.vscode<space><CR>

nmap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>









"------------------SPIT MANAMENT---------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

nmap <Leader>vsp :vsp<CR>
nmap <Leader>hsp :sp<CR>





"------------------IMAP------------------"
"Ctrl-C is now Esc




"------------------NMAP------------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<CR>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<CR>
nmap <Leader>es :e ~/.vim/snippets/

"Return to old buffer
nmap <BS> :bp<CR>

"Add simple hightlight removal.
nmap <Leader><space> :nohlsearch<CR>

"Toggle NERDTreeToggle
nmap ,1 :NERDTreeToggle<CR>

"Recent Files
nmap <C-e> :CtrlPMRUFiles<CR>

"Tab switching
nmap <C-l> :tabn<CR>
nmap <C-h> :tabp<CR>

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
"nmap <C-h> <C-w><C-h>
"nmap <C-k> <C-w><C-k>
"nmap <C-j> <C-w><C-j>
"nmap <C-l> <C-w><C-l>

"Format js
map <Leader>js :call JsBeautify()<cr>

"Format html
map <Leader>html :set ft=html<CR> =G

nmap <Leader>sp :set paste<CR>
nmap <Leader>np :set nopaste<CR>



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





"--------------FILETYPE-SPECIFIC----------"
au FileType javascript setlocal sw=2 sts=2 ts=2 et
au FileType html setlocal sw=2 sts=2 ts=2 et
au FileType css setlocal sw=2 sts=2 ts=2 et
au FileType rs setlocal sw=2 sts=2 ts=2 et
autocmd BufRead,BufNewFile *.blade.php set filetype=html






"------------------LARAVEL-SPECIFIC-------"
nmap <F3> :Autoformat<CR>
nmap <Leader>lr :e app/routes/web.php<CR>
nmap <Leader>lc :CtrlP<CR>app/Http/Controllers
nmap <Leader>lm :CtrlP<CR>app/
nmap <Leader>lv :CtrlP<CR>resources/views/




"----------------RUST-RACER---------------"
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
let g:racer_experimental_completer = 1
let g:racer_cmd = "~/.cargo/bin/racer"
let $RUST_SRC_PATH="~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"





"/
"------------------CtrlP------------------"
"\
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor/*,*/node_modules/*,*/.vscode/*

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules|DS_Store|vendor)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_show_hidden = 1






"/
"------------------NERDTree------------------"
"\
let NERDTreeHijackNetrw = 0
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.git$', '\.vscode$']
map <leader>r :NERDTreeFind<cr>






"/
"------------------GREPLACE.VIM------------------"
"\
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'









"/
"------------------GITGUTTER------------------"
"\
nmap <Leader>gg :GitGutterToggle<CR>


















"Sort PHP use statements
""http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>
vmap <Leader>sd ! awk '{ print length(), $0 \| "sort -r -n \| cut -d\\  -f2-" }'<cr>








"------------------Auto-Commands-------------"

"Automatically source the Vimrc file on save.

augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END
