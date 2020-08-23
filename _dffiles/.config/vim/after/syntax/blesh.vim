let b:is_bash = 1
runtime syntax/sh.vim
syntax region bleshOption matchgroup=shStatement
			\ start="\<bleopt\>" skip="\\$"
			\ matchgroup=shEchoDelim end="$"
			\ matchgroup=NONE end="[<>;&|()`]"me=e-1 end="\d[<>]"me=e-2 end="\s#"me=e-2
			\ contains=@shEchoList skipwhite nextgroup=shQuickComment
