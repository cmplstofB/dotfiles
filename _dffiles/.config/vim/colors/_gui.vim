let s:orig_cpo = &cpoptions
setlocal cpoptions&vim

call extend(v:colornames, {
           \ 'Campbell_DarkBlack' : '#0c0c0c',
           \ 'Campbell_DarkBlue' : '#0037da',
           \ 'Campbell_DarkGreen' : '#13a10e',
           \ 'Campbell_DarkCyan' : '#3a96dd',
           \ 'Campbell_DarkRed' : '#c50f1f',
           \ 'Campbell_DarkMagenta' : '#881798',
           \ 'Campbell_DarkYellow' : '#c19c00',
           \ 'Campbell_DarkWhite' : '#cccccc',
           \ 'Campbell_BrightBlack' : '#767676',
           \ 'Campbell_BrightBlue' : '#3b78ff',
           \ 'Campbell_BrightGreen' : '#16c60c',
           \ 'Campbell_BrightCyan' : '#61d6d6',
           \ 'Campbell_BrightRed' : '#e74856',
           \ 'Campbell_BrightMagenta' : '#b4009e',
           \ 'Campbell_BrightYellow' : '#f9f1a5',
           \ 'Campbell_BrightWhite' : '#f2f2f2',
           \ }, 'keep')

let &cpoptions = s:orig_cpo
unlet s:orig_cpo

highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "_gui"
