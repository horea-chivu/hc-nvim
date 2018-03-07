"
"  ██░ ██  ▄████▄      ██▒   █▓ ██▓ ███▄ ▄███▓
"  ██░ ██▒▒██▀ ▀█     ▓██░   █▒▓██▒▓██▒▀█▀ ██▒
" ▒██▀▀██░▒▓█    ▄     ▓██  █▒░▒██▒▓██    ▓██░
" ░▓█ ░██ ▒▓▓▄ ▄██▒     ▒██ █░░░██░▒██    ▒██
" ░▓█▒░██▓▒ ▓███▀ ░      ▒▀█░  ░██░▒██▒   ░██▒
"  ▒ ░░▒░▒░ ░▒ ▒  ░      ░ ▐░  ░▓  ░ ▒░   ░  ░
"  ▒ ░▒░ ░  ░  ▒         ░ ░░   ▒ ░░  ░      ░
"  ░  ░░ ░░                ░░   ▒ ░░      ░
"  ░  ░  ░░ ░               ░   ░         ░
"         ░                ░
"
" You can customize these configurations in ~/.nvim.user directory.
" The files in the ~/.nvim.user directory will not be affected by updates!


" Use before config
if filereadable(expand("~/.nvim.user/before.vim"))
    source ~/.nvim.user/before.vim
endif

" Load settings
if filereadable(expand("~/.nvim.user/settings.vim"))
    source ~/.nvim.user/settings.vim
endif

" Set leader key to <,>
let mapleader=","

" Source a sepparate .vim file that contans custom functions
source ~/.nvim/functions.vim

" Environment

" Identify platform
silent function! OSX()
return has('macunix')
        endfunction
        silent function! LINUX()
        return has('unix') && !has('macunix') && !has('win32unix')
    endfunction
    silent function! WINDOWS()
    return  (has('win32') || has('win64'))
endfunction

" Un UNIX, use Bash
if !WINDOWS()
    set shell=/bin/bash
endif

" Basics

" Use mouse functionality if available
if has('mouse')
    set mouse=a
endif

set mousehide                   " Hide the mouse cursor while typing
scriptencoding utf-8
set hidden                      " Allow buffer switching without saving

set ttyfast                     " Fast cursor
set showmode                    " Display the current mode
set cursorline                  " Highlight current line
highlight clear LineNr          " Current line number row will have same background color in relative mode
set backspace=indent,eol,start  " Backspace for dummies
set linespace=5                 " Space between lines
set number                      " Show current line number
set relativenumber              " Show relative line numbers
set nospell                     " Disable spell

" Set line number bg to general background
hi LineNr guibg=bg

set showmatch                   " Show matching brackets/parenthesis
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=6                " Lines to scroll when cursor leaves screen
set scrolloff=6                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

" Formatting

set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)

" *.pl stands for Prolog by now
let g:filetype_pl="prolog"

"------------Fonts and Colorschemes-------------"
syntax enable
if !exists('g:hc_light_colorscheme')
    set background=dark                         " Assume a dark background
    colorscheme codeschool
else
    set background=light                         " Assume a dark background
    colorscheme github
endif


"----------Key Mappings--------"

" Shortcut for init.vim file
nmap <Leader>ev :tabedit ~/.config/nvim/init.vim<Enter>

" Shortcut for plugins file
nmap <Leader>ep :tabedit ~/.config/nvim/plugins.vim<Enter>

" Shortcut for Vundle Plugins Installation
nmap <Leader>ei :PluginInstall<Enter>

" Shortcut for highlight removal
nmap <Leader><space> :nohlsearch<Enter>

" Press jj twice instead of ESC
inoremap jj <ESC>

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" Correct common mistake
cmap Q q
cmap Q! q!
cmap W w
cmap WQ wq
cmap wQ wq
cmap Wq wq

" Close the tab
nmap <Leader>tc :tabc<Enter>

" Next tab
nmap <Leader>r :tabn<Enter>
nmap L :tabn<Enter>

" Previous tab
nmap <Leader>w :tabp<Enter>
nmap H :tabp<Enter>

" Switch between tabs
nmap <C-tab> <esc>:tabn<CR>

" Easier movement between splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

tnoremap <Esc> <C-\><C-n>

nma <Leader>f :tag<space>

" Source a sepparate .vim file that contans the list of plugin
so ~/.config/nvim/plugins.vim

" Source a sepparate .vim file that contans the plugins settings
so ~/.config/nvim/plugins_settings.vim

" Use after config
if filereadable(expand("~/.nvim.user/after.vim"))
    source ~/.nvim.user/after.vim
endif

" Automaticlly source the init.vim file
augroup autosourcing
    autocmd!
    autocmd BufWritePost ~/.config/nvim/init.vim source %
augroup END
