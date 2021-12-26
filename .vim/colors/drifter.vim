" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "drifter"

highlight Comment	 ctermfg=243	
highlight Constant	 ctermfg=12			   cterm=none				  gui=none
highlight Identifier ctermfg=6	
highlight Statement  ctermfg=13			   cterm=bold				  gui=bold
highlight PreProc	 ctermfg=2						  
highlight Type		 ctermfg=2						  
highlight Special	 ctermfg=12						  
highlight Error					ctermbg=9							
highlight Todo		 ctermfg=4	ctermbg=3			  
highlight Directory  ctermfg=2						  
highlight StatusLine ctermfg=11 ctermbg=12 cterm=none gui=none
highlight Normal	 ctermfg=7								  
highlight Search				ctermbg=3
