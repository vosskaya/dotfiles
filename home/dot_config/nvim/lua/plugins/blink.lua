return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      list = {
        -- selection = "preselect"
        -- selection = "auto_insert"
        -- do not accept first match on ENTER:
        selection = "auto_insert",
      },

      keyword = {
        -- range = "prefix",
        -- range = "full",
        range = "full",
      },

      menu = {
        -- Don't automatically show the completion menu
        -- auto_show = false,
      },
    },
    keymap = {
      -- additional selection keys in the list
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
      ["<Tab>"] = { "select_next", "fallback" },
    },
  },
}
