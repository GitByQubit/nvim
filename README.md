onfiguration for Basic Development

![Neovim Logo](https://neovim.io/logos/neovim-mark-flat.png)

This repository contains my Neovim configuration optimized for basic development with modern plugins and tools. The configuration is located in `~/.config/nvim/` and uses `lazy.nvim` as the plugin manager for fast and efficient package management.

## ✨ Features

- **Plugin management** with [lazy.nvim](https://github.com/folke/lazy.nvim)
- **File navigation** with [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- **Fuzzy finding** with [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- **Language Server Protocol** with [lsp-config](https://github.com/neovim/nvim-lspconfig)
- **Auto-completion** with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- **Modern UI** with [noice.nvim](https://github.com/folke/noice.nvim)
- **Status line** with [lualine]
(https://github.com/nvim-lualine/lualine.nvim)
- **Dashboard** with [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- **Tab/buffer management** with [bufferline](https://github.com/akinsho/bufferline.nvim)
- **Syntax highlighting** with [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **Package management** with [Mason](https://github.com/williamboman/mason.nvim)

## 📦 Plugin List

```lua
return {
  -- Plugin manager
  {
    "folke/lazy.nvim",
    lazy = false,
  },

  -- File explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
  },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
  },

  -- Auto-completion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
    },
  },

  -- Modern UI
  { "folke/noice.nvim", dependencies = { "MunifTanjim/nui.nvim" } },

  -- Status line
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- Dashboard
  { "nvimdev/dashboard-nvim" },

  -- Buffer line
  { "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- Syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- Package manager
  { "williamboman/mason.nvim" },
}
```

## 🛠️ Installation

1. Make sure you have Neovim (v0.9+) installed
2. Clone this repository to your Neovim config directory:

```bash
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
```

3. Start Neovim and let lazy.nvim install all plugins:

```bash
nvim +Lazy sync
```

4. Install language servers via Mason:

```vim
:Mason
```

## ⚙️ Keybindings

| Keybinding | Action |
|------------|--------|
| `<leader>e` | Toggle Neo-tree file explorer |
| `<leader>ff` | Find files with Telescope |
| `<leader>fg` | Live grep with Telescope |
| `gd` | Go to definition (LSP) |
| `K` | Show documentation (LSP) |
| `<leader>rn` | Rename symbol (LSP) |
| `<leader>ca` | Code actions (LSP) |

## 🌟 Additional Features

- **Automatic syntax highlighting** for all supported languages
- **LSP integration** for code completion and diagnostics
- **Beautiful UI** with icons and smooth animations
- **Fast startup time** thanks to lazy.nvim

## 📝 License

MIT License - Feel free to use and modify this configuration for your own needs.
