#!/usr/bin/env bash
# generate.sh — 从 spec/public-v1.yaml 重新生成 ts/ + python/ SDK(openapi-generator 7.23)
# 用法: PATH 含 java(brew openjdk) 后 ./generate.sh
# 生成物不手改;spec 更新流程=主 monorepo 改 openapi/public-v1.yaml → 拷到 spec/ → 本脚本 → review diff → push
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")"

npx --yes @openapitools/openapi-generator-cli generate -i spec/public-v1.yaml -g typescript-fetch -o ts \
  --additional-properties=npmName=@digitallink-global/api-sdk,npmVersion="$(node -p "require('./ts/package.json').version" 2>/dev/null || echo 0.1.0)",supportsES6=true
npx --yes @openapitools/openapi-generator-cli generate -i spec/public-v1.yaml -g python -o python \
  --additional-properties=packageName=dgnlinks_api,packageVersion="$(grep -m1 '^version' python/pyproject.toml 2>/dev/null | grep -oE '[0-9.]+' || echo 0.1.0)"
echo "done. review diff → bump version → push(tag v* 触发发包)"
