-- Dap
-- =========================================
if lvim.builtin.dap.active then
    lvim.builtin.dap.on_config_done = function()
        lvim.builtin.which_key.mappings["d"].name = " Debug"
    end
end