set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'fatih/vim-go'
Bundle 'majutsushi/tagbar'
Plugin 'valloric/youcompleteme' 
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'neowit/vim-force.com'

let g:UltiSnipsListSnippets="<f5>"
let g:UltiSnipsExpandTrigger="<f4>"
let g:UltiSnipsJumpForwardTrigger="<c-x>"
let g:UltiSnipsJumpBackwardTrigger="<c-c>"


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
nmap <F8> :TagbarToggle<CR>
set backspace=2

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
set number

set mouse=a

" vim-Force.com - To defelop for the Force.com platform
" Plugin 'neowit/vim-force.com'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on



" ------------ Custom settings ---------------------------
" Search settings
set ignorecase          " search case insesitive
set smartcase           " case insensitive unless the seach has an uppercase
set incsearch           " search while typing
set hlsearch            " highlight the last searched term 

" Show line numbers
set number

" Remove trailing white spaces and tabs in Salesforce files
autocmd BufWritePre *.page,*.component,*.cls,*.trigger   :%s/\s\+$//e

" Change .bak and .swp path so they don't affect the repository
set bdir=~/.vim/bak
set dir=~/.vim/swp

" When editing a file, always jump to the last cursor position
" autocmd BufReadPost * :call <SID>MoveCursorToLastPosition()

" ------------ End Custom settings ---------------------------




nnoremap <localleader>f :echo "lalala"<CR>

" ------------ Force.com plugin setup ---------------------------
filetype plugin on

" Make sure vim loads apexcode filetype detection
runtime! ftdetect/vim-force.com.vim global/globalCommands.vim

" Set required variables
let g:apex_properties_folder = $HOME . '/.force.com/properties' " use getcwd() to look for the properties file in there
let g:apex_backup_folder = $HOME . '/.force.com/bak'
let g:apex_temp_folder = $HOME . '/.force.com/tmp'
let g:apex_deployment_error_log = $HOME . '/.force.com/tmp/error_log'
let g:apex_tooling_force_dot_com_path = $HOME . '/.force.com/tooling-force.com-0.1.4.0.jar'
let g:apex_API_version = '29.0'

" ------------ End Force.com plugin setup ---------------------------



