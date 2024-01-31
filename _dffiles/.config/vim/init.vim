set encoding=UTF-8
scriptencoding UTF-8
" もしも機構がcompatibleを設定していたらnocompatibleに。
if &compatible
	set nocompatible
endif
if !has('nvim')
	unlet! skip_defaults_vim
	source $VIMRUNTIME/defaults.vim
endif
" 一連の設定
augroup MyVimrc
	autocmd!
augroup END



let s:myvimdir = expand($XDG_CONFIG_HOME) . "/vim"
execute "set runtimepath^=" . s:myvimdir
execute "set runtimepath+=" . s:myvimdir . "/after"
execute "set packpath^=" . expand($XDG_DATA_HOME) . "/vim"
let $MYGVIMRC = s:myvimdir . "/ginit.vim"



" 文字符号処理
"   これ順番を気を付けないと駄目だと思う
"   （恐らく立ってるバイトの範囲で符号化形式の種別を判定してる筈なので）
"   のだが，精査しきっていない。
"   この状態だと，恐らくcp932とかには一生到達しない……。
set fileencodings=ucs-bom,utf-8,iso-2022-jp,euc-jisx0213,euc-jp,cp20932,sjis,cp932,default,latin1
" 改行形式
set fileformat=unix
" 譜類末尾の改行状態を保存
"   なんで既定で有効じゃないの？
"   これのせいでCorvusSKKの設定譜類を弄ったら壊れちゃったんですけど。
set nofixendofline
" 履歴
"   保存できる履歴の量は10000件が限界のようだ。ほんとうはもう少し多いほうがいいのだが
set history=10000
" 状態の記録
set viminfo='10000,<10000,s10000,h
if !has('nvim')
	execute "set viminfofile=" . expand($XDG_CACHE_HOME) . "/vim/viminfo"
else
	execute "set viminfofile=" . expand($XDG_CACHE_HOME) . "/vim/nviminfo"
endif
" 遣り直し
set undofile
set undolevels=10000
set undodir=$XDG_CACHE_HOME/vim/undo
" 一時保存
set swapfile
set updatetime=1000
set directory=$XDG_CACHE_HOME/vim/swap
" 抜控
set backup
set backupdir=$XDG_CACHE_HOME/vim/bkp
set writebackup
" 緩衝域
set autoread
set hidden
" 接渉
" 終了時自動的に接渉を保存
autocmd MyVimrc VimLeave * execute "mksession! " . expand($XDG_DATA_HOME) . "/vim/session"



" <Esc>押下後の態移行が非常に遅いのを修正
set timeout timeoutlen=500
set ttimeout ttimeoutlen=100



" 仕類
"   GNU Bashに~/.profile譜類を読み込ませる。
if &shell =~ ".*bash.*"
	set shell=bash\ --login
endif



" 択部設定
"   択部派
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent smartindent
" 折り返しは画面境界限界まで
"   というのは日本語を折り返せないせいで汚い見た目になるから。
set nolinebreak
" ↓ASCII可視文字じゃないと駄目
"set breakat+=。，（「(“
set breakat+=\|>])
set breakindent
set showbreak=>
" 文字幅
set ambiwidth=single
set emoji
" Unicode合成文字の限界個数
set maxcombine=6
" 特殊文字を強調表示
set list
set listchars=eol:↲
set listchars+=tab:>─
set listchars+=trail:.
"set listchars+=space:.
set conceallevel=2
" 編集している譜類の台録に自動移動
"   網際上の譜類を閲覧する場合にマズいことが置こるので，一旦取り止め。
"autocmd MyVimrc BufEnter *

