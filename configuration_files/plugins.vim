

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/init.vim
endif

call plug#begin('~/.config/nvim/plugged')

"-----------Plugins------------"

"---- File explorers

" allows you to explore your filesystem and to open files and directories
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" enhances netrw(default vim file explorer)
Plug 'tpope/vim-vinegar'



"---- UI and visual code utilities:

if !exists('g:hc_disable_plugin_vim_airline')
    " lean & mean status/tabline for vim that's light as air
    Plug 'vim-airline/vim-airline'

    " themes for vim-airline
    Plug 'vim-airline/vim-airline-themes'
endif

" full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'ctrlpvim/ctrlp.vim'

" the best Git wrapper of all time
Plug 'tpope/vim-fugitive'

" shows a git diff in the 'gutter' (sign column)
Plug 'airblade/vim-gitgutter'

" a syntax checking plugin for Vim
if !exists('g:hc_disable_plugin_syntastic')
    Plug 'scrooloose/syntastic'
endif

" format code with one button press
Plug 'Chiel92/vim-autoformat'

" highlights the matching HTML tag when the cursor is positioned on a tag
Plug 'gregsexton/matchtag'

" greatly improves HTML and CSS writing
Plug 'mattn/emmet-vim'

" highlights with colors the hexa CSS values and rgb and rgba color
Plug 'ap/vim-css-color'

" solarized colorschemes for nvim
Plug 'matsen/nvim-colors-solarized'

" to comment/uncomment multiple lines of code
if !exists('g:hc_disable_plugin_nerdcommenter')
    Plug 'scrooloose/nerdcommenter'
endif

" for inserting "use" statements automatically
Plug 'arnaud-lb/vim-php-namespace'

" Generate ctags when you save a file in a project with ctags generated
Plug 'craigemery/vim-autotag'



"---- Code autocomplition and snippets:

if !exists('g:hc_disable_plugin_deoplete')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

    Plug 'Shougo/neco-syntax'
    Plug 'zchee/deoplete-clang'             " C languages stack
    Plug 'sebastianmarkow/deoplete-rust'    " Rust
    Plug 'zchee/deoplete-jedi'              " Python 
    Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
    Plug 'Shougo/neco-vim'                  " VimL
endif

" UltiSnips is the ultimate solution for snippets in Vim. It has tons of features and is very fast
if !exists('g:hc_disable_plugin_ultisnips')
    Plug 'SirVer/ultisnips'
endif

" contains snippets files for various programming languages
if !exists('g:hc_disable_plugin_vim-snippets')
    Plug 'honza/vim-snippets'
endif

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
Plug 'tpope/vim-surround'

" Close the {, [, (, ', etc characters
Plug 'Raimondi/delimitMate'

"---- Improved syntax:
Plug 'sheerun/vim-polyglot'


" Source user plugins list
if filereadable(expand("~/.nvim.user/u_plugins.vim"))
    source ~/.nvim.user/u_plugins.vim
endif

"-----------endPlugins------------"

" All of your Plugins must be added before the following line
call plug#end()            " required
