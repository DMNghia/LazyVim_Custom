return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      icons = {
        group = vim.g.icons_enabled and "" or "",
        separator = "",
      },
      defaults = {
        mode = { "n", "v" },
        ["g"] = { name = "Goto" },
        ["gz"] = { name = "Surround" },
        ["]"] = { name = "Next" },
        ["["] = { name = "Prev" },
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
      },
    },
  },
}
