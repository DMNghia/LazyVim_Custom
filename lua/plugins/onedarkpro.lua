return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    config = function()
      local base16 = {
        base00 = "#1e222a",
        base01 = "#353b45",
        base02 = "#3e4451",
        base03 = "#545862",
        base04 = "#565c64",
        base05 = "#abb2bf",
        base06 = "#b6bdca",
        base07 = "#c8ccd4",
        base08 = "#e06c75",
        base09 = "#d19a66",
        base0A = "#e5c07b",
        base0B = "#98c379",
        base0C = "#56b6c2",
        base0D = "#61afef",
        base0E = "#c678dd",
        base0F = "#be5046",
      }
      local colors = {
        white = "#abb2bf",
        darker_black = "#1b1f27",
        black = "#1e222a", --  nvim bg
        black2 = "#252931",
        one_bg = "#282c34", -- real bg of onedark
        one_bg2 = "#353b45",
        one_bg3 = "#373b43",
        grey = "#42464e",
        grey_fg = "#565c64",
        grey_fg2 = "#6f737b",
        light_grey = "#6f737b",
        red = "#e06c75",
        baby_pink = "#DE8C92",
        pink = "#ff75a0",
        line = "#31353d", -- for lines like vertsplit
        green = "#98c379",
        vibrant_green = "#7eca9c",
        nord_blue = "#81A1C1",
        blue = "#61afef",
        yellow = "#e7c787",
        sun = "#EBCB8B",
        purple = "#de98fd",
        dark_purple = "#c882e7",
        teal = "#519ABA",
        orange = "#fca2aa",
        cyan = "#a3b8ef",
        statusline_bg = "#22262e",
        lightbg = "#2d3139",
        pmenu_bg = "#61afef",
        folder_bg = "#61afef",
      }
      require("onedarkpro").setup({
        colors = colors, -- Override default colors or create your own
        highlights = {
          PmenuSel = { bg = colors.vibrant_green, fg = colors.vibrant_green, bold = true },
          Pmenu = { fg = colors.white, bg = colors.darker_black },
          CmpItemAbbr = { fg = colors.white },
          CmpItemAbbrMatch = { fg = colors.blue, bold = true },
          CmpSel = { fg = colors.vibrant_green, bold = true },
          CmpItemMenu = { fg = "#6f737b", italic = true },
          CmpPmenu = {
            bg = "#252931",
          },

          CmpDoc = { bg = colors.darker_black },
          CmpDocBorder = { fg = colors.darker_black, bg = colors.darker_black },
          CmpItemKindConstant = {
            fg = colors.black,
            bg = base16.base09,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base09, -3),
            bold = true,
          },
          CmpItemKindFunction = {
            fg = colors.black,
            bg = base16.base0D,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base0D, -3),
            bold = true,
          },
          CmpItemKindIdentifier = {
            fg = colors.black,
            bg = base16.base08,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base08, -3),
            bold = true,
          },
          CmpItemKindField = {
            fg = colors.black,
            bg = base16.base08,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base08, -3),
            bold = true,
          },
          CmpItemKindVariable = {
            fg = colors.black,
            bg = base16.base0E,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base0E, -3),
            bold = true,
          },
          CmpItemKindSnippet = {
            fg = colors.black,
            bg = "#e06c75",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#e06c75", -3),
            bold = true,
          },
          CmpItemKindText = {
            fg = colors.black,
            bg = base16.base0B,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base0B, -3),
            bold = true,
          },
          CmpItemKindStructure = {
            fg = colors.black,
            bg = base16.base0E,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base0E, -3),
            bold = true,
          },
          CmpItemKindType = {
            fg = colors.black,
            bg = base16.base0A,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base0A, -3),
            bold = true,
          },
          CmpItemKindKeyword = {
            fg = colors.black,
            bg = base16.base07,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base07, -3),
            bold = true,
          },
          CmpItemKindMethod = {
            fg = colors.black,
            bg = base16.base0D,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base0D, -3),
            bold = true,
          },
          CmpItemKindConstructor = {
            fg = colors.black,
            bg = "#61afef",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#61afef", -3),
            bold = true,
          },
          CmpItemKindFolder = {
            fg = colors.black,
            bg = base16.base07,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base07, -3),
            bold = true,
          },
          CmpItemKindModule = {
            fg = colors.black,
            bg = base16.base0A,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base0A, -3),
            bold = true,
          },
          CmpItemKindProperty = {
            fg = colors.black,
            bg = base16.base08,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base08, -3),
            bold = true,
          },
          CmpItemKindEnum = {
            fg = colors.black,
            bg = "#61afef",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#61afef", -3),
            bold = true,
          },
          CmpItemKindUnit = {
            fg = colors.black,
            bg = base16.base0E,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base0E, -3),
            bold = true,
          },
          CmpItemKindClass = {
            fg = colors.black,
            bg = "#519ABA",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#519ABA", -3),
            bold = true,
          },
          CmpItemKindFile = {
            fg = colors.black,
            bg = base16.base07,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base07, -3),
            bold = true,
          },
          CmpItemKindInterface = {
            fg = colors.black,
            bg = "#98c379",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#98c379", -3),
            bold = true,
          },
          CmpItemKindColor = {
            fg = colors.black,
            bg = "#abb2bf",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#abb2bf", -3),
            bold = true,
          },
          CmpItemKindReference = {
            fg = colors.black,
            bg = base16.base05,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base05, -3),
            bold = true,
          },
          CmpItemKindEnumMember = {
            fg = colors.black,
            bg = "#de98fd",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#de98fd", -3),
            bold = true,
          },
          CmpItemKindStruct = {
            fg = colors.black,
            bg = base16.base0E,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base0E, -3),
            bold = true,
          },
          CmpItemKindValue = {
            fg = colors.black,
            bg = "#a3b8ef",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#a3b8ef", -3),
            bold = true,
          },
          CmpItemKindEvent = {
            fg = colors.black,
            bg = "#e7c787",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#e7c787", -3),
            bold = true,
          },
          CmpItemKindOperator = {
            fg = colors.black,
            bg = base16.base05,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base05, -3),
            bold = true,
          },
          CmpItemKindTypeParameter = {
            fg = colors.black,
            bg = base16.base08,
            -- bg = require("plugins.user.color_utils").change_hex_lightness(base16.base08, -3),
            bold = true,
          },
          CmpItemKindCopilot = {
            fg = colors.black,
            bg = "#98c379",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#98c379", -3),
            bold = true,
          },
          CmpItemKindCodeium = {
            fg = colors.black,
            bg = "#7eca9c",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#7eca9c", -3),
            bold = true,
          },
          CmpItemKindTabNine = {
            fg = colors.black,
            bg = "#DE8C92",
            -- bg = require("plugins.user.color_utils").change_hex_lightness("#DE8C92", -3),
            bold = true,
          },
          -- PmenuSel = { bg = "#282C34", fg = "NONE" },
          -- Pmenu = { fg = "#C5CDD9", bg = "#22252A" },
          --
          -- CmpItemAbbrDeprecated = { fg = "#7E8294", bg = "NONE", strikethrough = true },
          -- CmpItemAbbrMatch = { fg = "#82AAFF", bg = "NONE", bold = true },
          -- CmpItemAbbrMatchFuzzy = { fg = "#82AAFF", bg = "NONE", bold = true },
          -- CmpItemMenu = { fg = "#C792EA", bg = "NONE", italic = true },
          --
          -- CmpItemKindField = { fg = "#EED8DA", bg = "#B5585F" },
          -- CmpItemKindProperty = { fg = "#EED8DA", bg = "#B5585F" },
          -- CmpItemKindEvent = { fg = "#EED8DA", bg = "#B5585F" },
          --
          -- CmpItemKindText = { fg = "#C3E88D", bg = "#9FBD73" },
          -- CmpItemKindEnum = { fg = "#C3E88D", bg = "#9FBD73" },
          -- CmpItemKindKeyword = { fg = "#C3E88D", bg = "#9FBD73" },
          --
          -- CmpItemKindConstant = { fg = "#FFE082", bg = "#D4BB6C" },
          -- CmpItemKindConstructor = { fg = "#FFE082", bg = "#D4BB6C" },
          -- CmpItemKindReference = { fg = "#FFE082", bg = "#D4BB6C" },
          --
          -- CmpItemKindFunction = { fg = "#EADFF0", bg = "#A377BF" },
          -- CmpItemKindStruct = { fg = "#EADFF0", bg = "#A377BF" },
          -- CmpItemKindClass = { fg = "#EADFF0", bg = "#A377BF" },
          -- CmpItemKindModule = { fg = "#EADFF0", bg = "#A377BF" },
          -- CmpItemKindOperator = { fg = "#EADFF0", bg = "#A377BF" },
          --
          -- CmpItemKindVariable = { fg = "#C5CDD9", bg = "#7E8294" },
          -- CmpItemKindFile = { fg = "#C5CDD9", bg = "#7E8294" },
          --
          -- CmpItemKindUnit = { fg = "#F5EBD9", bg = "#D4A959" },
          -- CmpItemKindSnippet = { fg = "#F5EBD9", bg = "#D4A959" },
          -- CmpItemKindFolder = { fg = "#F5EBD9", bg = "#D4A959" },
          --
          -- CmpItemKindMethod = { fg = "#DDE5F5", bg = "#6C8ED4" },
          -- CmpItemKindValue = { fg = "#DDE5F5", bg = "#6C8ED4" },
          -- CmpItemKindEnumMember = { fg = "#DDE5F5", bg = "#6C8ED4" },
          --
          -- CmpItemKindInterface = { fg = "#D8EEEB", bg = "#58B5A8" },
          -- CmpItemKindColor = { fg = "#D8EEEB", bg = "#58B5A8" },
          -- CmpItemKindTypeParameter = { fg = "#D8EEEB", bg = "#58B5A8" },
        }, -- Override default highlight groups or create your own
        styles = { -- For example, to apply bold and italic, use "bold,italic"
          types = "NONE", -- Style that is applied to types
          methods = "NONE", -- Style that is applied to methods
          numbers = "NONE", -- Style that is applied to numbers
          strings = "NONE", -- Style that is applied to strings
          comments = "italic", -- Style that is applied to comments
          keywords = "bold,italic", -- Style that is applied to keywords
          constants = "NONE", -- Style that is applied to constants
          functions = "NONE", -- Style that is applied to functions
          operators = "NONE", -- Style that is applied to operators
          variables = "NONE", -- Style that is applied to variables
          parameters = "NONE", -- Style that is applied to parameters
          conditionals = "NONE", -- Style that is applied to conditionals
          virtual_text = "NONE", -- Style that is applied to virtual text
        },
        options = {
          cursorline = true, -- Use cursorline highlighting?
          transparency = false, -- Use a transparent background?
          terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
          lualine_transparency = false, -- Center bar transparency?
          highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
        },
      })
    end,
  },
}
