# TalkSphere

<div align="center">

![TalkSphere Logo](https://img.shields.io/badge/TalkSphere-AI%20Chat%20Platform-6366f1?style=for-the-badge)

**多模型 AI 智能对话平台**

[功能特性](#功能特性) • [快速开始](#快速开始) • [下载安装](#下载安装) • [配置说明](#配置说明)

</div>

---

## 📖 简介

TalkSphere 是一款功能强大的 AI 聊天客户端，支持国内外主流大模型，集成了知识库管理、MCP 工具集成、AI 绘画等高级功能。

## ✨ 功能特性

### 🤖 多模型支持

#### 国际模型
- **OpenAI**: GPT-4o, GPT-4 Turbo, GPT-3.5 Turbo
- **Anthropic**: Claude 3.5 Sonnet, Claude 3 Opus, Claude 3 Haiku
- **Google**: Gemini 1.5 Pro, Gemini 1.5 Flash

#### 国产模型
- **DeepSeek**: DeepSeek Chat, DeepSeek R1 (推理模型)
- **阿里通义千问**: Qwen Turbo, Qwen Plus, Qwen Max, Qwen Long
- **智谱GLM**: GLM-4 Plus, GLM-4 Air, GLM-4 Flash, GLM-4 Long
- **百度文心**: 文心一言 4.0, 文心一言 3.5, 文心 Speed
- **Moonshot Kimi**: Kimi 8K, Kimi 32K, Kimi 128K
- **字节豆包**: 豆包 Pro, 豆包 Lite

#### 本地模型
- **Ollama**: Llama 3, Qwen 2, Mistral 等

### 💬 对话功能
- 多会话管理，支持搜索过滤
- 对话分支与版本控制
- 消息编辑与重新生成
- 流式输出实时显示
- 上下文长度自定义

### 📚 知识库 (RAG)
- 创建和管理自定义知识库
- 上传文档作为对话上下文

### 🔧 MCP 工具集成
- 网页搜索、文件操作、数据分析等工具

### 🎨 AI 绘画
- DALL-E 3 / DALL-E 2 / Stable Diffusion 支持

### 🤖 自定义助手
- 8种专业助手（编程、写作、翻译、数据分析等）

### ⚖️ 多模型对比
- 同时向多个模型发送相同问题并对比回答

### 📝 提示词库
- 14+ 预置提示词模板

### 🎤 语音输入
- Web Speech API 实时语音识别

### 📤 导出功能
- JSON、Markdown、HTML、TXT、PDF 多格式导出

## 📥 下载安装

### 桌面端

| 平台 | 下载 |
|------|------|
| Windows | [TalkSphere-Setup.exe](../../releases) |
| macOS (Intel) | [TalkSphere-x64.dmg](../../releases) |
| macOS (Apple Silicon) | [TalkSphere-arm64.dmg](../../releases) |
| Linux | [TalkSphere.AppImage](../../releases) |

### 移动端

| 平台 | 下载 |
|------|------|
| Android | [TalkSphere.apk](../../releases) |

### 从源码构建

```bash
# 克隆仓库
git clone https://github.com/talksphere/talksphere.git
cd talksphere

# 安装依赖
npm install

# 开发模式运行
npm start

# 构建应用
npm run build        # 构建当前平台
npm run build:win    # 构建 Windows
npm run build:mac    # 构建 macOS
npm run build:linux  # 构建 Linux
```

## 🚀 快速开始

### 方式一：直接打开
直接在浏览器中打开 `src/renderer/index.html` 文件即可使用。

### 方式二：本地服务器
```bash
# 使用 Python
python -m http.server 8080

# 或使用 Node.js
npx serve .
```

## ⚙️ 配置说明

### API 配置

在设置页面配置以下 API Key：

| 服务商 | 配置项 | 获取方式 |
|--------|--------|----------|
| OpenAI | OpenAI API Key | [platform.openai.com](https://platform.openai.com) |
| Anthropic | Anthropic API Key | [console.anthropic.com](https://console.anthropic.com) |
| Google | Google API Key | [aistudio.google.com](https://aistudio.google.com) |
| DeepSeek | DeepSeek API Key | [platform.deepseek.com](https://platform.deepseek.com) |
| 阿里云 | 阿里云 API Key | [dashscope.console.aliyun.com](https://dashscope.console.aliyun.com) |
| 智谱 | 智谱 API Key | [open.bigmodel.cn](https://open.bigmodel.cn) |
| 百度 | API Key + Secret Key | [console.bce.baidu.com](https://console.bce.baidu.com/qianfan) |
| Moonshot | Moonshot API Key | [platform.moonshot.cn](https://platform.moonshot.cn) |
| 字节豆包 | API Key + Endpoint ID | [console.volcengine.com](https://console.volcengine.com/ark) |

## 🛠️ 技术栈

- **前端框架**: 原生 JavaScript (ES6+)
- **桌面框架**: Electron
- **移动端**: Capacitor
- **样式**: CSS3 + CSS Variables
- **Markdown**: Marked.js
- **代码高亮**: Highlight.js
- **语音识别**: Web Speech API
- **存储**: LocalStorage

## 📁 项目结构

```
TalkSphere/
├── src/
│   ├── main.js           # Electron 主进程
│   ├── preload.js        # 预加载脚本
│   └── renderer/
│       └── index.html    # 主应用文件
├── assets/               # 图标等资源
├── .github/
│   └── workflows/
│       └── build.yml     # GitHub Actions 构建配置
├── package.json
└── README.md
```

## 🔒 安全说明

- API Key 存储在浏览器 LocalStorage 中
- 建议定期更换 API Key
- 不要在公共设备上保存 API Key
- 所有 API 调用直接从客户端发起，不经过中间服务器

## 🌐 浏览器兼容性

| 浏览器 | 支持情况 |
|--------|----------|
| Chrome | ✅ 完全支持 |
| Edge | ✅ 完全支持 |
| Firefox | ✅ 完全支持 |
| Safari | ⚠️ 部分功能受限（语音识别） |

## 📝 更新日志

### v1.0.0 (2024-01)
- 初始版本发布
- 支持国内外 10+ 大模型
- 知识库管理
- MCP 工具集成
- AI 绘画功能
- 自定义助手
- 多模型对比
- 提示词库
- 语音输入
- 多格式导出
- 多平台打包 (Windows/macOS/Linux/Android)

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

## 📄 许可证

MIT License

---

<div align="center">

**TalkSphere** - 让 AI 对话更简单

Made with ❤️ by TalkSphere Team

</div>
