-- This file can be loaded by calling `lua require('plugins')` from your init.vim


local utils = require("utils")

-- Only required if you have packer configured as `opt`

local fn = vim.fn

-- The root dir to install all plugins. Plugins are under opt/ or start/ sub-directory.
vim.g.plugin_home = fn.stdpath("data") .. "/site/pack/packer"

-- Where to install packer.nvim -- the package manager (we make it opt)
local packer_dir = vim.g.plugin_home .. "/opt/packer.nvim"

-- Whether this is a fresh install, i.e., packer itself and plugins have not been installed.
local fresh_install = false

-- Auto-install packer in case it hasn't been installed.
if fn.glob(packer_dir) == "" then
  fresh_install = true

  -- install packer.nvim
  local packer_repo = "https://github.com/wbthomason/packer.nvim"
  local install_cmd = string.format("!git clone --depth=1 %s %s", packer_repo, packer_dir)

  vim.api.nvim_echo({ { "Installing packer.nvim", "Type" } }, true, {})
  vim.cmd(install_cmd)
end

-- Load packer.nvim
vim.cmd [[packadd packer.nvim]]
local packer_util = require("packer.util")

return require('packer').startup{
  function(use)
    -- it is recommended to put impatient.nvim before any other plugins
    use { "lewis6991/impatient.nvim", config = [[require('impatient')]] }

    use "wbthomason/packer.nvim" -- Package manager
 
    use {  -- Configurations for Nvim LSP
      "neovim/nvim-lspconfig",
    }
    use 'simrat39/rust-tools.nvim' -- To enable more of features of rust-analyzer

    -- Only install these plugins if ctags are installed on the system
    if utils.executable("ctags") then
      -- show file tags in vim window
      use { "liuchengxu/vista.vim", cmd = "Vista" }
    end

    -- indent
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
    use "lukas-reineke/indent-blankline.nvim"

    -- 目录
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons',
      },
      tag = 'nightly'
    }

    -- fuzzy finder
    use {
      "nvim-telescope/telescope.nvim",
      requires = {
        "nvim-lua/plenary.nvim"
      }
    }
    use {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = "make"
    }

    -- buffer line
    use {
      'akinsho/bufferline.nvim',
      tag = "v3.*",
      requires = {'nvim-tree/nvim-web-devicons'}
    }

    -- lualine
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- git
    use {
      'lewis6991/gitsigns.nvim',
    }
    use {
      'tpope/vim-fugitive',
    }

    --markdown

    use({
      'iamcco/markdown-preview.nvim',
      run = function() vim.fn["mkdp#util#install"]() end,
    })
  end,
  config = {
    max_jobs = 16,
    compile_path = packer_util.join_paths(fn.stdpath("data"), "site", "lua", "packer_compiled.lua"),
  },
}
