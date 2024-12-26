-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
if true then return {} end

return {
  {
    "nvim-orgmode/orgmode",
    lazy = false,
    -- event = 'VeryLazy',
    ft = { "org" },
    opts = {
      -- Setup orgmode
      -- Config options
      -- see https://github.com/nvim-orgmode/orgmode/blob/master/lua/orgmode/config/defaults.lua
      -- org_agenda_files = { "~/Dokumente/org/**/*" },
      org_agenda_files = {
        "~/Dokumente/org/**/*.org",
        "~/Syncthing/Logseq/myGraph/journals/*.org",
        "~/Syncthing/Logseq/myGraph/pages/*.org",
      },
      -- org_default_notes_file = "~/Dokumente/org/notes.org",
      org_default_notes_file = "~/Syncthing/Logseq/myGraph/journals/" .. os.date("%Y_%m_%d") .. ".org",
      org_todo_keywords = { "TODO(t)", "PROGRESS(p)", "WAITING(w)", "BACKLOG(b)", "|", "DONE(d)", "CANCELED(c)" },
      org_todo_keyword_faces = {
        -- WAITING = ':foreground blue :weight bold',
        -- DELEGATED = ':background #FFFFFF :slant italic :underline on',
        -- TODO = ':background #000000 :foreground red', -- overrides builtin color for `TODO` keyword
      },
      org_agenda_min_height = 1000,
      org_deadline_warning_days = 14,
      org_agenda_span = "week", -- day/week/month/year/number of days
      org_agenda_start_on_weekday = 1,
      org_agenda_start_day = nil, -- start from today + this modifier
      calendar_week_start_day = 1,
      org_capture_templates = {
        j = {
          description = "Journal",
          template = "* %?\n",
        },
        t = {
          description = "Task",
          template = "* TODO %?\n  %u",
        },
      },
      org_log_done = "time",
      org_log_repeat = "time",
      org_log_into_drawer = "LOGBOOK",
    },

    -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
    -- add ~org~ to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- })
    -- mappings = { org = false }
    -- { -- Autocmd to open the agenda in fullscreen
    --   vim.api.nvim_create_autocmd("FileType", {
    --     pattern = "orgagenda",
    --     callback = function()
    --       vim.cmd("only") -- Close all other windows
    --     end,
    --   }),
    -- },
  },
}
