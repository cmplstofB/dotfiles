syntax match initexDimensionJPN display contains=@NoSpell
			\ '[+-]\=\s*\%(\d\+\%([.,]\d*\)\=\|[.,]\d\+\)\s*\%(z[wh]\)\>'
syntax match initexETEXExpr display contains=@NoSpell
      \ '\\\%(num\|dim\|glue\|skip\)expr\>'

syntax cluster initexRegisters add=initexETEXExpr
syntax cluster initexCommand add=initexETEXExpr

highlight default link initexDimensionJPN initexNumber
highlight default link initexETEXExpr initexCommand
