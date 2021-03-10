# Maintainer: channel-42 <info@devls.de>
pkgname=wppfzf
pkgver=0.1.0
pkgrel=1
pkgdesc="Browse and download images from reddit with fzf"

arch=('any')
url="https://github.com/channel-42/wppfzf"
license=('GPL3')
groups=('misc')
depends=('fzf'
         'ueberzug'
         'bash')

source=("https://github.com/channel-42/$pkgname/archive/v$pkgver.tar.gz")
md5sums=('3623ffafed0417d9ce52b10683042beb')

package() {
	cd "$pkgname-$pkgver"
	make PREFIX="/usr" DESTDIR="$pkgdir/" install
}


# vim: ts=2 sw=2 et ft=PKGBUILD:
