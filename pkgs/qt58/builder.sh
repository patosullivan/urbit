source $setup

tar -xf $src

cd qtbase-opensource-src-$version
for patch in $patches; do
  echo applying patch $patch
  patch -p1 -i $patch
done
cd ..

mkdir build
cd build

../qtbase-opensource-src-$version/configure -prefix $out $configure_flags

make

make install

cd $out
PRL="$(find -name \*.prl)"
sed -i 's/-ljpeg//g' $PRL
sed -i 's/-lz//g' $PRL
sed -i 's/-lVersion//g' $PRL
sed -i 's/-lfreetype/-lqtfreetype/g' $PRL
sed -i 's/-lpcre16/-lqtpcre/g' $PRL
sed -i 's/-lpng/-lqtlibpng/g' $PRL
