# hc-vim

## Description

Autoinstaller for nvim configuration that provide lots of features for many situations in programming.

# How to install?

## On Ubuntu Based
First, install vim, curl and git.
* `sudo apt-get update`
* `sudo apt-get -y install git curl`

Then execute in terminal: `bash <(curl -s https://raw.githubusercontent.com/horea-chivu/hc-nvim/master/install)`

Then you will be promted to execute *ubuntu-dependencies* file in order to install required dependencies for Vim to work correctly. If you want to do it later, manually, run the followig command: `bash ~/.hc-vim/ubuntu-dependencies`.

## On Mac OS
First, install vim, curl and git.
* `brew install macvim git curl`

Then execute in terminal: `bash <(curl -s https://raw.githubusercontent.com/horea-chivu/hc-nvim/master/install)`

You will be asked if you installed the dependencies. If no, please inter **n**, install
what is listed in ~/.hc-vim/mac-dependencies file and the run:
* `bash ~/.hc-nvim/install`
and then when you are asked again the same question, press **y** and **Enter**.

# How to update?

Just execute in your terminal `bash ~/.hc-vim/update`, and the script will take care of the updates for you(it might take a while becouse of download and compilation of YouCompleteMe). You will probably be promted to run *ubuntu-dependencies* again. Please, do it.

# Settings and customizations
6 files will be created where you can put your personal vim configurations:
    * `~/.nvim.user/settings.vim` - some predifined settings that you can enable or disable(ex: you can disable plugins)
    * `~/.nvim.user/before.vim` - you can put here all your settings that will be sourced *before* anything else
    * `~/.nvim.user/.vim.user.after` - you can put here all your settings that will be sourced *after* anything else
    * `~/.nvim.user/u_plugins.vim` - you can add plugins
    * `~/.nvim.user/u_plugins_settings.vim` - you can add settings for those plugins
    * `~/.nvim.user/UltiSnips` - you can add *programming_language*.snippets files where you can create UltiSnips snippets

# Backups

Your old configurations, represented by *~/.config/nvim_old* directory will be moved in **~/.config/nvim_old** directory.

# Features

1. Gorgeous font(Monaco) and customized colorschemes(github for day, codeschool for night)
2. Modern init.vim configuration, with no redundant configurations
3. **Plug Vim** - a very efficient plugin manager with a lot of features.
4. File explorers:
    * **scrooloose/nerdtree** - allows you to explore your filesystem and to open files and directories
    * **tpope/vim-vinegar** - enhances netrw(default Vim file explorer)
5. UI and visual code utilities:
    * **vim-airline/vim-airline** - lean & mean status/tabline for Vim that's light as air
    * **vim-airline/vim-airline-themes** - themes for vim-airline
    * **ctrlpvim/ctrlp.vim** - full path fuzzy file, buffer, mru, tag, ... finder for Vim.
    * **tpope/vim-fugitive** - the best Git wrapper of all time
    * **airblade/vim-gitgutter** - shows a git diff in the 'gutter' (sign column)
    * **scrooloose/syntastic** - a syntax checking plugin for Vim
    * **Chiel92/vim-autoformat** - format code with one button press
    * **gregsexton/matchtag** - highlights the matching HTML tag when the cursor is positioned on a tag
    * **mattn/emmet-vim** - greatly improves HTML and CSS writing
    * **ap/vim-css-color** - highlights with colors the hexa CSS values and rgb and rgba color
    * **scrooloose/nerdcommenter** - to comment/uncomment multiple lines of code
    * **arnaud-lb/vim-php-namespace** - for inserting "use" statements automatically
    * **craigemery/vim-autotag** - generate ctags when you save a file in a project with ctags generated
5. Code autocomplition and snippets:
    * **Shougo/deoplete.nvim** -  It provides an extensible and asynchronous completion framework for neovim/Vim8.
    * **SirVer/ultisnips** - UltiSnips is the ultimate solution for snippets in Vim. It has tons of features and is very fast
    * **honza/vim-snippets** - contains snippets files for various programming languages
    * **tpope/vim-surround** - surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more
    * **spf13/vim-autoclose** - if you open a bracket, paren, brace, quote, etc, it automatically closes it
6. Improved syntax:
    * **sheerun/vim-polyglot** - syntax highlighting for every language

# Usage

