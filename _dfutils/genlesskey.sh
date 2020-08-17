#!/bin/sh

: '@prefix : <http://purl.org/net/ns/doas#>. <> a :Script;
:一行説明   "lesskeyを生成する。";
:作成日     "2020-08-17";
:公開版     ( [:版 "0.1.0"; :作成日 "2020-08-17"] );
:作成者     "cmplstofB";
:権利       "ⓒ 2020 cmplstofB";
:ライセンス <http://www.wtfpl.net/txt/copying/>;
:依存関係   ( "POSIX.1-2017"
              "less" ).'

set -o errexit
set -o nounset
set -o noclobber
umask 0022
export PATH="$(command -p getconf PATH)${PATH:+:$PATH}"
export POSIXLY_CORRECT='200809' UNIX_STD='2003' \
       COMMAND_MODE='unix2003' XPG_SUS_ENV='ON'

lesskey --output="$LESSKEY" -- - <<.
#env
LESS = --quit-at-eof --quit-if-one-screen --ignore-case --long-prompt --RAW-CONTROL-CHARS --no-init
LESSHISTFILE = ${XDG_CACHE_HOME:-$HOME/.cache}/lesshist
LESSHISTSIZE = 5000
.
