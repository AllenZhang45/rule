# Vim 配置文件集合

这是一个模块化的 Vim 配置文件集合，通过分类组织不同的配置项，使 Vim 的配置更加清晰和易于维护。

## 目录结构

```
.
└── vim_config/
    ├── settings.vim  # 基本设置
    ├── keymaps.vim   # 快捷键映射
    ├── plugins.vim   # 插件配置
    └── autocmd.vim   # 自动命令
```

## 功能特性

### 基本设置 (settings.vim)
- UTF-8 编码支持
- 自动保存功能
- 实时搜索高亮
- 智能缩进
- 行号显示
- 状态栏优化
- 文件类型检测

### 快捷键映射 (keymaps.vim)
- 使用空格键作为 leader 键
- 快速保存文件 (`<space>w`)
- 快速查找文件 (`<space>f`)
- 全文复制快捷键 (`Ctrl+A`)
- 系统剪贴板集成 (`Ctrl+C`)
- 代码格式化快捷键 (`F12`)

### 插件配置 (plugins.vim)
- Vundle 插件管理
- Airline 状态栏美化
- NERDTree 文件树浏览
- TagList 代码大纲
- YouCompleteMe 代码补全
- 自动配对括号和引号

### 自动命令 (autocmd.vim)
- 文件类型特定设置
- 自动去除尾部空格
- 保存时自动格式化代码
- 记住上次编辑位置

## 安装说明

1. 克隆仓库到本地：
```bash
git clone https://github.com/AllenZhang45/rule.git
```

2. 创建符号链接或复制文件：
```bash
# 方法1：创建符号链接
ln -s /path/to/rule/vim_config ~/.vim_config
ln -s /path/to/rule/.vimrc ~/.vimrc

# 方法2：直接复制
cp -r /path/to/rule/vim_config ~/.vim_config
cp /path/to/rule/.vimrc ~/.vimrc
```

3. 安装 Vundle 插件管理器：
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

4. 安装插件：
在 Vim 中执行：
```
:PluginInstall
```

## 配置文件引用
在 .vimrc 文件中添加以下内容：
```vim
" 引用配置文件
source ./vim_config/settings.vim  " 基本设置
source ./vim_config/keymaps.vim   " 快捷键映射
source ./vim_config/plugins.vim   " 插件配置
source ./vim_config/autocmd.vim   " 自动命令
```

## 自定义配置

如需自定义配置，建议按以下方式修改：

1. 基本设置修改：编辑 `settings.vim`
2. 快捷键修改：编辑 `keymaps.vim`
3. 插件相关：编辑 `plugins.vim`
4. 自动命令：编辑 `autocmd.vim`

## 依赖要求

- Vim 8.0+
- Git (用于插件管理)
- Python 3.6+ (用于 YouCompleteMe)
- Node.js (可选，用于某些插件)

## 常见问题

1. YouCompleteMe 安装失败
   - 确保已安装 Python 和编译工具
   - 参考 YCM 官方文档进行编译安装

2. 字体显示异常
   - 安装 Powerline 字体
   - 确保终端支持 UTF-8

## 更新日志

### [1.0.0] - 2025-11-10
- 初始版本发布
- 完整的模块化配置
- 基本功能实现

## 贡献指南

1. Fork 本仓库
2. 创建特性分支
3. 提交更改
4. 发起 Pull Request

## 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件

## 联系方式

- 作者：Allen Zhang
- GitHub：[@AllenZhang45](https://github.com/AllenZhang45)