**About mappings**: 
`C` is `Ctrl` and `M` is `Alt`. For example: `<C-p>` is `Ctrl+p` and `<M-o>` is `Alt+o` pressed in the same time. `<Leader>` key is set to `,`(comma). For example: `<Leader>ev` is `,ev` pressed one after the other.

**Plugins mappings**

* **scrooloose/nerdtree**
Press `<Leader>1` to activate NerdTree. While you're in this explorer:
    * `t` - open in new tab
    * `T` - open in new tab silently
    * `i` - open split
    * `s` - open vsplit
    * `o` - open & close node
    * `O` - recursively open node
    * `x` - close parent of node
    * `X` - close all child nodes of current node recursively
    * `C` - change tree root to the selected dir
    * `u` - move tree root up a dir
    * `U` - move tree root up a dir but leave old root open
    * `r` - refresh cursor dir
    * `R` - refresh current root
    * `cd` -change the CWD to the selected dir
    * `CD` -change tree root to CWD
    * `I` - hidden files (default is off)
    * `?` - to show help

* **vinegar**
Press "-" - to go to the parrent dir. While you're in this file explorer:
    * `%` - to create a file
    * `d` - to create a dir
    * `D` - to delete a file or a dir
    * `R` - to rename a file or a dir
    * `x` - to execute a file

* **ctrlpvim**
    * `<C-p>` - search for files in this project(be sure Vim in correct diretory)
    * `<Leader>.` - search for tags in this project if *if the ctags are generated for that project*

* **vim-fugitive**
Instructions in here: https://github.com/tpope/vim-fugitive

* **vim-autoformat**
`<F3>` - format all the code in this file

* **emmet-vim**
`<C-z><Leader>` - trigger the Emmet statement from *behind the cursor*

* **nerdcommenter**
Use visual mode(activatei/deactivate by pressing v) to select all the code youwant to comment and press <Leader>cc. To uncomment, select it in the same way and press <Leader>c<Space>

* **vim-php-namespace**
`<Leader>n` - insert PHP use namespace statement for the class under the cursor *if the ctags are generated for that project*(vim-php-namespaces)

* **YouCompleteMe**
Normally, this autocomplete plugin is used well with <Tab>. But to unlock the full power of autocomplition, use <C-Space>

* **SirVer/ultisnips**
    * `<C-d>` - to expand the snippet
    * `<C-d>` - to move forward
    * `<C-a>` - to move backwards

* **vim-surround**
Instructions in here: https://github.com/tpope/vim-surround

**Custom mappings**

* `jj` - go to the NORMAL mode(you can use it instead of `<ESC>`)

* `/` - to search and highlight a word in file and press "n" to go to the next occurence
* `<Leader><space>` - to remove highlight from the search

* `<C-j>` - Move to down split
* `<C-k>` - Move to upper split
* `<C-h>` - Move to left split
* `<C-l>` - Move to right split

* `<Leader>tc` - Close the tab
* `<Leader>r` - Next tab
* `L` - Next tab
* `<Leader>w` - Previous tab
* `H` - Previous tab
* `<C-tab>` - Switch between tabs(works only in gui)

* `<C-c>` - to copy to the OS clipboard the text *selected in VISUAL mode*
* `<C-v>` - to paste from the OS clipboard the text *while you're in INSERT mode*

* `<Leader>ev` - open the .vimrc in a new tab
* `<Leader>ep` - open the plugin.vim(contains the list of plugins) in a new tab
* `<Leader>ei` - trigger installation of plugins(you will need to save and source configurations files modified first)

* If you accidentally pressed `:W` instead of `:w`, don't worry. It still works.
    * `:Q` is `:q`
    * `:Q!` is `:q!`
    * `:W` is `:w`
    * `:WQ` is `:wq`
    * `:wQ` is `:wq`
    * `:Wq` is `:wq`

#Generate ctags
You will need **exuberant-ctags**(included in *ubuntu-dependencies*). To generate the ctags you will need to `cd` to project root directory and run from terminal `ctags -R .`. If you want to exlude directories(like vendor and node_modules) you may run `ctags -R --exclude=node_modules --exclude=vendor .`. After this you're set. In addition to the plugins above that use ctags(like vim-php-namespace and ctrlp), there are very good default Vim mappings: `<C-]>`(jump to the definition of the funtion under the cursor), `<C-t>`(go back), `<C-w><C-]>`(open the definition in a horizontal split) and `:tag name_of_the_tag`.