"			\ if split(fnamemodify(expand("%"), ":p:h"), "/", 1)[0] !~ "\(file\|https\=\|ftp\):" |
"			\ 	silent! execute "lchdir" fnamemodify(expand("%"), ":p:h") |
"			\ endif
" 表題を設定
set title titlestring=%F\ -\ VIM
" 行番号
set number
" 警告
set noerrorbells
set novisualbell
" 絡引など実行時にカクつくのを防ぐ
"   今どきの端末模倣装置で有効にする必要性があるのかは不明
set lazyredraw
" 折り返し
set textwidth=0
set wrap
" 折り畳み
set foldmethod=marker
" 写譜
let &t_BE = "\<Esc>[?2004h"
let &t_BD = "\<Esc>[?2004l"
" TODO:模鼠による選択時には，autoselectを有効にしたい。
set clipboard-=autoselect
" 終了時に画面を消去しない
if !has('nvim')
	set norestorescreen
endif
" 綴
set spell
set spelllang+=cjk
" TeX
let g:tex_conceal="abdmgs"



" 特殊前置鍵盤に<Space>を割り当て
let mapleader = "\<Space>"
" `C`, `D` に挙動を合わせる
nnoremap Y y$
" 行の移動で視覚的に違和感を感じないように
nnoremap <silent> <expr> 0  &l:wrap ? 'g0' : '0'
nnoremap <silent> <expr> $  &l:wrap ? 'g$' : '$'
nmap gj gj<SID>g
nmap gk gk<SID>g
nnoremap <script> <SID>gj gj<SID>g
nnoremap <script> <SID>gk gk<SID>g
nmap <SID>g <Nop>
" 文字列の置換で視覚的に違和感を感じないように
nnoremap <silent> r gr
nnoremap <silent> R gR
nnoremap <silent> gr r
nnoremap <silent> gR R
" <u>--<U> という対応にする
nnoremap U <C-r>
nnoremap <C-r> U
" 現在日時と時刻を挿入
"   Shift+Function Keyが使えない端末がありそう……。
"   まだ遭遇してないけど。
inoremap <expr> <F5> strftime("%Y-%m-%d", localtime())
inoremap <expr> <S-F5> strftime("%H:%M:%S", localtime())
" 現在絶対台録を挿入
inoremap <expr> <F4> fnamemodify(expand("%"), ":p:h")
" 字下げを調整しても依然選択状態を続ける
vnoremap <Lt> <Lt>gv
vnoremap > >gv
" 選択している状態での検索関連
"vnoremap / "zy/<C-r>z<Enter>
"   <https://vim.fandom.com/wiki/Search_for_visually_selected_text#Advanced>
"vnoremap <expr> * echo
" vnoremap <silent> *
" 			\ :<C-u>
" 			\ let old_reg = getreg('"')<Bar>
" 			\ let old_regtype = getregtype('"')<Enter>
" 			\ gvy/<C-r><C-r>=substitute(escape(@", '/\.*$^~['),
" 			\                           '\_s\+', '\\_s\\+', 'g')<Enter><Enter>
" 			\ gV:call setreg('"', old_reg, old_regtype)<Enter>
" vnoremap <silent> #
" 			\ :<C-u>
" 			\ let old_reg = getreg('"')<Bar>
" 			\ let old_regtype = getregtype('"')<Enter>
" 			\ gvy?<C-r><C-r>=substitute(escape(@", '/\.*$^~['),
" 			\                           '\_s\+', '\\_s\\+', 'g')<Enter><Enter>
" 			\ gV:call setreg('"', old_reg, old_regtype)<Enter>
" 現在位置を強調
nnoremap <C-g> :<C-u>silent<Space>set<Space>cursorline<Space>cursorcolumn<Enter>:<C-u>file<Enter>
autocmd MyVimrc CursorMoved * if &cursorline + &cursorcolumn > 0 | set nocursorline nocursorcolumn | endif
autocmd MyVimrc InsertEnter * if &cursorline + &cursorcolumn > 0 | set nocursorline nocursorcolumn | endif
" 種々の表示を取消
nnoremap <silent> <C-l> :<C-u>nohlsearch<Bar>redraw!<Enter>
" 田符移動
nnoremap <silent> <C-n> gt
nnoremap <silent> <C-p> gT
" 内部端末
nnoremap <F4> :<C-u>silent!<Space>lcd<Space>%:p:h<Bar>terminal<Enter>
if !has('nvim')
	set termwinkey=<C-g>
