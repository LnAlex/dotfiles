" Vundle itself
Bundle 'gmarik/vundle'

" General
Bundle 'scrooloose/nerdtree'
Bundle 'ryanoasis/vim-devicons'
Bundle 'YankRing.vim'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'mbbill/undotree'
Bundle 'mhinz/vim-signify'
Bundle 'Raimondi/delimitMate'
Bundle 'bling/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'edkolev/tmuxline.vim'
Bundle 'easymotion/vim-easymotion'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'editorconfig/editorconfig-vim'

" Colorschemes
Bundle 'tpope/vim-vividchalk'
Bundle 'nanotech/jellybeans.vim'
Bundle 'vim-scripts/molokai'
Bundle 'ajh17/Spacegray.vim'
Bundle 'dylanaraps/ryuuko'


if executable('git')
    Bundle 'tpope/vim-fugitive'
    Bundle 'gregsexton/gitv'
endif

" General Programming
Bundle 'godlygeek/tabular'
Bundle 'vim-scripts/Align'
if executable('ack')
    Bundle 'mileszs/ack.vim'
endif

Bundle 'w0rp/ale'
Bundle 'scrooloose/nerdcommenter'

if executable('ctags')
    Bundle 'majutsushi/tagbar'
endif

Bundle 'ervandew/supertab'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'SirVer/ultisnips'

Bundle 'nathanaelkane/vim-indent-guides'

" C/C++
Bundle 'vim-scripts/a.vim'
Bundle 'c.vim'

" PHP
Bundle 'spf13/PIV'

" YAML
Bundle 'stephpy/vim-yaml'

" Rust
Bundle 'rust-lang/rust.vim'

" Python
Bundle 'vim-scripts/indentpython.vim'

" Javascript
Bundle 'leshill/vim-json'
Bundle 'groenewege/vim-less'
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'

" HTML
Bundle 'hail2u/vim-css3-syntax'
Bundle 'mattn/emmet-vim'

" Golang
Bundle 'fatih/vim-go'

" Misc
Bundle 'tpope/vim-markdown'
Bundle 'spf13/vim-preview'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'digitaltoad/vim-pug'
