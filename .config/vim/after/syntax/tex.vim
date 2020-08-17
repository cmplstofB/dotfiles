"  梱譜・級譜用命令
syntax match	texDocType
			\ /\\RequirePackage\>\|\\LoadClass\|\\LoadClassWithOptions\>/
			\ nextgroup=texBeginEndName,texDocTypeArgs
syntax match  texNewCmd
			\ /\\\a*Declare\a*Command\>/
			\ nextgroup=texCmdName
			\ skipwhite skipnl

"  日本語
if b:tex_stylish
	syntax match	texDefName contained
				\ /\\[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FEFa-zA-Z@]\+/
				\ nextgroup=texDefParms,texCmdBody
				\ skipwhite skipnl
else
	syntax match	texDefName contained
				\ /\\[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FEFa-zA-Z]\+/
				\ nextgroup=texDefParms,texCmdBody
				\ skipwhite skipnl
endif
syntax match	texLength
			\ /\<\d\+\([.,]\d\+\)\=\s*\(true\)\=\s*\(H\|Q\|z[wh]\)\>/

" 数学フォント
syntax match	texTypeStyle /\\mathscr\>/
syntax match	texTypeStyle /\\mathsfit\>/
syntax match	texTypeStyle /\\mathbf\(it\|sf\|sfit\|scr\|frac\|bffrac\)\>/

" pLaTeX系列
syntax match	texTypeStyle /\\\%(mc\|gt\)family\>/
syntax match	texTypeStyle /\\\%(text\|math\)\%(mc\|gt\)\>/

" Unicode数学記号（自作・STIX2パッケージ）
let s:texMathSymbols = {
			\           'cdotp':	'·', 'cdot':	'⋅',
			\           'ldotp':	'.',
			\           'fracslash':	'⁄',
			\           'nequiv':	'≢',
			\           'Eulerconst':	'ℇ',
			\           'perp':	'⟂',
			\           'backsim':	'∽',
			\           'll':	'≪', 'gg':	'≫',
			\           'leqslant':	'⩽', 'geqslant':	'⩾',
			\           'lparen':	'(', 'rparen':	')',
			\           'lbrak':	'[', 'rbrak':	']',
			\           'lbrace':	'{', 'rbrace':	'}',
			\           'coloneq': '≔',
			\           'vert': '|',
			\           'Lsh':	'↰',
			\           'Rsh':	'↱',
			\           'Ldsh':	'↲',
			\           'Rdsh':	'↳',
			\           'twoheadleftarrow':	'↞',
			\           'twoheaduparrow':	'↟',
			\           'twoheadrightarrow':	'↠',
			\           'twoheaddownarrow':	'↡',
			\           'leftarrowtail':	'↢',
			\           'rightarrowtail':	'↣',
			\           'twoheadrightarrowtail':	'⤖',
			\           'Cnp':	'e',
			\           'Cpi':	'π',
			\           'Ui':	'i',
			\           'Uj':	'j',
			\           'qdlen':	'L',
			\           'qdmass':	'M',
			\           'qdtime':	'T',
			\           'qdcur':	'I',
			\           'qdtemp':	'Θ',
			\           'qdsubst':	'N',
			\           'qdlumn':	'J',
			\           'varapprox':	'≒',
			\           'naturals':	'ℕ',
			\           'integers':	'ℤ',
			\           'rationals':	'ℚ',
			\           'reals':	'ℝ',
			\           'complexes':	'ℂ',
			\           'primes':	'ℙ'}
if has("conceal") && &enc == 'utf-8'
	if g:tex_conceal =~# 'm'
		for s:texMathSymbolCommand in keys(s:texMathSymbols)
			execute 'syntax match texMathSymbol contained '
						\ . '/\\' . s:texMathSymbolCommand . '\>/ '
						\ . 'conceal cchar='
						\ . s:texMathSymbols[s:texMathSymbolCommand]
		endfor
	endif
endif

" AMS-math数式環境
call TexNewMathZone("D", "align", 1)
call TexNewMathZone("D", "gather", 1)
call TexNewMathZone("D", "split", 0)
call TexNewMathZone("D", "multline", 1)

" Unicode文字
let s:texSpecialChars = {
			\            'textleftparen':	'(',
			\            'textrightparen':	')',
			\            'AE':	'Æ', 'ae':	'æ',
			\            'DH':	'Ð', 'dh':	'ð',
			\            'DJ':	'Đ', 'dj':	'đ',
			\            'NG':	'Ŋ', 'ng':	'ŋ',
			\            'OE':	'Œ', 'oe':	'œ',
			\            'TH':	'Þ', 'th':	'þ',
			\            'L':	'Ł', 'l':	'ł',
			\            'O':	'Ø', 'o':	'ø',
			\            'IJ':	'Ĳ', 'ij':	'ĳ',
			\            'SS':	'ẞ', 'ss':	'ß',
			\            'guilsinglleft':	'‹', 'guilsinglright':	'›',
			\            'guillemetleft':	'«', 'guillemetright':	'»',
			\            'guillemotleft':	'«', 'guillemotright':	'»',
			\            'i':	'ı', 'j':	'ȷ',
			\            'quotedblbase':	'„',
			\            'quotesinglbase':	'‚',
			\            'textasciicircum':	'^',
			\            'textasciitilde':	'~',
			\            'textbackslash':	'\',
			\            'textbar':	'|',
			\            'textbraceleft':	'{', 'textbraceright':	'}',
			\            'textdollar':	'$',
			\            'textemdash':	'—', 'textendash':	'–',
			\            'textexclamdown':	'¡', 'textquestiondown':	'¿',
			\            'textgreater':	'<', 'textless':	'<',
			\            'textquotedbl':	'"',
			\            'textquotedblleft':	'“', 'textquotedblright':	'”',
			\            'textquoteleft':	'‘', 'textquoteright':	'’',
			\            'textregistered':	'®',
			\            'textsection':	'§',
			\            'textsterling':	'£',
			\            'texttrademark':	'™',
			\            'textunderscore':	'_',
			\            'textvisiblespace':	'␣'}
if has("conceal") && &enc == 'utf-8'
	if g:tex_conceal =~# 's'
		for s:texSpecialCharCommand in keys(s:texSpecialChars)
			execute 'syntax match texSpecialChar contained '
						\ . '/\\' . s:texSpecialCharCommand . '\>/ '
						\ . 'conceal cchar='
						\ . s:texSpecialChars[s:texSpecialCharCommand]
		endfor
	endif
endif