endif
" Emacs風の手引き入力待機態呼出
nnoremap <C-h> :<C-u>help<Space>
set keywordprg=
" 補完
set wildmenu
set wildmode=longest:full
set wildmode+=list:full
set pumheight=10
" 命令欄の挙動 (Emacsっぽく)
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-h> <BS>
cnoremap <C-d> <Del>
cnoremap <C-x><C-b> <S-Left>
cnoremap <C-x><C-f> <S-Right>
cnoremap <C-x><C-m> <C-a>
cnoremap <C-x>l <C-d>
cnoremap <C-l> <C-f>
cnoremap <Space> <C-]><Space>
"   <C-c>で離脱する際，履歴を残さない
"   FIXME: これは不完全。
"   ‘/’で検索した後<C-c>で離脱すると「histdel(...)」という語句を検索してしまう。
"   やりたいのは‘/’で入力した値を消去すること。
"   こ無ゾ
if 0 " ここから無効
cnoremap <silent> <C-c> <End><C-u>call<Space>{-><Space>if<Space>getcmdtype()==":"<Space><Bar><Space>histdel("cmd", -1)<Space><Bar><Space>endif}<Enter>
cnoremap <C-c> <C-\>eCmdHstDelX(getcmdtype())<Enter>
function! CmdHstDelX(cmdtype)
	if a:cmdtype == ":"
		return histdel("cmd", -1)
	else
		return call getcmdline()
	endif
endfunction
endif " ここまで無効
"   <C-k>で現在位置から行末まで削除
cnoremap <C-k> <C-\>estrpart(getcmdline(), 0, getcmdpos() - 1)<Enter>
" 短縮入力
cabbrev te, tabedit
cabbrev vs, vsplit
cabbrev sp, split
cabbrev /u.s/ /usr/share/
cabbrev /u.s.v/ /usr/share/vim/
cabbrev /u.s.a/ /usr/share/applications/
cabbrev /u.s.tl.d/ /usr/share/texlive/texmf-dist/
" {二重字 K#/2869}
"   数学における山括弧
digraphs m< 10216
digraphs m> 10217
" IM関係
"   平仮名態切り替えと競合するので無効に
nnoremap <C-@> <NOP>
inoremap <C-@> <NOP>
"map <C-Space> <NOP>
"map <Nul> <NOP>
"   挿入態に移行する鍵盤束縛は平仮名態でも入力可能にする
nmap あ a
nmap い i
nmap お o
"   vimgrep
autocmd MyVimrc QuickFixCmdPost *grep* cwindow
nnoremap [q :<C-u>cprevious<CR>
nnoremap ]q :<C-u>cnext<CR>
" 端末模倣機やX Window Systemと相性が悪い模鼠操作束縛を解除
"   LibVTEの端末模倣機などではShiftを押下しながら模鼠を用いることで端末画面自体を操作できる（選択・転写など）
"   X Window SystemはAltを押下しながら模鼠を使うことでWindowを操作できる（最大化・移動など）
set mouse=a nomousehide
map <S-LeftMouse> <NOP>
map <A-LeftMouse> <NOP>
map <S-RightMouse> <NOP>
map <A-RightMouse> <NOP>
"   ↓これは有効にしたい。が，既定の挙動がよく分からんのでとりあえず無効
map <C-LeftMouse> <NOP>
map <C-RightMouse> <NOP>



