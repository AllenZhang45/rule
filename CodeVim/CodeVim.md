# CodeVim — 基于纯 Vimscript 的模块化配置

> 目标：用最少的外部依赖（甚至零插件）把 Vim 配置成接近 VS Code 的工作区布局与操作体验，保持轻量与高性能。

## 目录

```
CodeVim/
├── CodeVim.md      # 本文档
├── init.vim        # 主引导文件（按顺序加载其它模块）
├── editor.vim      # 编辑区核心设置（缩进、行号、折叠等）
├── gui.vim         # 外观与界面设置（主题、颜色、光标等）
├── workspace.vim   # 工作区与 Netrw（侧边栏）相关配置
├── status.vim      # 自定义状态栏（statusline）
└── mappings.vim    # 快捷键映射（部分 VS Code 风格）
```

## 快速概览

- 默认在启动时打开左右分割：左侧为 Netrw 文件树，右侧为编辑区
- 保持模块化，便于按需修改单个功能文件
- 通过 `mappings.vim` 提供一些方便的键位映射（例如 `<C-s>` 保存）


好的，为了让这些 Netrw 快捷键和窗口切换命令清晰易读，我将它们整理成一个标准的 Markdown 表格。

---

## ⌨️ Netrw (文件浏览器) 及窗口切换快捷键

| 目标操作 | Netrw 快捷键 | 模式 | 步骤说明 |
| :--- | :--- | :--- | :--- |
| **打开文件** | **`Enter`** 或 **`o`** | Netrw 窗口 | 将光标移动到文件名上，然后按键。文件将在**右侧编辑区**打开。 |
| **返回父目录** | **`-`** (减号键) | Netrw 窗口 | 快速返回到当前目录的上一级目录。 |
| **进入子目录** | **`Enter`** | Netrw 窗口 | 将光标移动到目录名上，然后按 `Enter` 键。 |
| **刷新列表** | **`R`** (大写 R) | Netrw 窗口 | 如果外部文件有变动（创建/删除），使用此键刷新文件列表。 |
| **新建文件** | **`%`** (百分号键) | Netrw 窗口 | 提示您输入文件名，然后创建新文件并打开。 |
| **隐藏 Netrw** | **`<C-b>`** (Ctrl + B) | Normal | **(您的自定义映射)** 快速关闭左侧的 Netrw 窗口。 |
| **返回编辑区** | **`<C-l>`** (Ctrl + L) | Normal | **(您的自定义映射)** 快速将光标切换回右侧的代码编辑区。 |
| **切换到左侧窗口** | **`<C-w>h`** (Ctrl + W, h) | Normal | Vim 原生命令，切换到**左侧**窗口（Netrw）。 |
| **切换到右侧窗口** | **`<C-w>l`** (Ctrl + W, l) | Normal | Vim 原生命令，切换到**右侧**窗口（编辑区）。 |

***

> **💡 原生窗口切换提示:**
>
> `Ctrl + W` 后跟方向键（`h` 左, `j` 下, `k` 上, `l` 右）是 Vim 中最可靠的窗口切换方式，不会受到终端模拟器冲突的影响。例如，切换到左侧 Netrw 窗口的操作是：按住 $\mathbf{Ctrl}$ 和 $\mathbf{W}$，然后松开 $\mathbf{W}$，再按下 $\mathbf{h}$。

## 安装

下面给出 Linux、macOS 和 Windows (PowerShell) 的示例安装步骤。根据您使用的是 Vim 还是 Neovim，目标路径（`~/.vimrc` 或 `init.vim`）会有所不同。


### Linux (Bash / Zsh)

```bash
# 克隆仓库到用户目录下的配置文件夹
git clone <repo-url> ~/.vim_configs/codevim

# 方法 A：为 Vim（使用 .vimrc）
# 在 ~/.vimrc 中添加以下两行：
# let g:codevim_root = expand('"'"'~/.vim_configs/codevim'"'"')
# execute '"'"'source'"'"' g:codevim_root . '"'"'/init.vim'"'"'

# 方法 B：为 Neovim（使用 init.vim）
mkdir -p ~/.config/nvim
ln -s ~/.vim_configs/codevim/init.vim ~/.config/nvim/init.vim
# 或者在 ~/.config/nvim/init.vim 中添加：
# let g:codevim_root = expand('"'"'~/.vim_configs/codevim'"'"')
# execute '"'"'source'"'"' g:codevim_root . '"'"'/init.vim'"'"'
```

