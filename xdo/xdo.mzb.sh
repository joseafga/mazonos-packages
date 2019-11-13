#!/usr/bin/mzbuild
# xdo mzbuild 0.2.0a
#
# contribuitors:
#   José Almeida <jose.afga@gmail.com>

# package info
NAME='xdo'
VERSION="${VERSION:-0.5.7}"
BUILD="${BUILD:-1}"
DESCRIPTION='Small X utility to perform elementary actions on windows.'
LICENSE='BSD'
HOMEPAGE='https://github.com/baskerville/xdo'
# personal info
MAINTAINER='José Almeida <jose.afga@gmail.com>'
# download info
URL="https://github.com/baskerville/xdo/archive/${VERSION}.tar.gz"
CHECKSUM_MD5='26a864375c6e703b87a2ff6d6f7a6068'
# CHECKSUM_SHA256=''

deps=('libxcb' 'xcb_util' 'xcb_util_wm')
makedeps=()

build() {
    cd "${NAME}-${VERSION}"

    make PREFIX=/usr
}

package() {
    cd "${NAME}-${VERSION}"

    make PREFIX=/usr DESTDIR="$bindir" install
    install -Dm644 LICENSE "${bindir}/usr/share/licenses/${NAME}/LICENSE"
}