" 検索
set ignorecase smartcase
set hlsearch
set incsearch wrapscan
" 情報
set display=truncate
set showtabline=2
set laststatus=2
set statusline=
set statusline+=\ %(%m\ %r\ %h\ %w%)
set statusline+=%<
"set statusline+=%(%f%)
set statusline+=\ %y
" 右寄せ
set statusline+=%=
" NOTE: 「U+%04.8B」は譜類の文字符号化方式がUTF-8であることを前提としている
set statusline+=%(U+%04.8B%)
set statusline+=\ %(%l:%c%)
set showcmd
set showmode
" 括弧の対応
set showmatch
set matchpairs+=‘:’,“:”,（:）,｟:｠,「:」,｢:｣,『:』,［:］,〚:〛,｛:｝,〔:〕,〘:〙,〈:〉,《:》,‹:›,«:»,【:】,〖:〗,〝:〟
" 走類の形状を態毎に変更
if exists('$TMUX')
	let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[5 q\<Esc>\\"
	let &t_SR .= "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
	let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
elseif &term =~ "screen"
	let &t_SI .= "\<Esc>P\<Esc>[5 q\<Esc>\\"
	let &t_SR .= "\<Esc>P\<Esc>[4 q\<Esc>\\"
	let &t_EI .= "\<Esc>P\<Esc>[2 q\<Esc>\\"
else
	let &t_SI .= "\<Esc>[5 q"
	let &t_SR .= "\<Esc>[4 q"
	let &t_EI .= "\<Esc>[2 q"
endif
" 新規領域の挙動を閲覧機などと挙動を統一
set noequalalways
"   昔は逆の動作が標準だったのかな？ 既定の動作だとすごく非直感的なんだけども
set splitbelow splitright
" 差分
set diffopt=internal,filler,algorithm:histogram,indent-heuristic



let g:netrw_silent = 1
let g:netrw_menu = 1
let g:netrw_banner = 0
let g:netrw_preview = 1
let g:netrw_hide = 1
let g:netrw_liststyle = 3
let g:netrw_sizestyle = "H"
let g:netrw_xstrlen = 3
let g:netrw_browsex_viwer = "xdg-open"
"" HTTPで譜類を取得する際の進捗出力を抑制
""    FIXME: 上手くいっていません！！！
if 0
	if g:netrw_http_cmd == "curl"
		let g:netrw_http_xcmd .= " --silent"
	elseif g:netrw_http_cmd == "wget"
		let g:netrw_http_xcmd .= " --quiet"
	elseif g:netrw_http_cmd == "fetch"
		let g:netrw_http_xcmd .= " --quiet"
	endif
endif
let g:netrw_home = expand($XDG_CACHE_HOME) . "/vim"



" 局所設定
set modeline
set noexrc
set nosecure



" 制危
"set cryptmethod=blowfish2



" emmet-vim<https://mattn.github.io/emmet-vim/>の設定
"   前置鍵盤は<C-\>（Ctrl+4などで入力）。
let g:emmet_html5 = 1
let g:user_emmet_leader_key = "<C-\\>"
let g:user_emmet_settings = {}
let g:user_emmet_settings["variables"] = {"lang": "ja", "locale": "ja-JP"}
let g:user_emmet_settings["html"] = {"filters": "html"}
let g:user_emmet_settings["html"]["default_attributes"] = {"meta:compat":
			\ [{ "http-equiv": "X-UA-Compatible" },
			\  { "content": "IE=edge" }]}
let g:user_emmet_settings["html"]["snippets"] = {"html:5":
			\ "<!DOCTYPE html>\n" .
			\ "<html lang=\"${lang}\">\n" .
			\ "<head>\n" .
			\ 	"\t<meta charset=\"${charset}\">\n" .
			\ 	"\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n" .
			\ 	"\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n" .
			\ "\n" .
			\ 	"\t<title>新しいHTML文書</title>\n" .
			\ "\</head>\n" .
			\ "\n" .
			\ "<body>\n" .
			\ 	"\t<header>\n" .
			\ 	"\t</header>\n" .
			\ "\n" .
			\ 	"\t<main>\n" .
			\ 		"\t\t<h1>新しいHTML文書</h1>\n" .
			\ "\n" .
			\ 		"\t\t<section>\n" .
			\ 		"\t\t\t<p>|</p>\n" .
			\ 		"\t\t</section>\n" .
			\ 	"\t</main>\n" .
			\ "\n" .
			\ 	"\t<footer>\n" .
			\ 	"\t</footer>\n" .
			\ "</body>\n" .
			\ "</html>"}
" XML
let g:user_emmet_settings['xml'] = { 'filters': 'html' }
let g:user_emmet_settings['xml']['snippets'] = { '!!!':
			\ "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"}
let g:user_emmet_settings['xml']['snippets'] = { 'xml:rdf':
			\ "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" .
			\ "<rdf:RDF\n" .
			\ "  xml:lang=\"${lang}\"\n" .
			\ "  xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n" .
			\ 	"\t<rdf:Description rdf:about=\"\">\n" .
			\ 		"\t\t|\n" .
			\ 	"\t<rdf:Description>\n" .
			\ "</rdf:RDF>"}

let g:asciidoctor_fenced_languages = ['c']


if exists('g:started_by_firenvim')
	let g:firenvim_config['globalSettings'] = {
	\   '<C-t>': 'default',
	\   '<C-n>': 'default',
	\   '<C-w>': 'default',
	\ }
	let g:firenvim_config['localSettings']['https?://www\.google\.com/.*'] = #{
	\   takeover: 'never',
	\   selector: 'textarea:not([name="q"])',
	\   priority: 1,
	\ }
	let g:firenvim_config['localSettings']['https?://.*\.github\.dev/.*'] = #{
	\   takeover: 'never',
	\   selector: 'textarea:not(.xterm-helper-textarea) div.monaco-mouse-cursor-text',
	\   priority: 1,
	\ }
	let g:firenvim_config['localSettings']['https?://discord\.com/.*'] = #{
	\   takeover: 'never',
	\   selector: '[role="textbox"] span[data-slate-length="0"]',
	\   priority: 1,
	\ }
	  "\   selector: '[role="textbox"] :where([data-slate-length="0"], [data-slate-string="true"])',
	"let g:firenvim_config['localSettings']['https?://www\.nicovideo\.jp/.*'] = {
	"\   'takeover': 'never',
	"\   'selector': '',
	"\   'priority': 1,
	"\ }
	let g:firenvim_config['localSettings']['https?://copy\.sh/v86/.*'] = #{
	\   takeover: 'never',
	\   selector: '',
	\   priority: 1,
	\ }
	" デライトでは他者輪郭のデラングを覗いたときもFirenvimを立ち上げるようにする。
	let g:firenvim_config['localSettings']['https?://dlt\.kitetu\.com/.*'] = #{
	\   selector: 'div:not(.xpd) textarea.src',
	\   priority: 1,
	\ }
	let g:firenvim_config['localSettings']['https?://github\.com/.*'] = #{
	\   takeover: 'never',
	\   selector: 'textarea:not(#read-only-cursor-text-area)',
	\   priority: 1,
	\ }

	packadd firenvim-0.2.15

	set guifont=Sarasa\ Term\ Slab\ J:h18
	set showtabline=1
	" set shortmess+=W
	" autocmd BufEnter www.nicovideo.jp* CommentInput-textarea
	" www.nicovideo.jp_watch-sm42241937_V-1-DIV-2-DIV-1-DIV-1-TEXTAREA-1_2024-01-13T09-19-06-282Z.txt

	" [_Esc_]を2回押すと離脱
	nnoremap <Esc><Esc> <Cmd>call firenvim#focus_page()<Enter>

	autocmd BufEnter * let b:timer_started = v:false
	function! s:writeasync_sub()
		let b:timer_started = v:false
		silent write
	endfunction
	function! s:writeasync()
		if b:timer_started | return | endif
		if ! empty(&buftype) | return | endif
		let b:timer_started = v:true
		call timer_start(1000, { -> s:writeasync_sub() })
	endfunction
	autocmd TextChanged,TextChangedI * ++nested call s:writeasync()
	" autocmd TextChanged,TextChangedI * ++nested
	"   \  if g:timer_started | return | endif
	"   \| let g:timer_started = v:true
	"   \| call timer_start(1000, { -> s:writeasync_sub() })

	" 条件に合致したらWeb頁にその鍵を送信する，そうじゃなければVimのものとして実行
	function! s:PassThroughIf(keys, cond)
		echo a:cond
		" if a:cond
		" 	call firenvim#press_keys(a:keys)
		" else
		" 	call feedkeys(a:keys)
		" endif
	endfunction
	"autocmd BufEnter www.nicovideo.jp*
	"\| nnoremap <expr> k <SID>PassThroughIf('k', (line('$') == 1))

	" 改行して即座に送信する類のWeb用地
	function! s:PostAndExit(postcmd)
		silent write
		call firenvim#eval_js(a:postcmd)
		call firenvim#focus_page()
		quit!
	endfunction
	autocmd BufEnter www.nicovideo.jp*
	\  set nonumber
	\| inoremap <silent> <Enter>
	\    <Cmd> if line('$') == 1
	\    <Bar> 	silent write
	\    <Bar> 	call firenvim#eval_js('document.querySelector(' ..
	\          	  '"button.ActionButton.CommentPostButton"' ..
	\          	').click()')
	\    <Bar> 	call firenvim#focus_page()
	\    <Bar> 	quit!
	\    <Bar> else
	\    <Bar> 	call feedkeys("\<Enter>")
	\    <Bar> endif
	\    <Enter>
	"\| nnoremap <silent> k
	"\    <Cmd> if line('$') == 1
	"\    <Bar> 	call firenvim#press_keys('k')
	"\    <Bar> else
	"\    <Bar> 	normal k
	"\    <Bar> endif
	"\    <Enter>
	autocmd BufEnter,FocusGained www.nicovideo.jp* startinsert!

	" 保存して即座に送信する類のWeb用地
	autocmd VimLeave dlt.kitetu.com*,b.hatena.ne.jp*,crowdin.com*
	\  if ! (line('$') == 1 && getline(1) == '')
	\| 	call firenvim#press_keys('<LT>C-Enter>')
	\| endif

	" 下見機能
	let g:firenvim_preview_script = {
	\   'dlt.kitetu.com':
	\     [ 'document.querySelectorAll("button.pvw.hid").forEach($ => $.click())',
	\       'document.querySelectorAll("button.pvw.shw").forEach($ => $.click())' ],
	\ }
	" for k, v in g:firenvim_preview_script->items()
	" 	call autocmd_add(#{
	" 				\ replace: v:true,
	" 				\ group: v:none;
	" 				\ event: 'BufEnter';
	" 				\ pattern: k .. '*'
	" 				\ cmd: s:__a(v)
	" 				\ })
	" "	b:firenvim_prewiew_showed = v:false
	" endfor
	" function! s:__a(script)
	" 	'let b:firenvim_prewiew_showed = v:false'
	" 	.. 'nnoremap <C-w>z <Cmd>let b:firenvim_prewiew_showed ='
	" 	.. a:script ' b:firenvim_prewiew_showed)<Enter>'
	" endfunction
	function! g:firenvim_preview_script.SwitchPreview(key, pvwstat)
		call firenvim#eval_js(self[a:key][(a:pvwstat ? 1 : 0)])
		return ! a:pvwstat
	endfunction
	" command SwitchPreview
	autocmd BufEnter dlt.kitetu.com*
	\  let b:firenvim_prewiew_showed = v:false
	\| nnoremap <C-w>z
	\    <Cmd> let b:firenvim_prewiew_showed =
	\          g:firenvim_preview_script.SwitchPreview(
	\            'dlt.kitetu.com',
	\            b:firenvim_prewiew_showed
	\          )
	\    <Enter>
endif

filetype plugin indent on

syntax enable
colorscheme _
