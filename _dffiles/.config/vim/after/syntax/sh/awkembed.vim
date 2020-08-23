if exists("b:current_syntax")
	let s:save_syntax = b:current_syntax
	unlet b:current_syntax
endif
syntax include @shAWKScript syntax/awk.vim
if exists("b:save_syntax")
	let b:current_syntax = s:save_syntax
	unlet s:save_syntax
endif

syntax region shAWKScriptCode1
			\ matchgroup=shAWKCommand
			\ start="[=\\]\@<!'" skip="\\'" end="'"
			\ contains=@shAWKScript contained
syntax region shAWKScriptEmbedded
			\ matchgroup=shAWKCommand
			\ start="\<awk\>" skip="\\$" end="[=\\]\@<!'"me=e-1
			\ contains=@shIdList,@shExprList2
			\ nextgroup=shAWKScriptCode1
syntax cluster shCommandSubList add=shAWKScriptEmbedded
highlight link shAWKCommand Statement
