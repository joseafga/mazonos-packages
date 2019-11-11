#!/usr/bin/mzbuild
# yarn mzbuild 0.2.0a
#
# contribuitors:
#   José Almeida <jose.afga@gmail.com>

NAME='yarn'
VERSION="${VERSION:-1.19.1}"
BUILD="${BUILD:-1}"
DESCRIPTION='Fast, reliable, and secure dependency management.'
LICENSE='BSD'
HOMEPAGE='https://yarnpkg.com'
MAINTAINER='José Almeida <jose.afga@gmail.com>'
URL="https://github.com/yarnpkg/yarn/releases/download/v${VERSION}/yarn-v${VERSION}.tar.gz"
CHECKSUM_MD5='4d406e34b2461c4c4f2c3d1f93692bf8'

deps=('nodejs')
makedeps=()

package() {
    cd "${NAME}-v${VERSION}"

    mkdir -vp "${bindir}/usr/lib/node_modules/yarn" "${bindir}/usr/bin"
    cp -vrp * "${bindir}/usr/lib/node_modules/yarn"
    install -vDm644 -t "${bindir}/usr/share/licenses/${NAME}/" 'LICENSE'

    # create symlinks to execute globally
    ln -s '/usr/lib/node_modules/yarn/bin/'{yarn,yarnpkg} "${bindir}/usr/bin/"
}
