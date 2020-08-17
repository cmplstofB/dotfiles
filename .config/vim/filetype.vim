" XKB config file
autocmd BufNewFile,BufRead */{etc,share}/X11/xkb/*/*
			\ setfiletype xkb
" X resource file
autocmd BufNewFile,BufRead *.xresources\=
			\ setlocal filetype=xdefaults

" Minecraft
autocmd BufNewFile,BufRead */src/main/resources/mcmod.info
			\ setlocal filetype=json

" FVWM
autocmd BufNewFile,BufRead /usr/share/fvwm/{Config,Fvwm}*
			\ setlocal filetype=fvwm
autocmd BufNewFile,BufRead */fvwm/*.fpl
			\ setlocal filetype=perl

" Dircolors
autocmd BufNewFile,BufRead {$XDG_CONFIG_HOME,~/.config}/dircolors
			\ setlocal filetype=dircolors

" Geany
" 色設定
autocmd BufNewFile,BufRead */geany/colorschemes/*.conf
			\ setlocal filetype=dosini

" Python file
autocmd BufNewFile,BufRead *.{python,py3}
			\ setfiletype python

" SKK IME dictionaly
autocmd BufNewFile,BufRead SKK-\=JISYO\c*
			\ setfiletype skkdic

" PulseAudio daemon configuration file
"   https://cgit.freedesktop.org/pulseaudio/pulseaudio/tree/man/pulse-daemon.conf.5.xml.in
autocmd BufNewFile,BufRead */{etc,.config}/pulse/daemon.conf{,.d/*.conf}
			\ setlocal filetype=paconf

" ble.sh
autocmd BufNewFile,BufRead bleshrc,blerc
			\ setlocal filetype=blesh
autocmd BufNewFile,BufRead */ble.\\\{,1\}sh/*.sh
			\ setlocal filetype=blesh
"autocmd BufNewFile,BufRead */akinomyoga/*/memo* setlocal filetype=akinomyoga-memo

"  locale definition file
autocmd BufNewFile,BufRead i18n_ctype
			\ setfiletype fdcc

" FontConfig
autocmd BufNewFile,BufRead {$XDG_CONFIG_HOME,~/.config}/fontconfig/fonts.conf
			\ setfiletype xml

" TeXLua
autocmd BufNewFile,BufRead *.tlu setfiletype lua
" TeX defined file (package, font, babel)
autocmd BufNewFile,BufRead *.def,*.dfu,*.fd,*.bdf,*.ldf,*.cfg,*/tex/*tex*.src
			\ if getline(1) =~ '^\(%\|\\Provides\).*' |
			\ 	setlocal filetype=tex |
			\ endif
" TeX INI file
autocmd BufNewFile,BufRead *.ini
			\ if getline(1) =~ '^%.*' |
			\ 	setlocal filetype=tex |
			\ else |
			\ 	setlocal filetype=dosini |
			\ endif
" MetaPost file
autocmd BufNewFile,BufRead *.mpx setfiletype mp

" Tab separated value
"autocmd BufNewFile,BufRead *.tsv setfiletype tsv

" POSIX NLS .msg file
autocmd BufNewFile,BufRead *.msg setfiletype msg

" Vim help file
"   NOTE:ちょっと強力すぎるかも
autocmd BufNewFile,BufRead pack/*/doc/*.{txt,??x} setfiletype help

" LeXML file
"autocmd BufNewFile,BufRead *.lexml setfiletype lexml
autocmd BufNewFile,BufRead *.lexml
			\ setlocal filetype=lexml

" XLIFF
autocmd BufNewFile,BufRead *.{xlf,xliff}
			\ setlocal filetype=xliff

" X BitMap
autocmd BufNewFile,BufRead *.xbm
			\ setfiletype c

" DocBook
autocmd BufNewFile,BufRead *.dbk
			\ let b:docbk_type = "xml" |
			\ setlocal filetype=docbk

" MoinWiki
autocmd BufNewFile,BufRead *.moin
			\ setlocal filetype=moin

" BibLaTeX Localization File
autocmd BufNewFile,BufRead *.lbx
			\ if getline(1) =~ '^\\ProvidesFile' |
			\ 	let b:tex_stylish= 1 |
			\ 	setfiletype tex |
			\ endif

" RDF file
autocmd BufNewFile,BufRead *.rdf
			\ if getline(1) =~ '<?xml' |
			\ 	setfiletype xml |
			\ endif
" (E)BNF
"autocmd BufNewFile,BufRead *.bnf,*.ebnf setfiletype bnf
" XMP
autocmd BufNewFile,BufRead *.xmp setfiletype xml
"" RDF 1.1 Turtle
autocmd BufNewFile,BufRead *.ttl
			\ if search("^\s*@prefix") != 0 |
			\ 	setlocal filetype=txt |
			\ else |
			\ 	setlocal filetype=teraterm |
			\ endif

autocmd BufRead,BufNewFile *.pkg
	\ if getline(1) =~ '<?php' |
	\ 	setfiletype php |
	\ elseif getline(1) =~ "^#!\s*/bin/sh" |
	\ 	setfiletype sh |
	\ else |
	\ 	setfiletype virata |
	\ endif
