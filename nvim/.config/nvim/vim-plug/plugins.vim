" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " commenting made easy
    Plug 'tpope/vim-commentary'
    " git integration
    Plug 'tpope/vim-fugitive'

    "onedark theme
    Plug 'joshdick/onedark.vim'
    "gruvbox-community theme
    Plug 'gruvbox-community/gruvbox'
    "status theme
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " undotree
    Plug 'mbbill/undotree'

    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'

    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'preservim/nerdtree'

    " cpbooster
    Plug 'searleser97/cpbooster.vim'

Plug 'sheerun/vim-polyglot'
    call plug#end()
