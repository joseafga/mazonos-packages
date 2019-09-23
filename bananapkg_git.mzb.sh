#!/usr/bin/mzbuild
# bananapkg_git mzbuild 0.2.0a
#
# contribuitors:
#   José Almeida <jose.afga@gmail.com>

NAME='bananapkg_git'
VERSION="${VERSION:-r154.b545d63}"
BUILD="${BUILD:-1}"
DESCRIPTION='Low-level package manager written in shell bash'
LICENSE='MIT'
HOMEPAGE='https://bananapkg.github.io'
MAINTAINER='José Almeida <jose.afga@gmail.com>'

URL="https://github.com/slackjeff/bananapkg.git"

deps=('bash' 'sed' 'tar' 'awk' 'xz' 'gnupg')

package() {
    # use cloned folder as source
    cd "$filedir/$filename"

    install -vDm755 -t "${bindir}/sbin/" 'banana'
    install -vDm644 -t "${bindir}/usr/share/man/pt_BR/man8/" 'banana.8'
    install -vDm644 -t "${bindir}/usr/libexec/banana/" {core,help}'.sh'
    install -vDm644 -t "${bindir}/etc/banana/" 'banana.conf'
    mkdir -vp "${bindir}/var/lib/banana/"{list,desc,remove}

    install -vDm644 -t "${bindir}/usr/share/licenses/${NAME}/" 'LICENSE'
}
