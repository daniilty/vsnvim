return {
  update_focused_file = {
    enable = true,
  },
  auto_reload_on_write = true,
  disable_netrw = false,
  hijack_cursor = false,
  sort_by = "name",
  update_cwd = false,
  view = {
    width = 30,
    side = "left",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 400,
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      git = false,
    },
  },
  renderer = {
        highlight_git = true,
        highlight_opened_files = "none",

        root_folder_label = function(path)
            local project = vim.fn.fnamemodify(path, ":t")
            return string.upper(project)
        end,

        indent_markers = {
            enable = true,
            icons  = {
                corner = "╰",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
            },
        },

        icons = {
            webdev_colors = false,
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    default = "",
                    empty = "",
                    empty_open = "",
                    open = "",
                    symlink = "",
                    symlink_open = "",
                    arrow_open = "",
                    arrow_closed = "",
                },
                git = {
                    staged = "",
                    deleted = "",
                    renamed = "➜",
                    unstaged = "",
                    unmerged = "",
                    untracked = "",
                    ignored = "",
                },
            },
        },
    },
}

