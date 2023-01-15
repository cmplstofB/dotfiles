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

set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif

set t_Co=256
" 合法ファイル名かつ何とも被らない
let g:colors_name = "_"

highlight Comment          term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=NONE

highlight Identifier       term=bold,italic  cterm=bold,italic  ctermfg=Magenta  ctermbg=NONE

highlight Constant         term=NONE         cterm=NONE         ctermfg=Yellow   ctermbg=NONE

highlight Statement        term=bold         cterm=bold         ctermfg=Green    ctermbg=NONE

highlight PreProc          term=NONE         cterm=NONE         ctermfg=DarkGreen ctermbg=NONE

highlight Type             term=bold         cterm=bold         ctermfg=Yellow   ctermbg=NONE

highlight Special          term=NONE         cterm=NONE         ctermfg=Magenta  ctermbg=NONE

highlight Underlined       term=underline    cterm=underline    ctermfg=NONE     ctermbg=NONE

highlight _Bold            term=bold         cterm=bold         ctermfg=NONE     ctermbg=NONE
highlight _Itaric          term=italic       cterm=italic       ctermfg=NONE     ctermbg=NONE

" 通常
highlight Normal           term=NONE         cterm=NONE         ctermfg=LightGray ctermbg=NONE
"highlight Normal           gui=NONE          guifg=Campbell_DarkWhite       guibg=Campbell_DarkBlack
highlight Cursor           term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight CursorIM         term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight CursorColumn     term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkGray
highlight CursorLine       term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkGray
" 選択
highlight Visual           term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=NONE
highlight VisualNOS        term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=NONE
" 特殊
"highlight link Conceal Normal
highlight Conceal          term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight ColorColumn      term=NONE         cterm=NONE         ctermfg=DarkGray ctermbg=NONE
highlight EndOfBuffer      term=NONE         cterm=NONE         ctermfg=DarkGrey ctermbg=NONE
highlight VertSplit        term=NONE         cterm=NONE         ctermfg=DarkGrey ctermbg=NONE
highlight FoldColumn       term=NONE         cterm=NONE         ctermfg=DarkGrey ctermbg=NONE
highlight LineNr           term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=NONE
highlight CursorLineNr     term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=DarkGrey
highlight NonText          term=NONE         cterm=NONE         ctermfg=DarkGrey ctermbg=NONE
highlight SpecialKey       term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=NONE
highlight Folded           term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkGray
highlight SignColumn       term=NONE         cterm=NONE         ctermfg=Yellow   ctermbg=NONE
highlight IncSearch        term=reverse      cterm=reverse      ctermfg=NONE     ctermbg=Yellow
"highlight MatchParen       term=reverse      cterm=reverse      ctermfg=NONE     ctermbg=Yellow
highlight MatchParen       term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight Search           term=reverse,bold cterm=reverse,bold ctermfg=Yellow   ctermbg=DarkGray
" 通知
highlight ErrorMsg         term=reverse      cterm=reverse      ctermfg=Red      ctermbg=NONE
highlight WarningMsg       term=reverse      cterm=reverse      ctermfg=Red      ctermbg=NONE
highlight ModeMsg          term=bold         cterm=bold         ctermfg=NONE     ctermbg=NONE
highlight MoreMsg          term=bold         cterm=bold         ctermfg=NONE     ctermbg=NONE
highlight Question         term=bold         cterm=bold         ctermfg=NONE     ctermbg=NONE
highlight Title            term=bold         cterm=bold         ctermfg=NONE     ctermbg=NONE
highlight StatusLine       term=reverse,bold cterm=reverse,bold ctermfg=Gray     ctermbg=Black
highlight StatusLineNC     term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=Black
highlight TabLine          term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=Black
highlight TabLineFill      term=NONE         cterm=NONE         ctermfg=Black    ctermbg=Black
highlight TabLineSel       term=reverse,bold cterm=reverse,bold ctermfg=Gray     ctermbg=Black
" 補完
highlight Directory        term=bold         cterm=bold         ctermfg=Blue     ctermbg=NONE
highlight WildMenu         term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=White
highlight Pmenu            term=NONE         cterm=NONE         ctermfg=Black    ctermbg=Gray
highlight PmenuSel         term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=White
highlight PmenuSbar        term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight PmenuThumb       term=reverse      cterm=reverse      ctermfg=Gray     ctermbg=NONE
highlight QuickFixLine     term=bold         cterm=bold         ctermfg=NONE     ctermbg=NONE
" 差異
highlight DiffAdd          term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkGreen
highlight DiffDelete       term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkRed
highlight DiffChange       term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkYellow
highlight DiffText         term=bold         cterm=bold         ctermfg=NONE     ctermbg=NONE
" 綴
highlight SpellBad         term=NONE         cterm=underline    ctermfg=NONE     ctermbg=NONE
highlight SpellCap         term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight SpellLocal       term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight SpellRare        term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE

" ファイルマネージャ
highlight netrwBak         term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=NONE
highlight netrwCompress    term=bold         cterm=bold         ctermfg=Red      ctermbg=NONE
highlight netrwData        term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight netrwHdr         term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight netrwLib         term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight netrwMakefile    term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight netrwObj         term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight netrwTags        term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight netrwTilde       term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=NONE
highlight netrwTmp         term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=NONE
highlight netrwExe         term=bold         cterm=bold         ctermfg=Green    ctermbg=NONE
highlight netrwTreeBar     term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=NONE
highlight netrwClassify    term=bold         cterm=bold         ctermfg=Gray     ctermbg=NONE

" 内部端末
highlight Terminal         term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight StatusLineTerm   term=reverse,bold cterm=reverse,bold ctermfg=Gray     ctermbg=Black
highlight StatusLineTermNC term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=Black

" 譜類末端
"highlight link EndOfBuffer Ignore

let &cpoptions = s:orig_cpo
unlet s:orig_cpo
