# api-sdk

DGN Links 公开 API（`/api/v1`）官方 SDK。**生成物仓库**——代码由 [openapi-generator](https://github.com/OpenAPITools/openapi-generator) 从 `spec/public-v1.yaml` 生成，不手改；spec 真相源在主 monorepo `web-bff-php/openapi/public-v1.yaml`。

## 安装

**TypeScript**（GitHub Packages，需配 `.npmrc` 指向 `npm.pkg.github.com`）：
```
npm install @digitallink-global/api-sdk
```

**Python**（pip from git）：
```
pip install "git+https://github.com/digitallink-global/api-sdk.git#subdirectory=python"
```

## 快速开始

API key 在控制台「个人中心 → API 密钥」创建（文档：`https://app.dgnlinks.com/console/docs/`）。

```typescript
import { Configuration, CatalogApi } from '@digitallink-global/api-sdk';
const conf = new Configuration({ basePath: 'https://app.dgnlinks.com/api/v1', accessToken: 'mp_live_...' });
const skus = await new CatalogApi(conf).listSkus({ limit: 10 });
```

```python
from dgnlinks_api import Configuration, ApiClient
from dgnlinks_api.api import CatalogApi
conf = Configuration(host="https://app.dgnlinks.com/api/v1", access_token="mp_live_...")
with ApiClient(conf) as client:
    skus = CatalogApi(client).list_skus(limit=10)
```

## 发版

改 spec → `./generate.sh` → review diff → bump `ts/package.json` 版本 → push + tag `v*` 触发 CI 发包（npm→GitHub Packages；Python 用户直接 pip from git，按 tag 固定版本）。
