" <Enter>/<NR>鍵盤
syntax match	vimNotation	"\(\\\|<lt>\)\=<\(\center\)>"		contains=vimBracket
syntax match	vimNotation	"\(\\\|<lt>\)\=<\(\cnr\)>"		contains=vimBracket

" :autocmdコマンドで第二引数にグループ名を指定すると
" 後続するイベント種別がハイライトされないのを修正
"    TODO: 「[My]Vimrc」というグループ名以外でもvimVarの装飾が効くようにする
"syntax match	vimAutoCmdGroup	contained "\w\+" contains=ALLBUT,vimAutoEvent skipwhite nextgroup=vimAutoEventList
syntax match	vimAutoCmdGroup	contained
			\ "\c\(My\)\=Vimrc" skipwhite
			\ nextgroup=vimAutoEventList
syntax cluster	vimAutoCmdGroup	remove=vimAutoEvent
syntax keyword	vimAutoCmd
			\ au[tocmd] do[autocmd] doautoa[ll]
			\ skipwhite nextgroup=vimAutoCmdGroup,vimAutoEventList
highlight link vimAutoCmdGroup	vimVar

" 構文強調定義において続く行頭に逆斜線を置いて改行を無効にしているのを正しく強調
"   FROM: https://mevius.5ch.net/test/read.cgi/unix/1526552297/643
syntax region	vimSynKeyRegion	contained keepend	matchgroup=vimGroupName
			\ start="\h\w*" skip="\\\\\|\\|" matchgroup=vimSep end="|\|\n\%(^\s*\\\)\@!"
			\ contains=@vimSynKeyGroup
syntax region	vimSynMatchRegion	contained keepend	matchgroup=vimGroupName
			\ start="\h\w*" matchgroup=vimSep end="|\|\n\%(^\s*\\\)\@!"
			\ contains=@vimSynMtchGroup
syntax region	vimSynRegion	contained keepend	matchgroup=vimGroupName
			\ start="\h\w*" skip="\\\\\|\\|" end="|\|\n\%(^\s*\\\)\@!"
			\ contains=@vimSynRegGroup
syntax region	vimClusterName	contained
			\ keepend matchgroup=vimGroupName
			\ start="\h\w*" skip="\\\\\|\\|" matchgroup=vimSep end="|\|\n\%(^\s*\\\)\@!"
			\ contains=vimGroupAdd,vimGroupRem,vimSynContains,vimSynError

" コメント内部の引用符を着色しない
"   "a" ←こういうの
highlight link vimCommentString	Comment
