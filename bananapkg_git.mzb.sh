#!/usr/bin/mzbuild
# bananapkg_git mzbuild 0.2.0a
#
# contribuitors:
#   José Almeida <jose.afga@gmail.com>

NAME='bananapkg_git'
VERSION="${VERSION:-r160.3e2d238}"
BUILD="${BUILD:-1}"
DESCRIPTION='Low-level package manager written in shell bash'
LICENSE='MIT'
HOMEPAGE='https://bananapkg.github.io'
MAINTAINER='José Almeida <jose.afga@gmail.com>'

URL="https://github.com/slackjeff/bananapkg.git"

deps=(
    'bash'
    'sed'
    'tar'
    'awk'
    'xz'
    'gnupg'
)

package() {
    cd "$filedir/$filename"

    # using default bananapkg installer
    ./install.sh DESTDIR="${bindir}"
    install -vDm644 -t "${bindir}/usr/share/licenses/${NAME}/" 'LICENSE'
}
