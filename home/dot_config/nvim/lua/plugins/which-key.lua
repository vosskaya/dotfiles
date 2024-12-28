return {
  "folke/which-key.nvim",
  opts = function()
    require("which-key").add({
      { "<leader>bs", group = "spell lang" },
      { "<leader>bse", group = "set spell lang: en ..." },
      { "<leader>bsd", group = "set spell lang: de ..." },
      { "<leader>t", group = "tools" },
    })
  end,
}
