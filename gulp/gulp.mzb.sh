#!/usr/bin/mzbuild
# yarn mzbuild 0.3.0a
#
# contribuitors:
#   José Almeida <jose.afga@gmail.com>

NAME='gulp'
VERSION="${VERSION:-4.0.2}"
BUILD="${BUILD:-1}"
DESCRIPTION='The streaming build system.'
LICENSE='MIT'
HOMEPAGE='https://gulpjs.com'
MAINTAINER='José Almeida <jose.afga@gmail.com>'
DOWNLOAD='false' # skip download

deps=('nodejs')
makedeps=()

# nothing to extract, override with empty funtion
extract() { :; }

package() {
    npm -g --prefix "${bindir}/usr" install "gulp@${VERSION}"
}
