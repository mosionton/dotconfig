local status, dap = pcall(require, "nvim-dap-virtual-text")
if (not status) then return end

dap.setup {
  enabled = true,
  enable_commands = true,
  highlight_changed_variables = true,
  highlight_new_as_changed = false,
  show_stop_reason = true,
  commented = false,
  only_first_definition = true,
  all_references = false,
  virt_text_pos = 'eol',
  all_frames = false,
  virt_lines = false,
  virt_text_win_col = nil,
  clear_on_continue = true
}
