let s:orig_cpo = &cpoptions
setlocal cpoptions&vim

set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif

let s:CB_Black       = '#0c0c0c'
  let s:CB_bgNONE    = s:CB_Black
let s:CB_DarkBlue    = '#0037da'
let s:CB_DarkGreen   = '#13a10e'
let s:CB_DarkCyan    = '#3a96dd'
let s:CB_DarkRed     = '#c50f1f'
let s:CB_DarkMagenta = '#881798'
let s:CB_DarkYellow  = '#c19c00'
let s:CB_Gray        = '#cccccc'
let s:CB_DarkGray    = '#767676'
let s:CB_Blue        = '#3b78ff'
let s:CB_Green       = '#16c60c'
let s:CB_Cyan        = '#61d6d6'
let s:CB_Red         = '#e74856'
let s:CB_Magenta     = '#b4009e'
let s:CB_Yellow      = '#f9f1a5'
let s:CB_White       = '#f2f2f2'
  let s:CB_fgNONE    = s:CB_White



set t_Co=256
" 合法ファイル名かつ何とも被らない
let g:colors_name = "_"

"highlight Comment          term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=NONE
exe 'hi! Comment' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                  \ ' ctermfg=Gray'     . ' ctermbg=NONE' .
                  \ ' guifg='.s:CB_Gray . ' guibg=NONE'

"highlight Identifier       term=bold,italic  cterm=bold,italic  ctermfg=Magenta  ctermbg=NONE
exe 'hi! Identifier' . ' term=bold,italic' . ' cterm=bold,italic' . ' gui=bold,italic' .
                     \ ' ctermfg=Magenta'     . ' ctermbg=NONE' .
                     \ ' guifg='.s:CB_Magenta . ' guibg='.s:CB_Black

"highlight Constant         term=NONE         cterm=NONE         ctermfg=Yellow   ctermbg=NONE
exe 'hi! Constant' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                   \ ' ctermfg=Yellow'     . ' ctermbg=NONE' .
                   \ ' guifg='.s:CB_Yellow . ' guibg='.s:CB_Black

"highlight Statement        term=bold         cterm=bold         ctermfg=Green    ctermbg=NONE
exe 'hi! Statement' . ' term=bold' . ' cterm=bold' . ' gui=bold' .
                    \ ' ctermfg=Green'     . ' ctermbg=NONE' .
                    \ ' guifg='.s:CB_Green . ' guibg='.s:CB_Black

"highlight PreProc          term=NONE         cterm=NONE         ctermfg=DarkGreen ctermbg=NONE
exe 'hi! PreProc' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                  \ ' ctermfg=DarkGreen'     . ' ctermbg=NONE' .
                  \ ' guifg='.s:CB_DarkGreen . ' guibg='.s:CB_Black

"highlight Type             term=bold         cterm=bold         ctermfg=Yellow   ctermbg=NONE
exe 'hi! Type' . ' term=bold' . ' cterm=bold' . ' gui=bold' .
               \ ' ctermfg=Yellow'     . ' ctermbg=NONE' .
               \ ' guifg='.s:CB_Yellow . ' guibg='.s:CB_Black

"highlight Special          term=NONE         cterm=NONE         ctermfg=Magenta  ctermbg=NONE
exe 'hi! Special' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                  \ ' ctermfg=Magenta'     . ' ctermbg=NONE' .
                  \ ' guifg='.s:CB_Magenta . ' guibg='.s:CB_Black

" highlight Underlined       term=underline    cterm=underline    ctermfg=NONE     ctermbg=NONE
exe 'hi! Underlined' . ' term=underline' . ' cterm=underline' . ' gui=underline' .
                     \ ' ctermfg=NONE'      . ' ctermbg=NONE' .
                     \ ' guifg='.s:CB_White . ' guibg='.s:CB_Black

highlight _Bold            term=bold         cterm=bold         ctermfg=NONE     ctermbg=NONE
highlight _Itaric          term=italic       cterm=italic       ctermfg=NONE     ctermbg=NONE

" 通常
"highlight Normal           term=NONE         cterm=NONE         ctermfg=LightGray ctermbg=NONE
"                         \ gui=NONE          guifg=Campbell_DarkWhite       guibg=Campbell_DarkBlack
exe 'hi! Normal' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                 \ ' ctermfg=LightGray' . ' ctermbg=NONE' .
                 \ ' guifg='.s:CB_White . ' guibg='.s:CB_Black
highlight Cursor           term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight CursorIM         term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
" highlight CursorColumn     term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkGray
exe 'hi! CursorColumn' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                       \ ' ctermfg=NONE' . ' ctermbg=DarkGray' .
                       \ ' guifg=NONE'   . ' guibg='.s:CB_DarkGray
" highlight CursorLine       term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkGray
exe 'hi! CursorLine' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                     \ ' ctermfg=NONE' . ' ctermbg=DarkGray' .
                     \ ' guifg=NONE'   . ' guibg='.s:CB_DarkGray
" 選択
highlight Visual           term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=NONE
highlight VisualNOS        term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=NONE
" 特殊
" highlight Conceal          term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight! link Conceal Normal
highlight ColorColumn      term=NONE         cterm=NONE         ctermfg=DarkGray ctermbg=NONE
highlight EndOfBuffer      term=NONE         cterm=NONE         ctermfg=DarkGrey ctermbg=NONE
highlight VertSplit        term=NONE         cterm=NONE         ctermfg=DarkGrey ctermbg=NONE
highlight FoldColumn       term=NONE         cterm=NONE         ctermfg=DarkGrey ctermbg=NONE
"highlight LineNr           term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=NONE
exe 'hi! LineNr' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                 \ ' ctermfg=Gray'     . ' ctermbg=NONE' .
                 \ ' guifg='.s:CB_Gray . ' guibg='.s:CB_Black
