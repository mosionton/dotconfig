local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim'     -- Common utilities
  use 'onsails/lspkind-nvim'      -- vscode-like pictograms
  use 'simrat39/rust-tools.nvim'  --nvim rust-tools
  use 'hrsh7th/cmp-nvim-lsp'      -- nvim-cmp source for neovim's built-in LSP

  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'              -- nvim-cmp source for buffer words
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/nvim-cmp'                -- Completion
  use 'neovim/nvim-lspconfig'           -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'nvimdev/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  -- use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  -- use({
  --  "iamcco/markdown-preview.nvim",
  --  run = function() vim.fn["mkdp#util#install"]() end,
  -- })
  use 'akinsho/nvim-bufferline.lua'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  -- use 'lewis6991/spellsitter.nvim'

  use 'numToStr/Comment.nvim'

  use 'mfussenegger/nvim-dap'
  use 'theHamsta/nvim-dap-virtual-text'

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use 'folke/neodev.nvim'

  -- use 'github/copilot.vim'
  -- use 'hrsh7th/cmp-copilot'

  use {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  }
  use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end
  }
  use { "ibhagwan/fzf-lua",
    -- optional for icon support
    requires = { "nvim-tree/nvim-web-devicons" }
  }


  use "potamides/pantran.nvim"

  use 'antonk52/bad-practices.nvim'
  use 'rcarriga/nvim-notify'
  use 'esensar/nvim-dev-container'

  -- Chat GPT
  -- use({
  --   "jackMort/ChatGPT.nvim",
  --   config = function()
  --     require("chatgpt").setup()
  --   end,
  --   requires = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim"
  --   }
  -- })

  -- use({ "m4xshen/hardtime.nvim", requires = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" } })

  use({ "saecki/crates.nvim", tag = "stable" })

  use({
    "alanfortlink/blackjack.nvim",
    requires = "nvim-lua/plenary.nvim",
  })

  -- diffview
  use "sindrets/diffview.nvim"

  use "luukvbaal/statuscol.nvim"

  use {
    "Exafunction/codeium.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
      })
    end
  }

  use 'folke/neodev.nvim'

  -- use 'github/copilot.vim'
  -- use 'hrsh7th/cmp-copilot'

  use { "ibhagwan/fzf-lua",
    -- optional for icon support
    requires = { "nvim-tree/nvim-web-devicons" }
  }



  -- Chat GPT
  use({
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  })
end)
