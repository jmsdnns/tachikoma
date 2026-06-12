return {
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_dimmed",
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
      indent = { enabled = false },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        -- component_separators = { "|", "|" },
        -- section_separators = { "|", "|" },
        component_separators = { left = "\\", right = "/" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        -- truncate git branch name if over 30 characters
        lualine_b = {
          {
            "branch",
            fmt = function(str)
              if vim.api.nvim_strwidth(str) > 30 then
                return ("%s…"):format(str:sub(1, 29))
              end

              return str
            end,
          },
        },
        -- truncate filename if over 40 characters
        lualine_c = {
          {
            "filename",
            file_status = true,
            newfile_status = true,
            path = 4,
            fmt = function(str)
              if vim.api.nvim_strwidth(str) > 40 then
                return ("…%s"):format(str:sub(-39))
              end

              return str
            end,
          },
        },
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = function(_, opts)
      opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
        always_show_bufferline = true,
        themable = true,
        separator_style = { "", "" },
        indicator = { style = "none" },
        show_tab_indicators = false,
      })

      local bg = "#22272E"
      local bg_visible = "#22272E"
      local bg_selected = "#2C3E56"
      local fg = "#3D77BE"
      local fg_visible = "#3D77BE"
      local fg_selected = "#539BF5"
      opts.highlights = {
        background = { bg = bg, fg = fg },
        fill = { bg = bg, fg = fg },
        trunc_marker = { bg = bg, fg = fg },
        offset_separator = { bg = bg, fg = fg },

        buffer = { bg = bg, fg = fg },
        buffer_visible = { bg = bg_visible, fg = fg_visible },
        buffer_selected = { bg = bg_selected, fg = fg_selected },
        modified = { bg = bg, fg = fg },
        modified_visible = { bg = bg_visible, fg = fg_visible },
        modified_selected = { bg = bg_selected, fg = fg_selected },
        separator = { bg = bg, fg = fg },
        separator_visible = { bg = bg_visible, fg = fg_visible },
        separator_selected = { bg = bg_selected, fg = fg_selected },
        numbers = { bg = bg, fg = fg },
        numbers_visible = { bg = bg_visible, fg = fg_visible },
        numbers_selected = { bg = bg_selected, fg = fg_selected },
        close_button = { bg = bg, fg = fg },
        close_button_visible = { bg = bg_visible, fg = fg_visible },
        close_button_selected = { bg = bg_selected, fg = fg_selected },
        diagnostic = { bg = bg, fg = fg },
        diagnostic_visible = { bg = bg_visible, fg = fg_visible },
        diagnostic_selected = { bg = bg_selected, fg = fg_selected },

        indicator_visible = { bg = bg_visible, fg = fg_visible },
        indicator_selected = { bg = bg_selected, fg = fg_selected },

        group_separator = { bg = bg, fg = fg },
        group_label = { bg = bg, fg = fg },
        tab = { bg = bg, fg = fg },
        tab_selected = { bg = bg, fg = fg },
        tab_separator = { bg = bg, fg = fg },
        tab_separator_selected = { bg = bg, fg = fg },
        tab_close = { bg = bg, fg = fg },
        duplicate = { bg = bg, fg = fg },
        duplicate_visible = { bg = bg_visible, fg = fg_visible },
        duplicate_selected = { bg = bg_selected, fg = fg_selected },
      }

      -- tabs with diagnostics (filename + icon/count) keep the same palette
      for _, severity in ipairs({ "error", "warning", "info", "hint" }) do
        opts.highlights[severity] = { bg = bg, fg = fg }
        opts.highlights[severity .. "_visible"] = { bg = bg_visible, fg = fg_visible }
        opts.highlights[severity .. "_selected"] = { bg = bg_selected, fg = fg_selected }
        opts.highlights[severity .. "_diagnostic"] = { bg = bg, fg = fg }
        opts.highlights[severity .. "_diagnostic_visible"] = { bg = bg_visible, fg = fg_visible }
        opts.highlights[severity .. "_diagnostic_selected"] = { bg = bg_selected, fg = fg_selected }
      end
    end,
  },
}
