-- Key in Nnotmal mode
-- ==========================================================================
local normal_mode = lvim.keys.normal_mode

normal_mode["<C-s>"] = ":w<cr>"  -- Save file
normal_mode["<C-S>"] = ":wa<cr>" -- Save file
