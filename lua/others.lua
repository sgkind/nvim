vim.opt.termguicolors = true

require("nvim-tree").setup({})

require("bufferline").setup {
  options = {
    -- 使用nvim内置lsp
    diagnostics = "nvim_lsp",
    -- 左侧让出nvim-tree的位置
    offsets = {{
      filetype = "NvimTree",
      text = "File Explorer",
      hightlight = "Directory",
      text_align = "left",
    }}
  }
}

-- lualine
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- indent-blankline
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
require("indent_blankline").setup {
	show_current_context = true,
	show_current_context_start = true,
	show_end_of_line = true,
	space_char_blankline = " ",
}
