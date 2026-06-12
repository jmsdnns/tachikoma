return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- Don't preselect anything; Enter only confirms an explicitly selected item
      opts.completion = vim.tbl_deep_extend("force", opts.completion or {}, {
        list = { selection = { preselect = false, auto_insert = false } },
      })
      opts.keymap = vim.tbl_deep_extend("force", opts.keymap or {}, {
        preset = "enter",
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
      })

      -- No snippet or database completions
      local unwanted = { snippets = true, dadbod = true }
      opts.sources = opts.sources or {}
      opts.sources.default = vim.tbl_filter(function(source)
        return not unwanted[source]
      end, opts.sources.default or {})
      opts.sources.providers = vim.tbl_deep_extend("force", opts.sources.providers or {}, {
        buffer = { max_items = 10, min_keyword_length = 3 },
      })
    end,
  },
  { "rafamadriz/friendly-snippets", enabled = false },

  -- No autopairs
  { "nvim-mini/mini.pairs", enabled = false },

  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        -- don't let any LSP server offer snippet completions
        ["*"] = {
          capabilities = {
            textDocument = {
              completion = {
                completionItem = { snippetSupport = false },
              },
            },
          },
        },
      },
    },
  },
}
