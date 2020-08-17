#!/bin/sh

: '@prefix : <http://purl.org/net/ns/doas#>. <> a :Script;
:一行説明   "dotfilesの初期即譜。";
:作成日     "2020-03-28";
:公開版     ( [:版 "0.2.0"; :作成日 "2020-03-28"]
              [:版 "0.1.0"; :作成日 "2020-03-28"] );
:作成者     "cmplstofB";
:権利       "ⓒ 2020 cmplstofB";
:ライセンス <http://www.wtfpl.net/txt/copying/>;
:依存関係   ( "POSIX.1-2017" "su" ).'

set -o errexit
set -o nounset
set -o noclobber
umask 0022
export PATH="$(command -p getconf PATH)${PATH:+:$PATH}"
export POSIXLY_CORRECT='200809' UNIX_STD='2003' \
       COMMAND_MODE='unix2003' XPG_SUS_ENV='ON'

die() {
# 文言を表示して不成功する
# 使用法: die [-s <exit_status>] [<message>]
# 被演算子:
# 	<exit_status> 終了状態
#                  （既定は直前の返り値か，もしもそれが0なら1）
# 	<message>     表示する文言
	_exit_status="$?"
	OPTIND=1; while getopts 's:' _opt; do
		case $_opt in
			's') _exit_status="$OPTARG" ;;
		esac
	done; shift $(($OPTIND - 1))
	if [ $# -ge 1 ]; then
		printf '[%s] \033[1m\033[31m誤り\033[39m\033[22m: %s\n' \
		  "${0##*/}" "$1"
		shift
	else
		printf '[%s] \033[1m\033[31m誤り\033[39m\033[22m\n' \
		  "${0##*/}"
	fi
	exit $(($_exit_status?$_exit_status:1))
} >&2

# OS種別判定（現在Debian系のみ対応）。
case $(uname) in
	'Linux')
		if [ -r '/etc/os-release' ]; then
			. '/etc/os-release'
			case $ID in
				'debian')
					_ostype='debian'
					;;
			esac
		else
			die '対応していないOSです。'
		fi
		;;

	*)
		die '対応していないOSです。'
		;;
esac

# su命令があるか確認，なければ異常終了。
command -v su > '/dev/null' 2>&1 ||
die '‘su’命令を用意して下さい。'

# git命令があるか確認，なければ引装。
if ! command -v git > '/dev/null' 2>&1; then
	echo 'Installing ‘git’...'
	case $_ostype in
		'debian')
			su -c 'apt install -y git'
			;;
	esac
fi

git clone https://github.com/cmplstofB/dotfiles.git
cd dotfiles
mv ./"Makefile.$_ostype" Makefile
