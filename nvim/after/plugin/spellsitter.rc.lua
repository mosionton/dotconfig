local status, spell = pcall(require, "spellsitter")
if (not status) then return end

spell.setup {
  enable = true,
  debug = false,
  filetypes = { 'lua', 'rust' }
}
