return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.defaults = {
        mode = { "n", "v" },
        ["g"] = { name = "+goto" },
        ["gz"] = { name = "+surround" },
        ["]"] = { name = "+next" },
        ["["] = { name = "+prev" },
        ["<leader><tab>"] = { name = "󰓩 Tabs" },
        ["<leader>b"] = { name = "󱂬 Buffer" },
        ["<leader>c"] = { name = "󱃖 Code" },
        ["<leader>d"] = { name = " Debug" },
        ["<leader>f"] = { name = " Find" },
        ["<leader>g"] = { name = " Git" },
        ["<leader>gh"] = { name = " Hunks" },
        ["<leader>q"] = { name = " Quit/session" },
        ["<leader>s"] = { name = " Search" },
        ["<leader>sn"] = { name = "󰎟 Noice" },
        ["<leader>t"] = { name = "󰙨 Test" },
        ["<leader>u"] = { name = " UI" },
        ["<leader>w"] = { name = "󱂬 Window" },
        ["<leader>x"] = { name = "󱃕 Diagnostics/Quickfix" },
      }
    end,
  },
}
