# typescript-proto-tools

## Usage

```bash
npm i -D @mw-experts/typescript-proto-tools
build-protoc-nestjs osx proto/services/posts_data/v1/posts_data.proto ./dist/api
```

## Update protoc

1. Find version number https://github.com/protocolbuffers/protobuf/releases/
2. Edit `VERSION` in the file `scripts/update-protoc.sh`
3. Run `./scripts/update-protoc.sh` or `npm run update-protoc`
4. Dont forget to update `ts-proto` package

## Publish new version

```bash
npm version patch
git push origin HEAD --follow-tags
npm login
npm publish --access public
```
