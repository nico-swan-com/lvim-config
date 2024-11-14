-- Telescope
-- =========================================
-- lvim.builtin.telescope.defaults.path_display = { "smart", "absolute", "truncate" }
lvim.builtin.telescope.defaults.dynamic_preview_title = true
lvim.builtin.telescope.defaults.path_display = { shorten = 10 }
lvim.builtin.telescope.defaults.prompt_prefix = "  "
lvim.builtin.telescope.defaults.borderchars = {
  prompt = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  results = { "─", "▐", "─", "│", "╭", "▐", "▐", "╰" },
  -- results = {' ', '▐', '▄', '▌', '▌', '▐', '▟', '▙' };
  preview = { " ", "│", " ", "▌", "▌", "╮", "╯", "▌" },
}
-- lvim.builtin.telescope.defaults.selection_caret = "  "
lvim.builtin.telescope.defaults.cache_picker = { num_pickers = 3 }
lvim.builtin.telescope.defaults.layout_strategy = "horizontal"
lvim.builtin.telescope.defaults.file_ignore_patterns = {
  "vendor/*",
  "%.lock",
  "__pycache__/*",
  "%.sqlite3",
  "%.ipynb",
  "node_modules/*",
  "%.jpg",
  "%.jpeg",
  "%.png",
  "%.svg",
  "%.otf",
  "%.ttf",
  ".git/",
  "%.webp",
  ".dart_tool/",
  ".github/",
  ".gradle/",
  ".idea/",
  ".settings/",
  ".vscode/",
  "__pycache__/",
  "build/",
  "env/",
  "gradle/",
  "node_modules/",
  "target/",
  "%.pdb",
  "%.dll",
  "%.class",
  "%.exe",
  "%.cache",
  "%.ico",
  "%.pdf",
  "%.dylib",
  "%.jar",
  "%.docx",
  "%.met",
  "smalljre_*/*",
  ".vale/",
  "%.burp",
  "%.mp4",
  "%.mkv",
  "%.rar",
  "%.zip",
  "%.7z",
  "%.tar",
  "%.bz2",
  "%.epub",
  "%.flac",
  "%.tar.gz",
}
local user_telescope = require "user.telescope"
lvim.builtin.telescope.defaults.layout_config = user_telescope.layout_config()
local actions = require "telescope.actions"
lvim.builtin.telescope.defaults.mappings = {
  i = {
    ["<c-c>"] = require("telescope.actions").close,
    ["<c-y>"] = require("telescope.actions").which_key,
    ["<tab>"] = actions.toggle_selection + actions.move_selection_next,
    ["<s-tab>"] = actions.toggle_selection + actions.move_selection_previous,
    ["<cr>"] = user_telescope.multi_selection_open,
    ["<c-v>"] = user_telescope.multi_selection_open_vsplit,
    ["<c-s>"] = user_telescope.multi_selection_open_split,
    ["<c-t>"] = user_telescope.multi_selection_open_tab,
    ["<c-j>"] = actions.move_selection_next,
    ["<c-k>"] = actions.move_selection_previous,
    ["<c-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
  },
  n = {
    ["<esc>"] = actions.close,
    ["<tab>"] = actions.toggle_selection + actions.move_selection_next,
    ["<s-tab>"] = actions.toggle_selection + actions.move_selection_previous,
    ["<cr>"] = user_telescope.multi_selection_open,
    ["<c-v>"] = user_telescope.multi_selection_open_vsplit,
    ["<c-s>"] = user_telescope.multi_selection_open_split,
    ["<c-t>"] = user_telescope.multi_selection_open_tab,
    ["<c-j>"] = actions.move_selection_next,
    ["<c-k>"] = actions.move_selection_previous,
    ["<c-n>"] = actions.cycle_history_next,
    ["<c-p>"] = actions.cycle_history_prev,
    ["<c-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
    ["dd"] = require("telescope.actions").delete_buffer,
  },
}
local telescope_actions = require "telescope.actions.set"
lvim.builtin.telescope.pickers.git_files = {
  hidden = true,
  show_untracked = true,
  layout_strategy = "horizontal",
}
lvim.builtin.telescope.pickers.live_grep = {
  only_sort_text = true,
  layout_strategy = "horizontal",
}
lvim.builtin.telescope.pickers.find_files = {
  layout_strategy = "horizontal",
  attach_mappings = function(_)
    telescope_actions.select:enhance {
      post = function()
        vim.cmd ":normal! zx"
      end,
    }
    return true
  end,
  find_command = { "fd", "--type=file", "--hidden" },
}
lvim.builtin.telescope.pickers.buffers.sort_lastused = true
lvim.builtin.telescope.pickers.buffers.sort_mru = true
lvim.builtin.telescope.on_config_done = function(telescope)
  telescope.load_extension "file_create"
  if lvim.builtin.file_browser.active then
    telescope.load_extension "file_browser"
  end
  if lvim.builtin.project.mine then
    telescope.load_extension "projects"
  end
end
