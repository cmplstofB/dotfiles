"for s:pathdir in
"	\ getenv('PATH')
"	\ ->split(':')
"	\ ->filter({_, v ->
"	           \ isdirectory(v)})
"	for s:binfile in
"		\ readdirex(s:pathdir,
"		           \ {e ->
"		           \   e.type == 'file' &&
"		           \   e.perm =~ '..x..x..x'},
"		           \ #{sort: 'none'})
"		echo s:pathdir .. '/' .. s:binfile.name
"	endfor
"endfor
