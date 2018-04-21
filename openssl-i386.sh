pushd build

OPENSSL_VER=openssl-1.0.2o

rm -rf ${OPENSSL_VER}
curl https://www.openssl.org/source/${OPENSSL_VER}.tar.gz | tar xz
pushd ${OPENSSL_VER}

export CFLAGS="-arch i386"
export LDFLAGS="-arch i386"

./config --openssldir=/usr/local/opt/openssl-i386 && \
  make && \
  make install

unset CFLAGS
unset LDFLAGS

popd
popd