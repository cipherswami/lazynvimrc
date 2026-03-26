# Key Mappings

## Core

Leader key: `<SPACE>`

### General

| Key          | Action                 |
| ------------ | ---------------------- |
| `<Leader>e`  | Open file explorer     |
| `<Esc><Esc>` | Clear search highlight |
| `<C-s>`      | Save current buffer    |
| `<C-d>`      | Smooth Scroll down     |
| `<C-u>`      | Smooth Scroll up       |

### Window Management

| Key          | Action              |
| ------------ | ------------------- |
| `<Leader>wv` | Vertical split      |
| `<Leader>ws` | Horizontal split    |
| `<Leader>wq` | Close window        |
| `<Leader>wo` | Close other windows |
| `<Leader>qq` | Quit all            |

### Buffer Navigation

| Key          | Action              |
| ------------ | ------------------- |
| `<S-h>`      | Previous buffer     |
| `<S-l>`      | Next buffer         |
| `<Leader>bd` | Delete buffer       |
| `<Leader>bo` | Close other buffers |

### Search & Navigation

| Key               | Action                     |
| ----------------- | -------------------------- |
| `<Leader><space>` | Find a file                |
| `<Leader>/`       | GREP for word              |
| `<Leader>sw`      | GREP for word under cursor |
| `<Leader>s/`      | List Search history        |
| `<Leader>:`       | List Command history       |
| `<Leader>,`       | List open buffers          |
| `<Leader>sj`      | Show Jump list             |
| `<Leader>sm`      | Show Marks list            |
| `<Leader>s"`      | Show Registers list        |

## Plugins

For the full, always-updated LazyVim keymaps visit [LazyVim](https://lazyvim.github.io/keymaps), below are some most used keybinds:

### File / Navigation

| Key               | Action          |
| ----------------- | --------------- |
| `<leader><space>` | Find files      |
| `<leader>/`       | Live grep       |
| `<leader>:`       | Command history |
| `<leader>,`       | Buffers         |
| `<leader>s/`      | Recent files    |
| `<leader>e`       | Explorer toggle |
| `<leader>E`       | Focus explorer  |

### Git

| Key          | Action       |
| ------------ | ------------ |
| `<leader>gg` | LazyGit      |
| `]h`         | Next hunk    |
| `[h`         | Prev hunk    |
| `<leader>hs` | Stage hunk   |
| `<leader>hr` | Reset hunk   |
| `<leader>hp` | Preview hunk |
| `<leader>gb` | Blame line   |

### Buffers / Windows

| Key               | Action            |
| ----------------- | ----------------- |
| `<leader>bb`      | Switch buffer     |
| `<leader>bp`      | Pin buffer        |
| `<leader>bP`      | Delete non-pinned |
| `<leader>bd`      | Delete buffer     |
| `<S-h>` / `<S-l>` | Prev/Next buffer  |

### Search UX

| Key          | Action            |
| ------------ | ----------------- |
| `<leader>sw` | Word under cursor |
| `<leader>sk` | Keymaps           |
| `<leader>sc` | Commands          |
| `<leader>sh` | Help tags         |

### Editing

| Key           | Action             |
| ------------- | ------------------ |
| `gcc`         | Comment line       |
| `gc` (visual) | Comment selection  |
| `<leader>ur`  | Redo               |
| `<leader>ui`  | Toggle inlay hints |
| `<leader>us`  | Toggle spell       |
| `<leader>uw`  | Toggle wrap        |

### Terminal

| Key          | Action            |
| ------------ | ----------------- |
| `<C-/>`      | Toggle terminal   |
| `<leader>ft` | Floating terminal |

### LSP

| Key          | Action           |
| ------------ | ---------------- |
| `gd`         | Go to definition |
| `gr`         | References       |
| `gi`         | Implementation   |
| `gD`         | Declaration      |
| `K`          | Hover docs       |
| `<leader>rn` | Rename           |
| `<leader>ca` | Code actions     |
| `<leader>cf` | Format           |

### Diagnostics

| Key          | Action                |
| ------------ | --------------------- |
| `[d`         | Prev diagnostic       |
| `]d`         | Next diagnostic       |
| `<leader>cd` | Line diagnostics      |
| `<leader>xx` | Workspace diagnostics |
| `<leader>xX` | Buffer diagnostics    |

### Misc

| Key          | Action          |
| ------------ | --------------- |
| `<leader>qq` | Quit all        |
| `<leader>qs` | Restore session |
| `<leader>ql` | Session list    |
| `<leader>fn` | New file        |
