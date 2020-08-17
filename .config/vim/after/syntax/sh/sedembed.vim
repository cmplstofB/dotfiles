"if exists("b:current_syntax")
"	unlet b:current_syntax
"endif
"syntax include @shSedScript syntax/sed.vim
"syntax region shSedScriptEmbedded
"			\ matchgroup=shSedCommand
"			\ start="\<sed\s\+'"ms=e-1 skip="\\'" end="'"me=s-1
"			\ contains=@shSedScript
"syntax cluster shCommandSubList add=shSedScriptEmbedded
"highlight link shSedCommand Statement

" ---
" <https://stackoverflow.com/a/53066372/8336727>

" syn clear kshStatement
" syn clear bashStatement
" 
" if exists("b:current_syntax")
" 	let s:save_syntax = b:current_syntax
" 	unlet b:current_syntax
" endif
" syn include @shSedScript syntax/sed.vim
" if exists("b:save_syntax")
" 	let b:current_syntax = s:save_syntax
" 	unlet s:save_syntax
" endif
" 
" syntax match shSedLineContinuation
" 			\ "\\\s*$"
" 			\ contained skipempty nextgroup=shSedExpression
" syntax match shSedExpression
" 			\ "\%(^\|\_s\+\)-\a*e\a*\_s\+"
" 			\ contained nextgroup=shSedScriptCode
" "syntax region shSedScriptCode
" "			\ matchgroup=shSedCommand
" "			\ start="[=\\]\@<!'" skip="\\'" end="'"
" "			\ contains=@shSedScript contained
" "			\ skipwhite skipempty
" "			\ nextgroup=shSedLineContinuation,shSedExpression
" "syntax region shSedScriptCode
" "			\ matchgroup=shSedCommand
" "			\ start="[=\\]\@<!'" skip="\\'" end="'"
" "			\ contains=@shSedScript contained
" "			\ skipwhite skipempty
" "			\ nextgroup=shSedLineContinuation,shSedExpression
" syntax region shSedScriptCode
" 			\ matchgroup=shSedCommand
" 			\ start="[=\\]\@<!'" skip="\\'" end="'"
" 			\ contains=@shSedScript contained
" 			\ skipwhite skipempty
" 			\ nextgroup=shSedLineContinuation,shSedExpression
" syntax region shSedScriptEmbedded
" 			\ matchgroup=shSedCommand
" 			\ start="\<sed\>" skip="\\$" end="[=\\]\@<!'"me=e-1
" 			\ contains=@shIdList,@shExprList2 nextgroup=shSedScriptCode
" syntax cluster shCommandSubList add=shSedScriptEmbedded
" 
" highlight default link shSedCommand Statement
" highlight default link shSedExpression shSetOption