"highlight CursorLineNr     term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=DarkGrey
exe 'hi! CursorLineNr' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                       \ ' ctermfg=Gray'     . ' ctermbg=DarkGrey' .
                       \ ' guifg='.s:CB_Gray . ' guibg='.s:CB_DarkGray
"highlight NonText          term=NONE         cterm=NONE         ctermfg=DarkGrey ctermbg=NONE
exe 'hi! NonText' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                  \ ' ctermfg=DarkGray'     . ' ctermbg=NONE' .
                  \ ' guifg='.s:CB_DarkGray . ' guibg=NONE'
"highlight SpecialKey       term=NONE         cterm=NONE         ctermfg=Gray     ctermbg=NONE
exe 'hi! SpecialKey' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                     \ ' ctermfg=DarkGray'     . ' ctermbg=NONE' .
                     \ ' guifg='.s:CB_DarkGray . ' guibg=NONE'
"highlight Folded           term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkGray
exe 'hi! Folded' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                     \ ' ctermfg=NONE' . ' ctermbg=DarkGray' .
                     \ ' guifg=NONE'   . ' guibg='.s:CB_DarkGray
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
" highlight Title            term=bold         cterm=bold         ctermfg=NONE     ctermbg=NONE
exe 'hi! Title' . ' term=bold' . ' cterm=bold' . ' gui=bold' .
                \ ' ctermfg=NONE' . ' ctermbg=NONE' .
                \ ' guifg='.s:CB_White . ' guibg='.s:CB_Black
" highlight StatusLine       term=reverse,bold cterm=reverse,bold ctermfg=Gray     ctermbg=Black
exe 'hi! StatusLine' . ' term=reverse,bold' . ' cterm=reverse,bold' . ' gui=reverse,bold' .
                     \ ' ctermfg=Gray'     . ' ctermbg=Black' .
                     \ ' guifg='.s:CB_Gray . ' guibg='.s:CB_Black
highlight StatusLineNC     term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=Black
exe 'hi! StatusLineNC' . ' term=reverse' . ' cterm=reverse' . ' gui=reverse' .
                       \ ' ctermfg=DarkGray'     . ' ctermbg=Black' .
                       \ ' guifg='.s:CB_DarkGray . ' guibg='.s:CB_Black
highlight TabLine          term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=Black
highlight TabLineFill      term=NONE         cterm=NONE         ctermfg=Black    ctermbg=Black
highlight TabLineSel       term=reverse,bold cterm=reverse,bold ctermfg=Gray     ctermbg=Black
" 補完
" highlight Directory        term=bold         cterm=bold         ctermfg=Blue     ctermbg=NONE
exe 'hi! Directory' . ' term=bold' . ' cterm=bold' . ' gui=NONE' .
                    \ ' ctermfg=Blue'     . ' ctermbg=NONE' .
                    \ ' guifg='.s:CB_Blue . ' guibg='.s:CB_Black
" highlight WildMenu         term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=Black
exe 'hi! WildMenu' . ' term=reverse' . ' cterm=reverse' . ' gui=NONE' .
                   \ ' ctermfg=Black'     . ' ctermbg=NONE' .
                   \ ' guifg='.s:CB_Black . ' guibg='.s:CB_DarkGray
" highlight Pmenu            term=NONE         cterm=NONE         ctermfg=DarkGray ctermbg=Black
exe 'hi! Pmenu' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE' .
                 \ ' ctermfg=LightGray' . ' ctermbg=NONE' .
                 \ ' guifg='.s:CB_Gray . ' guibg='.s:CB_Black
highlight PmenuSel         term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=Black
highlight PmenuSbar        term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight PmenuThumb       term=reverse      cterm=reverse      ctermfg=DarkGray ctermbg=NONE
highlight QuickFixLine     term=bold         cterm=bold         ctermfg=NONE     ctermbg=NONE
" 差異
highlight DiffAdd          term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkGreen
highlight DiffDelete       term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkRed
highlight DiffChange       term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=DarkYellow
highlight DiffText         term=bold         cterm=bold         ctermfg=NONE     ctermbg=NONE
" 綴
"highlight SpellBad         term=NONE         cterm=undercurl    ctermfg=NONE     ctermbg=NONE
exe 'hi! SpellBad' . ' term=undercurl' . ' cterm=undercurl' . ' gui=undercurl'
                  \. ' ctermfg=NONE' . ' ctermbg=NONE' . (!has('nvim') ? ' ctermul=Red' : '')
                  \. ' guifg=NONE'   . ' guibg=NONE'   . ' guisp='.s:CB_Red
"highlight SpellCap         term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
exe 'hi! SpellCap' . ' term=NONE' . ' cterm=NONE' . ' gui=NONE'
                  \. ' ctermfg=NONE' . ' ctermbg=NONE' . (!has('nvim') ? ' ctermul=Blue' : '')
                  \. ' guifg=NONE'   . ' guibg=NONE'   . ' guisp='.s:CB_Blue
highlight SpellLocal       term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE
highlight SpellRare        term=NONE         cterm=NONE         ctermfg=NONE     ctermbg=NONE

" 台類・譜類自体の閲覧 (Netrw)
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
" spppell 

" 輪結
exe 'hi! htmlLink' . ' term=underline' . ' cterm=underline' . ' gui=underline' .
                   \ ' ctermfg=Blue' . ' ctermbg=NONE' .
                   \ ' guifg='.s:CB_Blue . ' guibg='.s:CB_Black

let &cpoptions = s:orig_cpo
unlet s:orig_cpo
