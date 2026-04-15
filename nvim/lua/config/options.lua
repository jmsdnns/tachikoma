-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set

-- Disorienting
vim.opt.relativenumber = false

-- Half tab
vim.opt.tabstop = 4

-- Tabs as spaces
vim.opt.expandtab = true

-- Square cursors
vim.opt.guicursor = "n-v-i-c:block-Cursor"

-- Python
-- vim.g.lazyvim_python_lsp = "pyright"
-- vim.g.lazyvim_python_ruff = "ruff"

vim.g.lazyvim_rust_diagnostics = "rust-analyzer"
