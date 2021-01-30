vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use {'wbthomason/packer.nvim'}

  use {'gruvbox-community/gruvbox'}
  use {'wakatime/vim-wakatime'}
  use {'tpope/vim-fugitive'}      -- need keybind?
  use {'tpope/vim-dispatch'}
  use {'mattn/emmet-vim'}         -- need to make a better behaviour.
  use {'windwp/nvim-autopairs'}   -- auto center after space & need manual require, for now i don't understand.
  use {'hrsh7th/nvim-compe'}      -- completion, but didn't configure yet.
  use {'junegunn/vim-easy-align'} -- just installed, not config yet.
  use {'Yggdroot/indentLine'}     -- just installed, not config yet.

  use {'akinsho/nvim-bufferline.lua', opt = true} -- make a tab little big if that can be.

  use {
    'nvim-treesitter/nvim-treesitter', -- read more about this
    requires = {
      {'romgrk/nvim-treesitter-context'}, -- idk what this for, but i just install this for now.
      {'nvim-treesitter/nvim-treesitter-refactor'} -- i forgot about this too, need to learn about treesitter again.
    }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'}
    },
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {{'kyazdani42/nvim-web-devicons'}},
    opt = true,
  }
end)