启动 Vim/Neovim 即可自动加载配置。

### macOS (Terminal: bash / zsh / fish)

macOS 的步骤与 Linux 基本相同：

```bash
# 克隆仓库
git clone <repo-url> ~/.vim_configs/codevim

# 推荐：在 ~/.vimrc 中添加以下两行：
# let g:codevim_root = expand('"'"'~/.vim_configs/codevim'"'"')
# execute '"'"'source'"'"' g:codevim_root . '"'"'/init.vim'"'"'
```

若使用 iTerm2 / Alacritty 等终端，确保终端使用 UTF-8 并且支持真彩色（truecolor）。

### Windows (PowerShell)

在 Windows 上可使用 PowerShell。示例使用用户主目录下的 `.vim_configs\codevim`：

```powershell
# 在 PowerShell 中克隆仓库到用户主目录
git clone <repo-url> $env:USERPROFILE\.vim_configs\codevim

# 方法 A：如果使用原生 Vim（在 Windows 上通常读取 _vimrc）
# 在 $env:USERPROFILE\_vimrc 中添加以下两行：
# let g:codevim_root = expand('"'"'$HOME\\.vim_configs\\codevim'"'"')
# execute '"'"'source'"'"' g:codevim_root . '"'"'/init.vim'"'"'

# 方法 B：如果使用 Neovim（init.vim 位于 %LOCALAPPDATA%\nvim\init.vim）
$dest = "$env:LOCALAPPDATA\nvim"
if (-not (Test-Path $dest)) { New-Item -ItemType Directory -Path $dest }
Copy-Item -Path "$env:USERPROFILE\.vim_configs\codevim\init.vim" -Destination "$dest\init.vim" -Force
```

然后重启 Vim/Neovim 以使配置生效。

### 额外说明

- 如果不想复制文件，可以在对应的配置文件中直接用 `let g:codevim_root` 并 `execute '"'"'source'"'"'` 指向仓库位置
- Windows 下符号链接需要管理员权限或开发者模式，若不方便可使用复制（`Copy-Item`）
- 克隆后如遇到插件相关功能，按需安装额外插件并修改相应模块

## 模块说明

- `init.vim` — 主引导器；验证 `g:codevim_root` 并按顺序 `source` 其余模块
- `editor.vim` — 编辑体验核心（缩进、行号、fold、search 等）
- `gui.vim` — 主题、颜色及 GUI/终端外观设置
- `workspace.vim` — Netrw 侧边栏、自动启动布局（侧栏宽度可配置 `g:netrw_winsize`）
- `status.vim` — 自定义 `statusline`，显示文件路径、编码、位置等信息
- `mappings.vim` — 快捷键映射（Leader 键、常用 Ctrl 快捷键等）

## 常见调整

- 修改侧边栏宽度：编辑 `workspace.vim` 中的 `let g:netrw_winsize = 25`
- 改变 Leader 键：编辑 `mappings.vim` 中的 `let mapleader = ","` 或改为 `<Space>`
- 切换主题：在 `gui.vim` 中修改 `colorscheme`

## 调试小贴士

- 若遇到 `E580: :endif without :if`，通常是因为 `autocmd` 使用多行脚本而未封装为函数；`workspace.vim` 已将启动逻辑改为单行 autocmd 或可改为函数调用以避免此类问题

## 贡献与许可

- 贡献：欢迎提交 PR，建议在改动前先提出 Issue 交流设计思路
- 许可：请在仓库根目录添加 LICENSE（例如 MIT）

## 联系方式

- 作者：Allen Zhang
- GitHub：https://github.com/AllenZhang45

---

文档已基于 `CodeVim` 目录下的模块化实现进行了整理。
