pushd build

GMP_VER=gmp-6.1.2

rm -rf ${GMP_VER}
curl https://ftp.gnu.org/gnu/gmp/${GMP_VER}.tar.xz | tar xz
pushd ${GMP_VER}

export CFLAGS="-arch i386"
export CPPFLAGS="-arch i386"
export CXXFLAGS="-arch i386"
export LDFLAGS="-arch i386"

./configure --prefix=/usr/local/opt/gmp-i386 --disable-assembly && \
  make && \
  make install

unset CFLAGS
unset CPPFLAGS
unset CXXFLAGS
unset LDFLAGS

popd
popd