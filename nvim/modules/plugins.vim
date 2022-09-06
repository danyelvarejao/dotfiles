call plug#begin('~/.config/nvim/plugged')
	" Airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Suporte para Git no Vim
	Plug 'tpope/vim-fugitive'

	" Adicionar syntax hightlight para várias linguagens
	Plug 'sheerun/vim-polyglot'

	" Editorconfig
	Plug 'editorconfig/editorconfig-vim'

	" Conquer of Completation - autocomplete - intelisense engine
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }

	" Fazer fechamento automático de pares (parênteses, colchetes, aspas, etc)
	Plug 'jiangmiao/auto-pairs'

	" === 
	" Início da instalação do fzf
	" O fzf serve para fazer buscas no estilo do vscode, com Ctrl + P
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
	Plug 'junegunn/fzf.vim'
	" Final da instalação do fzf
	" ===

	" Suporte para Styled Components
	Plug 'styled-components/vim-styled-components', { 'branch': 'develop' }

	" Suporte à liguagem JavaScript
	Plug 'pangloss/vim-javascript'

	" Suporte para VueJS
	Plug 'posva/vim-vue'

	" Emmet (HTML)
	Plug 'mattn/emmet-vim'

	" Nerd Tree
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'
call plug#end()
