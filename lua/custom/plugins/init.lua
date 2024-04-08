-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Color scheme
  { 'catppuccin/nvim', as = 'catppuccin' },

  -- File tree
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {}
    end,
  },

  -- Comment code
  {
    'terrortylor/nvim-comment',
    config = function()
      require('nvim_comment').setup { create_mappings = false }
    end,
  },

  -- Visualize buffers as tabs
  { 'akinsho/bufferline.nvim', version = '*', dependencies = 'nvim-tree/nvim-web-devicons' },
}
