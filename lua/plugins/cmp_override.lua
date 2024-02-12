return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "onsails/lspkind.nvim",
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    opts = function(_, opts)
      local icons = require("plugins.user.icons")
      table.insert(opts.sources, { name = "nvim_lsp_signature_help" })
      require("cmp").setup({
        completion = {
          completeopt = "menu,menuone,noinsert",
        },
        window = {
          completion = {
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
            col_offset = -3,
            side_padding = 0,
          },
        },
      })
      opts.formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          if entry.source.name == "cmp_tabnine" then
            vim_item.kind = icons.misc.Robot
          end
          local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
          local strings = vim.split(kind.kind, "%s", { trimempty = true })
          kind.kind = " " .. (strings[1].upper(strings[1]) or "") .. " "
          kind.menu = "    (" .. (strings[2] or "") .. ")"

          return kind
        end,
      }
    end,
  },
}
