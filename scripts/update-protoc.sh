VERSION="27.1"
cd ../
rm -rf protoc
mkdir protoc

curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v$VERSION/protoc-$VERSION-linux-x86_64.zip
unzip protoc-$VERSION-linux-x86_64.zip -d ./protoc/protoc-linux
rm protoc-$VERSION-linux-x86_64.zip

curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v$VERSION/protoc-$VERSION-osx-universal_binary.zip
unzip protoc-$VERSION-osx-universal_binary.zip -d ./protoc/protoc-osx
rm protoc-$VERSION-osx-universal_binary.zip
