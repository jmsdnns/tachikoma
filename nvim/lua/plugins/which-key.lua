return {
  {
    "folke/which-key.nvim",
    opts_extend = { "spec" },
    opts = {
      default = {},
      spec = {
        mode = { "n" },
        { "<leader>t", group = "+terminal" },
      },
    },
  },
}
