local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  -- symbol_in_winbar = {
  --   in_custom = true,
  --   enable = false,
  --   separator = ' ',
  --   show_file = true,
  --   click_support = false,
  -- },
  server_filetype_map = {
    typescript = 'typescript',
    rust_analyzer = 'rust',
    clangd = 'clangd'
  }
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

-- Float terminal
vim.keymap.set("n", "<Leader><Leader>t", "<cmd>Lspsaga open_floaterm `$SHELL`<CR>", opts)

-- close floaterm
vim.keymap.set("t", "<Leader><Leader>t", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], opts)
