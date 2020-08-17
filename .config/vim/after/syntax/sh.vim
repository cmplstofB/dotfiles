syntax match shPrintfFormatEscape
			\ "[^\\]\\[abfnrtv]"
			\ contained
"syntax match shPrintfFormatConvSpec
syntax cluster shPrintfFormatList
			\ contains=shPrintfFormatEscape

syntax region shPrintfOperandCode
			\ matchgroup=shPrintfCommand
			\ start="[=\\]\@<!" skip="\\'" end="'"
			\ contains=@shPrintfFormatList contained
syntax region shPrintfOperand
			\ matchgroup=shPrintfCommand
			\ start="\<printf\>" skip="\\$" end="[=\\]\@<!'"me=e-1
			\ contains=@shIdList,@shExprList2
			\ nextgroup=shPrintfOperandCode
syntax cluster shCommandSubList add=shPrintfOperand
highlight default link shPrintfCommand Statement
highlight default link shPrintfFormatEscape SpecialChar
