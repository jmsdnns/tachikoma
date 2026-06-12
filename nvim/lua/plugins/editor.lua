return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            follow_file = true,
            layout = {
              layout = {
                width = 30,
              },
            },
          },
          files = {
            exclude = { "node_modules", "target", "venv" },
          },
          grep = {
            exclude = { "node_modules", "target", "venv" },
          },
        },
      },
    },
  },
}
