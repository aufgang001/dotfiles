#!/usr/bin/vim 

call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> My Bundles:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"an universal set of defaults that (hopefully) everyone can agree on
Plug 'tpope/vim-sensible'

"Multi threading extention
Plug 'shougo/vimproc.vim', {'do': 'make'} 

"filesystem navigator
Plug 'scrooloose/nerdtree'
Plug 'aufgang001/vim-nerdtree_plugin_open'

"commenting of code
Plug 'scrooloose/nerdcommenter' 

"code-completion engine
function! BuildYCM(info)
    " info is a dictionary with 3 fields
    " - name:   name of the plugin
    " - status: 'installed', 'updated', or 'unchanged'
    " - force:  set on PlugInstall! or PlugUpdate!
    if a:info.status != 'unchanged'
        !./install.py --clang-completer
    endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

"clang-formater wrapper
Plug 'aufgang001/vim-clang-format-py'

"highlighting schemes
Plug 'flazz/vim-colorschemes'
Plug 'NLKNguyen/papercolor-theme'

"displaying thin vertical lines at each indentation level
Plug 'Yggdroot/indentLine'

"intelligently toggling line numbers
Plug 'myusuf3/numbers.vim'

"vim plugin for changing background color of lines 
Plug 'scottupdike/vim-wholelinecolor'


Plug 'Raimondi/delimitMate'
Plug 'itchyny/lightline.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'mbbill/undotree'
Plug 'vim-scripts/DrawIt'

Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'

"Read Unix Man pages in vim
Plug 'Z1MM32M4N/vim-superman'

"synatax highlighting pack
Plug 'sheerun/vim-polyglot'

"highlighting mcproxy config files
Plug 'mcproxy/vim-mcproxy_conf_highlighting'

"list all TODOs in your project
Plug 'vim-scripts/TaskList.vim'

"my synconized spell files
Plug 'aufgang001/vim-custom_spellfile', {'do': './install.sh'} 

"opens URLs in browser
Plug 'waiting-for-dev/www.vim'

"search and open files
Plug 'ctrlpvim/ctrlp.vim'

"in file search
Plug 'mileszs/ack.vim'

"gitplugin
Plug 'tpope/vim-fugitive'

"delete, change and add surroundings in pairs
Plug 'tpope/vim-surround'

"Neovim Related projects
"https://github.com/neovim/neovim/wiki/Related-projects

"hot to terminal in neovim
"https://medium.com/@garoth/neovim-terminal-usecases-tricks-8961e5ac19b9

"vimwiki with tagbar
"https://github.com/vimwiki/vimwiki/issues/36    https://gist.github.com/EinfachToll/9071573

"currently not working, we should wait a while
"Plug 'XadillaX/json-formatter.vim'


"http://vimawesome.com/

"http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/

"the clean vimrc
"http://usevim.com/2012/05/09/clean-vimrc/

"mybe better than vimwiki
"https://github.com/Rykka/riv.vim

"the better shell
"http://code.hootsuite.com/vimshell/

"language detection
"https://github.com/daaugusto/spelllangidentifier

"ToDO
"write an mcproxy script hihlighter
"https://github.com/bbchung/clighter
"book
"http://learnvimscriptthehardway.stevelosh.com/

"maybe better plugin manager
"https://github.com/junegunn/vim-plug

"an other formater
"https://github.com/Chiel92/vim-autoformat

"unit.vim 
"It would be great to use @Shougo Unite.vim plugin (A wonderful plugin) which (easily) replace cltrp / ack / and NERDtree.

"https://github.com/amix/vimrc ==> bääääm boooom bäsch get das up
"FredKSchott/CoVim
" non github repos
"Plug 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
"Plug 'file:///Users/gmarik/path/to/plugin'

" check this out https://github.com/spf13/spf13-vim
" https://github.com/skwp/dotfiles
"
" maybe a better vimplugin
" http://www.vim.org/scripts/script.php?script_id=3508#1.3.13

"F5 auto make file 
"johnsyweb/vim-makeshift

"GDB extension
"http://www.vim.org/scripts/script.php?script_id=4582#0.11

" an autosave plugin
" https://github.com/907th/vim-auto-save

"colobration 
"https://github.com/Floobits/floobits-vim
" 
" old plugins
"Plug 'mhinz/vim-startify' 
"Plug 'kien/ctrlp.vim'

"vimcat
"http://www.vim.org/scripts/script.php?script_id=4325#2.0

"intersting Font recommended by Fefe
"https://www.google.com/fonts/specimen/Roboto+Mono

call plug#end()
