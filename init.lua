-- =============================================================================
-- File   : init.lua
-- Brief  : NVIMRC tuned with Sensible defaults and LazyVim-inspired keybinds.
-- Author : Aravind Potluri <aravindswami135@gmail.com>
-- =============================================================================

-- =============================================================================
-- USER INTERFACE
-- =============================================================================

vim.opt.termguicolors = true                -- Enable 24-bit RGB color
vim.opt.number = true                       -- Show absolute line numbers
vim.opt.relativenumber = false              -- Disable relative line numbers
vim.opt.cursorline = true                   -- Show cursor line always
vim.opt.wrap = false                        -- Disable soft line wrapping
vim.opt.splitright = true                   -- Open vertical splits to the right
vim.opt.splitbelow = true                   -- Open horizontal splits below
vim.opt.laststatus = 3                      -- Single global statusline
vim.opt.scrolloff = 5                       -- Keep 5 lines above/below cursor
vim.opt.mouse = "a"                         -- Enable mouse in all modes
vim.opt.clipboard = "unnamedplus"           -- Use system clipboard
vim.opt.shortmess:append("a")               -- Use abbreviated messages
vim.opt.shortmess:append("c")               -- Suppress inc-completion messages

-- =============================================================================
-- EDITING BEHAVIOR
-- =============================================================================

vim.opt.expandtab = true                    -- Insert spaces instead of tabs
vim.opt.tabstop = 2                         -- Display tabs as 2 spaces
vim.opt.softtabstop = 2                     -- Insert 2 spaces per Tab keypress
vim.opt.shiftwidth = 2                      -- 2 spaces per indentation level

-- =============================================================================
-- SEARCH
-- =============================================================================

local grepprg = "grep -HRIn --exclude-dir=.git --exclude-dir=build $*"

vim.opt.ignorecase = true                   -- Case-insensitive search by default
vim.opt.smartcase = true                    -- Case-sensitive if pattern has uppercase
vim.opt.grepprg = grepprg                   -- Recursive, numbered, case-insensitive grep
vim.opt.grepformat = "%f:%l:%m"             -- GREP's quick fix format file, line, msg
vim.opt.path:append("**")                   -- Recurse subdirectories for :find
vim.opt.wildignore:append({
  "**/.git/**",
  "**/build/**",
})                                          -- Exclude non-source directories from search

-- =============================================================================
-- PERFORMANCE
-- =============================================================================

vim.opt.timeout     = true                  -- Enable timeout for key sequences
vim.opt.timeoutlen  = 500                   -- Wait 500ms for a mapped sequence
vim.opt.updatetime  = 500                   -- Trigger CursorHold after 500ms

-- =============================================================================
-- AUTOCOMMANDS
-- =============================================================================

local UserAutoCmds = vim.api.nvim_create_augroup("UserAutoCmds", { clear = true })

-- Open QuickFix after :grep
vim.api.nvim_create_autocmd("QuickFixCmdPost", {
  group   = UserAutoCmds,
  pattern = "grep",
  command = "copen",
})

-- =============================================================================
-- KEY MAPPINGS
-- =============================================================================

vim.g.mapleader = ' '

local map = vim.keymap.set

-- General -----------------------------------------------------------------
map("n", "<C-s>",      "<Cmd>w<CR>",        { silent = true, desc = "Save file" })
map("n", "<Esc><Esc>", "<Cmd>noh<CR><Esc>", { silent = true, desc = "Clear search highlights" })
map("n", "<Leader>e",  "<Cmd>Ex<CR>",        { silent = true, desc = "Open file explorer (netrw)" })
map("n", "<C-d>",      "5<C-e>5j",           { silent = true, desc = "Scroll down (5 lines)" })
map("n", "<C-u>",      "5<C-y>5k",           { silent = true, desc = "Scroll up (5 lines)" })
map("x", ">",          ">gv",                { silent = true, desc = "Indent and reselect" })
map("x", "<",          "<gv",                { silent = true, desc = "Outdent and reselect" })

-- Terminal ----------------------------------------------------------------
map("n", "<C-_>", "<Cmd>bel split | terminal<CR>", { silent = true, desc = "Open terminal split (bottom)" })
map("t", "<C-_>", "<C-\\><C-n><Cmd>bd!<CR>",       { silent = true, desc = "Exit terminal and close buffer" })

-- Window Management -------------------------------------------------------
map("n", "<Leader>wv", "<Cmd>vs<CR>",   { silent = true, desc = "Vertical split" })
map("n", "<Leader>ws", "<Cmd>sp<CR>",   { silent = true, desc = "Horizontal split" })
map("n", "<Leader>wq", "<Cmd>q<CR>",    { silent = true, desc = "Close current window" })
map("n", "<Leader>qq", "<Cmd>qa!<CR>",  { silent = true, desc = "Force-quit all windows" })
map("n", "<Leader>wo", "<Cmd>only<CR>", { silent = true, desc = "Close other windows" })

-- Buffer Navigation -------------------------------------------------------
map("n", "<S-h>",      "<Cmd>bp<CR>",           { silent = true, desc = "Previous buffer" })
map("n", "<S-l>",      "<Cmd>bn<CR>",           { silent = true, desc = "Next buffer" })
map("n", "<Leader>bd", "<Cmd>bd<CR>",           { silent = true, desc = "Delete current buffer" })
map("n", "<Leader>bo", "<Cmd>up|%bd|e#|bd#<CR><C-l>", { silent = true, desc = "Close other buffers" })

-- Search & Navigation -----------------------------------------------------
map("n", "<Leader><Space>", ":find ", { silent = false, desc = "Find file" })
map("n", "<Leader>/",       ":grep ", { silent = false, desc = "Grep" })
map("n", "<Leader>sw", "<Cmd>grep! <cword><CR>", { silent = true, desc = "Grep word under cursor" })
map("n", "]q", "<Cmd>cnext<CR>",     { silent = true, desc = "Next quickfix item" })
map("n", "[q", "<Cmd>cprevious<CR>", { silent = true, desc = "Previous quickfix item" })

-- Lists & Registers -------------------------------------------------------
map("n", "<Leader>,",  "<Cmd>buffers<CR>",  { silent = true, desc = "List buffers" })
map("n", "<Leader>:",  "<Cmd>history<CR>",   { silent = true, desc = "Command history" })
map("n", "<Leader>s/", "<Cmd>history /<CR>", { silent = true, desc = "Search history" })
map('n', '<Leader>s"', "<Cmd>registers<CR>", { silent = true, desc = "Show registers" })
map("n", "<Leader>sj", "<Cmd>jumps<CR>",     { silent = true, desc = "Jump list" })
map("n", "<Leader>sm", "<Cmd>marks<CR>",     { silent = true, desc = "Marks list" })
