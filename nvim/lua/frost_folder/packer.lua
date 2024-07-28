return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {'mattn/emmet-vim'}
  use {   
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'windwp/nvim-autopairs'}
  use {
    'EdenEast/nightfox.nvim',
    config = function()
      vim.cmd("colorscheme carbonfox")
    end
  }
  use {'christoomey/vim-tmux-navigator'}
  use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}
  use {'nvim-treesitter/playground'}
  use {'theprimeagen/harpoon'}
  use {'mbbill/undotree'}
  use {'tpope/vim-fugitive'}
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      {'neovim/nvim-lspconfig'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use {'nvim-tree/nvim-web-devicons'}
  use {
    'folke/trouble.nvim',
    requires = {'nvim-tree/nvim-web-devicons'},
    config = function()
      require('trouble').setup {}

      -- Set keybindings for trouble.nvim
      vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>Trouble diagnostics toggle<cr>', { noremap = true, silent = true, desc = "Diagnostics (Trouble)" })
      vim.api.nvim_set_keymap('n', '<leader>tT', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', { noremap = true, silent = true, desc = "Buffer Diagnostics (Trouble)" })
      vim.api.nvim_set_keymap('n', '<leader>cs', '<cmd>Trouble symbols toggle focus=false<cr>', { noremap = true, silent = true, desc = "Symbols (Trouble)" })
      vim.api.nvim_set_keymap('n', '<leader>cl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>', { noremap = true, silent = true, desc = "LSP Definitions / references / ... (Trouble)" })
      vim.api.nvim_set_keymap('n', '<leader>tL', '<cmd>Trouble loclist toggle<cr>', { noremap = true, silent = true, desc = "Location List (Trouble)" })
      vim.api.nvim_set_keymap('n', '<leader>tQ', '<cmd>Trouble qflist toggle<cr>', { noremap = true, silent = true, desc = "Quickfix List (Trouble)" })
    end
  }
  use {
    'SirVer/ultisnips',
    config = function()
      vim.g.UltiSnipsExpandTrigger = '<C-y>'
      vim.g.UltiSnipsJumpForwardTrigger = '<C-y>'
      vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
    end
  }
  use {'norcalli/nvim-colorizer.lua'}
  use {"Yggdroot/indentLine"}
end)

