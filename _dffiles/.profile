## XDG User Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

## $PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
#  home /bin
test -d "${XDG_DATA_HOME%/share}/bin" && export PATH="${XDG_DATA_HOME%%/share}/bin:$PATH"
#  node.js
test -d "${XDG_DATA_HOME%/share}/opt/nodejs/bin" && export PATH="${XDG_DATA_HOME%%/share}/opt/nodejs/bin:$PATH"

## POSIX
export POSIXLY_CORRECT='200809' UNIX_STD='2003' \
       COMMAND_MODE='unix2003' XPG_SUS_ENV='ON'

## 基礎的
export PAGER='pager'
export EDITOR='editor'
export CDPATH="$HOME:$(xdg-user-dir DESKTOP)"

## 手引きの設定
export MANPATH="${XDG_DATA_HOME}/man:/opt/maple2019/man/:"
#command -v manpath > /dev/null && manpath -C "${XDG_CONFIG_HOME}/manpath"

# 端末の設定
tabs 4

## 時刻表示形式
export DTFMT="$(printf '\033[1m%%Y\033[22m\033[2m-\033[22m\033[1m%%m\033[22m\033[2m-\033[22m\033[1m%%d\033[22m\033[2mT\033[22m\033[1m%%H\033[22m\033[2m:\033[22m\033[1m%%M\033[22m\033[2m:\033[22m\033[1m%%S\033[22m')"
export DTFMT_FLT="$(printf '%%Y%%m%%dT%%H%%M%%S')"

## 地域化
#iso639lang()
#{
#	ISO639LANG="$(locale | sed -n -e 's/^LC_MESSAGES="\([a-z]\{2,3\}\)_.*"/\1/p' || echo 'en')"
#	if [ ${#ISO639LANG} -eq 0 ]; then
#		echo 'en'
#	else
#		echo "$ISO639LANG"
#	fi
#}

## ls(1)
(command -v dircolors > /dev/null && test -f "$XDG_CONFIG_HOME/dircolors") &&
eval "$(dircolors "$XDG_CONFIG_HOME/dircolors")"

## less(1)
export LESSKEY="$XDG_CONFIG_HOME/lesskey"

## Vim
export VIMINIT='let $MYVIMRC = expand("$XDG_CONFIG_HOME") . "/vim/vimrc" | source $MYVIMRC'

## Python
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc.py"
alias py='\python3'

### Opam
[ -r ${OPAMROOT:-~/.opam}/opam-init/init.sh ] &&
. ${OPAMROOT:-~/.opam}/opam-init/init.sh > /dev/null 2> /dev/null || :

## GNUPG
#export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"

#   GNU拡張を使いまくっているが，
#   GNU Bashがあるような環境ではGNUユーティリティが予め用意されているか，
#   仮にないとしても簡単に用意できるので特にPOSIXへの準拠は意識していない。
alias l='env COLUMNS=${COLUMNS:-$(tput cols)} \
         \ls --color=always --classify --format=across --show-control-chars \
         --group-directories-first --quoting-style=literal --almost-all' \
      ll='env COLUMNS=${COLUMNS:-$(tput cols)} \
          \ls --color=always --classify --format=long --group-directories-first \
          --human-readable --time-style=+"$DTFMT" --almost-all' \
      lt='\tree -F -C --dirsfirst -a'
# もう既定で全表示。
      #la='l --almost-all' \
      #lla='ll --almost-all' \
      #lta='lt -a'
#    今日の日付と時刻
alias now='\date +"$DTFMT"'
alias now,='\date +"$DTFMT_FLT"'
alias today='\date +"${DTFMT%T*}"'
alias today,='\date +"${DTFMT_FLT%T*}"'
# 基本コマンド
alias mdr='\mkdir --parents --verbose'
alias rm='\rm --recursive --verbose'
alias nl='\nl --number-format=rz --number-separator="$(printf \
         '"'"'\033[2;37m│\e[22;39m\t'"'"')" --number-width=3'
alias mv='\mv --interactive --verbose'
alias ln='\ln --verbose'
alias cp='\cp --interactive --recursive --verbose'
alias df='\df --human-readable --print-type'
alias du='\du --apparent-size --human-readable --one-file-system'
alias free='\free --human --wide'
#    g/re/p関連
export GREP_COLORS='mt=1;7;93:ln=2;97:fn=2;97:bn=2;97:se=2;37'
alias   grep='\grep --binary-file=without-match --color=auto' \
       grep,='\grep --binary-file=without-match -color=always --line-number --with-filename'
alias  igrep='\grep --binary-file=without-match -color=auto --ignore-case' \
      igrep,='\grep --binary-file=without-match -color=always --line-number --with-filename --ignore-case'
alias  fgrep='\grep --binary-file=without-match -color=auto --fixed-strings' \
      fgrep,='\grep --binary-file=without-match -color=always --line-number --with-filename --fixed-strings'
alias  egrep='\grep --binary-file=without-match -color=auto --extended-regexp' \
      egrep,='\grep --binary-file=without-match -color=always --line-number --with-filename --extended-regexp'
alias sudo='\sudo --preserve-env '
alias texdoc,l='\texdoc --list --nointeract'
alias tmux='\tmux -f "$XDG_CONFIG_HOME/tmux/tmux.conf" -u'
alias 2hex='\od -v -A nx -t x1' \
      2dec='\od -v -A nd -t d1'

## JSON
alias dj='\jq --color-output --raw-output '"'"'.'"'"

## wget(1)
#alias wget='\wget --hsts-file="$XDG_CACHE_HOME/wget-hsts" --header "Accept-Language: $(iso639lang),en"'
alias wget='\wget --hsts-file="$XDG_CACHE_HOME/wget-hsts" --header "Accept-Language: ja,en"'

## curl(1)
#alias curl='\curl --header "Accept-Language: $(iso639lang),en"'
alias curl='\curl --header "Accept-Language: ja,en"'

## 自作小函数
getmty() {
	#@ show Media Type
	file -i -- "${1:?}" | awk -F ':' '{ print $NF }'
}

## TeX関連
export TEXMFCNF="$XDG_CONFIG_HOME/texmf/web2c:$(\kpsewhich --var-value='TEXMFCNF' 2> '/dev/null' || :)"
alias luajitlatex='luajittex --fmt=luajitlatex.fmt'

## .NET Core
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"

## node
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

## FVWM
export FVWM_USERDIR="$XDG_DATA_HOME/fvwm"

## rlwrap
export RLWRAP_HOME="$XDG_DATA_HOME/rlwrap"

## Intel
test -f '/opt/intel/bin/compilervars.sh' && {
	case "$(uname -m)" in
		'x86_64') . /opt/intel/bin/compilervars.sh intel64;;
		*) :;;
	esac
}

## Maple
export MAPLELMG_LICENSE_FILE=/opt/maple2019/license/license.dat
export LM_LICENSE_FILE=/opt/maple2019/license/license.dat

## LibVirt
export LIBVIRT_DEFAULT_URI='qemu:///system'

## heirloom-mailx
export MAILRC="$XDG_CONFIG_HOME/mailrc"

## OpenSSL（かな？）
export RANDFILE="$XDG_CACHE_HOME/rnd"

case "$(command -p ps -o 'comm=' -p $$)" in
	*'bash'*) # GNU Bash
		MYBASHRC="$XDG_CONFIG_HOME/bash/bashrc"
		test -f "$MYBASHRC" && . "$MYBASHRC"
	;;
	*'yash'*) # yash
		MYYASHRC="$XDG_CONFIG_HOME/yash/yashrc"
		test -f "$MYYASHRC" && . "$MYYASHRC"
	;;
esac
