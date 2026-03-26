# LazyNVIMRC

A modern, lightweight nvim configuration powered by LazyVim, paired with a minimal standalone NVIMRC.

You are currently on the `main` branch — full setup with LazyVim and its plugins.

## Requirements

- Neovim >= 0.11.2 (LuaJIT)
- Nerd Fonts >= 3.0
- Git >= 2.19.0
- C compiler (gcc, clang, msvc, etc)
- tree-sitter-cli (npm, cargo)
- ripgrep (For FZF-Lua)
- fd-find (Optional, but recommended)
- lazygit (Optional, but recommended)

## Install

### Linux / macOS

Clone the repository:

```bash
git clone https://github.com/cipherswami/lazynvimrc ~/.config/nvim
```

Just start nvim, it will bootstrap the required:

```bash
nvim
```

### Windows

Clone the repository:

```powershell
git clone https://github.com/cipherswami/lazynvimrc $env:LOCALAPPDATA\nvim
```

Just start nvim, it will bootstrap the required:

```bash
nvim
```

## Usage

This repository provides two configurations via branches. Switch to the one you need:

### Full Setup (NVIMRC + LazyVim)

```shell
git checkout main
```

### Minimal Setup (NVIMRC only)

```shell
git checkout onlyrc
```

## Uninstall

### Linux / macOS

Remove configuration and all Neovim data (plugins, cache, state, logs):

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim ~/.local/log/nvim
```

### Windows

Remove configuration and all Neovim data (plugins, cache, state):

```powershell
rm -r -fo $env:LOCALAPPDATA\nvim, $env:LOCALAPPDATA\nvim-data -ea 0
```

## Key Mappings

See [KEYMAPS.md](./KEYMAPS.md) for the full list of keybinds.

## License

This project is licensed under the MIT License — see the [LICENSE](./LICENSE) file for more details.

Feel free to open issues for bugs or suggestions, or submit pull requests to improve the configuration.
