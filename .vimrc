" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Shaw's setting
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'justinj/vim-react-snippets'

if iCanHazVundle == 0
    echo "Installing Plugins, please ignore key map error messages"
    echo ""
    :PluginInstall
endif
" Setting up Vundle - the vim plugin bundler end

syntax on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number
" set cindent 
" set autoindent
set smartindent
set hls
set encoding=utf-8
map <C-k> :NERDTreeToggle<CR>
map <C-l> :NERDTreeClose<CR>
