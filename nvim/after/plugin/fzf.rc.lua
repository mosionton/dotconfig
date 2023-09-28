local status, fzf = pcall(require, "fzf-lua")
if (not status) then return end

vim.keymap.set('n', '<Leader>d', function()
  fzf.commands()
end)
