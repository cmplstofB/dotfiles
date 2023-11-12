if g:loaded_coqtail
" CoqtailがUnicode記号を構文強調できるように
" https://github.com/coq/coq/blob/v8.16/theories/Unicode/Utf8_core.v
	syn match coqKwd contained "∀\|∃\|λ\|→"
endif
