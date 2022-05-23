call plug#begin('~/.config/nvim/plugged')
	" Themes
	Plug 'marko-cerovac/material.nvim'

	" Airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Adicionar syntax hightlight para várias linguagens
	Plug 'sheerun/vim-polyglot'

	" Adicionar comentários em várias linguagens
	Plug 'tpope/vim-commentary'

	" Editorconfig
	Plug 'editorconfig/editorconfig-vim'

	" Rainbow Parentheses
	Plug 'kien/rainbow_parentheses.vim'
call plug#end()
