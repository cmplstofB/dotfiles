" less(1)っぽく
nnoremap <buffer> <silent> j <C-e>
nnoremap <buffer> <silent> k <C-y>
nnoremap <buffer> <silent> q :<C-u>helpclose<NL>
"   <silent>を外すと何故か動作しなくなる……。理由不明。
" カーソル非表示
"   反映されないし，wincmdが効かなくなる
"let &t_ve = '"' . &t_vi . '"'

setlocal nolist
" 手引き画面は必ず最上段に最大幅で表示
wincmd K
