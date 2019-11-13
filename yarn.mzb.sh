#!/usr/bin/mzbuild
# yarn mzbuild 0.3.0a
#
# contribuitors:
#   José Almeida <jose.afga@gmail.com>

NAME='yarn'
VERSION="${VERSION:-1.19.1}"
BUILD="${BUILD:-2}"
DESCRIPTION='Fast, reliable, and secure dependency management.'
LICENSE='BSD'
HOMEPAGE='https://yarnpkg.com'
MAINTAINER='José Almeida <jose.afga@gmail.com>'
DOWNLOAD='false' # skip download

deps=('nodejs')
makedeps=()

# nothing to extract, override with empty funtion
extract() { :; }

package() {
    npm -g --prefix "${bindir}/usr" install "yarn@${VERSION}"
}
