# Neovim Configuration

## Introduction
This is my personal Neovim configuration focused on providing a modern, efficient, and feature-rich development environment. The configuration includes carefully chosen plugins, sensible defaults, and ergonomic keybindings to enhance productivity.

Key features:
- Modular configuration structure
- Lazy plugin management
- LSP support with autocomplete
- Fuzzy finding with Telescope
- Git integration with Fugitive
- Fast file navigation with Harpoon
- Modern themes and styling
- Efficient keybindings

## Prerequisites
- Neovim >= 0.9.0
- Git
- A Nerd Font (for icons)
- ripgrep (for Telescope grep)
- Node.js (for LSP servers)

## Installation

1. Backup your existing Neovim configuration:
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. Clone this repository:
```bash
git clone <repository-url> ~/.config/nvim
```

3. Start Neovim:
```bash
nvim
```
The configuration will automatically install all plugins on first launch.

## Configuration Structure

The configuration is organized under `~/.config/nvim/` with the following structure:
```
.
├── init.lua
└── lua/
    └── nofpowells/
        ├── init.lua
        ├── remap.lua
        ├── set.lua
        └── lazy/
            └── [plugin-configs].lua
```

## General Settings

### Core Settings
```lua
vim.g.mapleader = " "                    -- Set leader key to space
vim.opt.nu = true                        -- Enable line numbers
vim.opt.relativenumber = true            -- Enable relative line numbers
vim.opt.tabstop = 4                      -- Tab width
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true                 -- Use spaces instead of tabs
vim.opt.smartindent = true               -- Enable smart indenting
vim.opt.wrap = false                     -- Disable line wrapping
vim.opt.swapfile = false                 -- No swap files
vim.opt.backup = false                   -- No backup files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true                  -- Persistent undo history
vim.opt.hlsearch = true                  -- Highlight search results
vim.opt.incsearch = true                 -- Incremental search
vim.opt.scrolloff = 8                    -- Keep 8 lines visible when scrolling
vim.opt.colorcolumn = "80"               -- Show column marker
```

## Key Mappings

### File Navigation
| Keybind | Action |
|---------|--------|
| `<leader>pv` | Open file explorer |
| `<leader>pf` | Find files (Telescope) |
| `<C-p>` | Git files |
| `<leader>ps` | Grep search |
| `<leader>pws` | Search word under cursor |

### LSP Bindings
| Keybind | Action |
|---------|--------|
| `gd` | Go to definition |
| `K` | Hover documentation |
| `<leader>vws` | Workspace symbol |
| `<leader>vd` | Show diagnostics |
| `<leader>vca` | Code action |
| `<leader>vrr` | Show references |
| `<leader>vrn` | Rename |
| `<leader>f` | Format buffer |
| `<C-n>` | Next completion item |
| `<C-p>` | Previous completion item |

### Git Operations
| Keybind | Action |
|---------|--------|
| `<leader>gs` | Git status |
| `<leader>p` | Git push (in fugitive buffer) |
| `<leader>P` | Git pull --rebase |
| `gu` | Diffget from left |
| `gh` | Diffget from right |

### Git Signs
| Keybind | Action |
|---------|--------|
| `]c` | Next Git hunk |
| `[c` | Previous Git hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hu` | Undo stage hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hR` | Reset buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>tb` | Toggle line blame |
| `<leader>hd` | Diff against index |
| `<leader>td` | Toggle deleted |
| `ih` | Select git hunk (visual) |

### Harpoon Navigation
| Keybind | Action |
|---------|--------|
| `<leader>a` | Add file to harpoon |
| `<leader>A` | Prepend file to harpoon |
| `<C-e>` | Toggle quick menu |
| `<C-h/j/k/l>` | Jump to harpoon marks 1-4 |

### Movement and Editing
| Keybind | Action |
|---------|--------|
| `J/K` | Move selected lines up/down (visual mode) |
| `<C-d>/<C-u>` | Scroll down/up (centered) |
| `<leader>y` | Yank to system clipboard |
| `<leader>d` | Delete without copying |
| `<leader>s` | Search and replace word under cursor |
| `<leader>s` | Search and replace word under cursor |
| `<leader>x` | Make current file executable |
| `Q` | Start/stop macro recording |
### Utility Features
| Keybind | Action |
|---------|--------|
| `<leader>u` | Toggle undotree |
| `<leader>tt` | Toggle trouble |
| `[t/]t` | Navigate trouble list |
| `<leader>zz` | Toggle Zen mode (90 columns) |

### CopilotChat Commands
| Keybind | Action |
|---------|--------|
| `<leader>ap` | Show prompt actions with telescope |
| `<leader>ae` | Explain code |
| `<leader>at` | Generate tests |
| `<leader>ar` | Review code |
| `<leader>aR` | Refactor code |
| `<leader>an` | Suggest better naming |
| `<leader>av` | Open chat in vertical split |
| `<leader>ax` | Inline chat |
| `<leader>ai` | Ask custom input |
| `<leader>am` | Generate commit message |
| `<leader>aq` | Quick chat |
| `<leader>af` | Fix current issue |
| `<leader>al` | Clear chat history |
| `<leader>a?` | Select models |
| `<leader>aa` | Select agents |

## Plugin Configurations

### Key Plugins
- **Telescope**: Fuzzy finder for files, buffers, and more
- **LSP**: Language Server Protocol support with auto-completion
- **Treesitter**: Advanced syntax highlighting
- **Harpoon**: Quick file navigation
- **Fugitive**: Git integration
- **Undotree**: Visual undo history
- **Rose-pine**: Modern colorscheme

### Additional Features
- Auto-highlight on yank
- Auto-remove trailing whitespace on save
- Transparent background support
- Cloak plugin for hiding sensitive information
- Snippet support with LuaSnip
- Multiple colorscheme options

## Customization
To customize this configuration:
1. Modify general settings in `lua/nofpowells/set.lua`
2. Add/modify keymaps in `lua/nofpowells/remap.lua`
3. Configure plugins in `lua/nofpowells/lazy/`
4. Add custom functions in `lua/nofpowells/init.lua`

## Troubleshooting
- If plugins fail to install, run `:Lazy sync` in Neovim
- For LSP issues, check `:LspInfo` and ensure language servers are installed
- For syntax highlighting issues, run `:TSUpdate`

## Updating
1. Pull the latest changes: `git pull`
2. Inside Neovim, run `:Lazy sync`
3. Restart Neovim

## Contributing
Feel free to submit issues and pull requests for improvements or bug fixes.

