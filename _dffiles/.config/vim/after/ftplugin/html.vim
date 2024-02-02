" ほんとうはs:...にしたいがfoldexpr=s:...()で指定できなくなるのでg:...にしている。
let g:HTMLFoldTags = #{
\   details: '<summary>\([^<]\+\)</summary>',
\   script: '',
\   table: '<caption>\([^<]\+\)</caption>',
\ }

function! g:HTMLFoldTags.getFold()
	let line = getline(v:lnum)
	let tags = copy(self)->filter({ _, v -> type(v) != v:t_func })->keys()->join('\|')

	" TODO: 複数行にわたる開始要素に対応する
	if line =~# '^<\%(' .. tags .. '\)[^>]*>'
		return 'a1'
	endif

	if line =~# '</\%(' .. tags .. '\)>$'
		return 's1'
	endif

	return '='
endfunction

function! g:HTMLFoldTags.getFoldText()
	let line = getline(v:foldstart)

	for [t, l] in copy(self)
	          \ ->filter({ _, v ->
	          \           type(v) != v:t_func && !empty(v)
	          \ })
	          \ ->items()
		if line =~# '^<' .. t .. '[^>]*>'
			return foldtext()->substitute('\([^:]\+:\s*\).*', '\1','') ..
			     \ '<' .. t .. '>: ' ..
			     \ line->substitute('.*' .. l .. '.*', '\1', '')
		endif
	endfor

	return foldtext()
endfunction

if has('folding')
	setlocal foldmethod=expr
	setlocal foldexpr=g:HTMLFoldTags.getFold()
	setlocal foldtext=g:HTMLFoldTags.getFoldText()
endif
