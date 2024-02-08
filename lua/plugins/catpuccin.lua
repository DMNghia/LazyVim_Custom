return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 999,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        background = {
          light = "latte",
          dark = "mocha",
        },
        show_end_of_buffer = false,
        term_colors = false,
        no_italic = false,
        no_bold = false,
        styles = {
          comments = { "italic" },
          conditionals = {},
          functions = { "italic" },
        },
        integrations = {
          aerial = false,
          barbar = false,
          barbecue = {
            dim_dirname = true,
          },
          beacon = false,
          cmp = true,
          coc_nvim = false,
          dap = true,
          indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
          },
          dashboard = true,
          fern = false,
          fidget = false,
          gitgutter = false,
          gitsigns = true,
          harpoon = false,
          hop = false,
          illuminate = true,
          leap = false,
          lightspeed = false,
          lsp_saga = false,
          lsp_trouble = true,
          markdown = true,
          mason = true,
          mini = true,
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "underline" },
              hints = { "underline" },
              warnings = { "underline" },
              information = { "underline" },
            },
            inlay_hints = {
              background = true,
            },
          },
          navic = true,
          neogit = true,
          neotest = false,
          neotree = true,
          noice = true,
          notify = true,
          nvimtree = true,
          overseer = false,
          pounce = false,
          rainbow_delimiters = true,
          semantic_tokens = true,
          symbols_outline = true,
          telekasten = false,
          telescope = true,
          treesitter = true,
          treesitter_context = false,
          ts_rainbow = true,
          vim_sneak = false,
          vimwiki = false,
          which_key = false,
        },
        custom_highlights = function()
          return {
            PmenuSel = { bg = "#282C34", fg = "NONE" },
            Pmenu = { fg = "#C5CDD9", bg = "#22252A" },

            CmpItemAbbrDeprecated = { fg = "#7E8294", bg = "NONE", strikethrough = true },
            CmpItemAbbrMatch = { fg = "#82AAFF", bg = "NONE", bold = true },
            CmpItemAbbrMatchFuzzy = { fg = "#82AAFF", bg = "NONE", bold = true },
            CmpItemMenu = { fg = "#C792EA", bg = "NONE", italic = true },

            CmpItemKindField = { fg = "#EED8DA", bg = "#B5585F" },
            CmpItemKindProperty = { fg = "#EED8DA", bg = "#B5585F" },
            CmpItemKindEvent = { fg = "#EED8DA", bg = "#B5585F" },

            CmpItemKindText = { fg = "#C3E88D", bg = "#9FBD73" },
            CmpItemKindEnum = { fg = "#C3E88D", bg = "#9FBD73" },
            CmpItemKindKeyword = { fg = "#C3E88D", bg = "#9FBD73" },

            CmpItemKindConstant = { fg = "#FFE082", bg = "#D4BB6C" },
            CmpItemKindConstructor = { fg = "#FFE082", bg = "#D4BB6C" },
            CmpItemKindReference = { fg = "#FFE082", bg = "#D4BB6C" },

            CmpItemKindFunction = { fg = "#EADFF0", bg = "#A377BF" },
            CmpItemKindStruct = { fg = "#EADFF0", bg = "#A377BF" },
            CmpItemKindClass = { fg = "#EADFF0", bg = "#A377BF" },
            CmpItemKindModule = { fg = "#EADFF0", bg = "#A377BF" },
            CmpItemKindOperator = { fg = "#EADFF0", bg = "#A377BF" },

            CmpItemKindVariable = { fg = "#C5CDD9", bg = "#7E8294" },
            CmpItemKindFile = { fg = "#C5CDD9", bg = "#7E8294" },

            CmpItemKindUnit = { fg = "#F5EBD9", bg = "#D4A959" },
            CmpItemKindSnippet = { fg = "#F5EBD9", bg = "#D4A959" },
            CmpItemKindFolder = { fg = "#F5EBD9", bg = "#D4A959" },

            CmpItemKindMethod = { fg = "#DDE5F5", bg = "#6C8ED4" },
            CmpItemKindValue = { fg = "#DDE5F5", bg = "#6C8ED4" },
            CmpItemKindEnumMember = { fg = "#DDE5F5", bg = "#6C8ED4" },

            CmpItemKindInterface = { fg = "#D8EEEB", bg = "#58B5A8" },
            CmpItemKindColor = { fg = "#D8EEEB", bg = "#58B5A8" },
            CmpItemKindTypeParameter = { fg = "#D8EEEB", bg = "#58B5A8" },
          }
        end,
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
